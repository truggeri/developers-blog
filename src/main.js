import Vue from 'vue'
import HelloWorld from './components/HelloWorld'

Vue.component('hello-world', HelloWorld)

/* eslint-disable no-new */
new Vue({
  el: '#app'
})

// document.addEventListener('DOMContentLoaded', () => {
//   const app = new Vue({
//     render: h => h(HelloWorld)
//   }).$mount()
//   document.getElementById("app").appendChild(app.$el)

//   console.log(app)
// })