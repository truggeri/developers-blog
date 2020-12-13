import Vue from 'vue'
import HelloWorld from './vue-components/HelloWorld'

Vue.component('hello-world', HelloWorld)

/* eslint-disable no-new */
new Vue({
  el: '#app'
})
