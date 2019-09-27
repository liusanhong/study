# react-redux

[官网:https://redux.js.org/](https://redux.js.org/)

[阮一峰react-redux](http://www.ruanyifeng.com/blog/2016/09/redux_tutorial_part_one_basic_usages.html)

## 考虑使用 Redux的场景

- 某个组件的状态，需要共享
- 某个状态需要在任何地方都可以拿到
- 一个组件需要改变全局状态
- 一个组件需要改变另一个组件的状态

## Redux 的设计思想

    （1）Web 应用是一个状态机，视图与状态是一一对应的。
    
    （2）所有的状态，保存在一个对象里面。

## 基本概念

### Store

Store 就是保存数据的地方，可以看成一个容器。整个应用只能有一个 Store。

Redux 提供createStore这个函数，用来生成 Store。


```
import { createStore } from 'redux';
const store = createStore(fn);
```

### state

Store对象包含所有数据。如果想得到某个时点的数据，就要对 Store 生成快照。这种时点的数据集合，就叫做 State。
当前时刻的 State，可以通过store.getState()拿到。

```
import { createStore } from 'redux';
const store = createStore(fn);

const state = store.getState();

```

### Action

Action 就是 View 发出的通知，表示 State 应该要发生变化了。

Action 是一个对象。其中的type属性是必须的，表示 Action 的名称。其他属性可以自由设置

```
const action = {
  type: 'ADD_TODO',
  payload: 'Learn Redux'
};
```

### Action Creator

View 要发送多少种消息，就会有多少种 Action。如果都手写，会很麻烦。可以定义一个函数来生成 Action，这个函数就叫 Action Creator

```
const ADD_TODO = '添加 TODO';

function addTodo(text) {
  return {
    type: ADD_TODO,
    text
  }
}

const action = addTodo('Learn Redux');
```

### store.dispatch()

store.dispatch()是 View 发出 Action 的唯一方法。

```
import { createStore } from 'redux';
const store = createStore(fn);

store.dispatch({
  type: 'ADD_TODO',
  payload: 'Learn Redux'
});
```

store.dispatch接受一个 Action 对象作为参数，将它发送出去。

结合 Action Creator，这段代码可以改写如下。

```
store.dispatch(addTodo('Learn Redux'));

```

### Reducer

Store 收到 Action 以后，必须给出一个新的 State，这样 View 才会发生变化。这种 State 的计算过程就叫做 Reducer。

Reducer 是一个函数，它接受 Action 和当前 State 作为参数，返回一个新的 State。

```
const reducer = function (state, action) {
  // ...
  return new_state;
};
```

整个应用的初始状态，可以作为 State 的默认值：

```
const defaultState = 0;
const reducer = (state = defaultState, action) => {
  switch (action.type) {
    case 'ADD':
      return state + action.payload;
    default: 
      return state;
  }
};
```

store.dispatch方法会触发 Reducer 的自动执行。为此，Store 需要知道 Reducer 函数，做法就是在生成 Store 的时候，将 Reducer 传入createStore方法。

```
import { createStore } from 'redux';
const store = createStore(reducer);
```

叫做 Reducer ,因为它可以作为数组的reduce方法的参数:

```
const actions = [
  { type: 'ADD', payload: 0 },
  { type: 'ADD', payload: 1 },
  { type: 'ADD', payload: 2 }
];

const total = actions.reduce(reducer, 0);

```

### 纯函数

[为什么reducer需要纯函数英文版](https://www.freecodecamp.org/news/why-redux-needs-reducers-to-be-pure-functions-d438c58ae468/#.mvfdm0whk)

[为什么reducer需要纯函数翻译](https://zhuanlan.zhihu.com/p/25218718?from_voters_page=true)

Reducer 函数最重要的特征是，它是一个纯函数。也就是说，只要是同样的输入，必定得到同样的输出。

纯函数是函数式编程的概念，必须遵守以下一些约束。

- 不得改写参数
- 不能调用系统 I/O 的API
- 不能调用Date.now()或者Math.random()等不纯的方法，因为每次会得到不一样的结果

由于 Reducer 是纯函数，就可以保证同样的State，必定得到同样的 View。但也正因为这一点，Reducer 函数里面不能改变 State，必须返回一个全新的对象

```
// State 是一个对象
function reducer(state, action) {
  return Object.assign({}, state, { thingToChange });
  // 或者
  return { ...state, ...newState };
}

// State 是一个数组
function reducer(state, action) {
  return [...state, newItem];
}

```

### state监听 store.subscribe()

Store 允许使用store.subscribe方法设置监听函数，一旦 State 发生变化，就自动执行这个函数。

```
import { createStore } from 'redux';
const store = createStore(reducer);

store.subscribe(listener);
```

store.subscribe方法返回一个函数，调用这个函数就可以解除监听。

```
let unsubscribe = store.subscribe(() =>
  console.log(store.getState())
);

unsubscribe();
```

### Store 的实现

可以发现 Store 提供了三个方法:

- store.getState()
- store.dispatch()
- store.subscribe()

```
import { createStore } from 'redux';
let { subscribe, dispatch, getState } = createStore(reducer);
```

createStore方法还可以接受第二个参数，表示 State 的最初状态。这通常是服务器给出的。

```
let store = createStore(todoApp, window.STATE_FROM_SERVER)
```

下面是createStore方法的一个简单实现，可以了解一下 Store 是怎么生成的:


```
const createStore = (reducer) => {
  let state;
  let listeners = [];

  const getState = () => state;

  const dispatch = (action) => {
    state = reducer(state, action);
    listeners.forEach(listener => listener());
  };

  const subscribe = (listener) => {
    listeners.push(listener);
    return () => {
      listeners = listeners.filter(l => l !== listener);
    }
  };

  dispatch({});

  return { getState, dispatch, subscribe };
};
```