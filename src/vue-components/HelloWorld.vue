<template>
  <section class="box">
    <div style="text-align: center;">
      <div><button v-on:click="show = !show">Hello</button></div>
      <transition name="fade">
        <p v-if="show" style="text-align: center;">World</p>
      </transition>
    </div>
  </section>
</template>

<script>
export default {
  name: 'HelloWorld',
  data() {
    return {
      show: false
    };
  }
}
</script>

<style lang="scss" scoped>
button {
  background-color: rgb(255, 255, 255);
  border-bottom-color: rgb(219, 219, 219);
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  border-bottom-style: solid;
  border-bottom-width: 1px;
  border-image-outset: 0;
  border-image-repeat: stretch;
  border-image-slice: 100%;
  border-image-source: none;
  border-image-width: 1;
  border-left-color: rgb(219, 219, 219);
  border-left-style: solid;
  border-left-width: 1px;
  border-right-color: rgb(219, 219, 219);
  border-right-style: solid;
  border-right-width: 1px;
  border-top-color: rgb(219, 219, 219);
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  border-top-style: solid;
  border-top-width: 1px;
  box-shadow: none;
  box-sizing: border-box;
  color: rgb(54, 54, 54);
  cursor: pointer;
  margin-bottom: 8px;
  margin-left: 0px;
  margin-right: 0px;
  margin-top: 0px;
  padding-bottom: 7px;
  padding-left: 16px;
  padding-right: 16px;
  padding-top: 7px;
}

.box {
  min-width: 300px;
  background-color: rgb(255, 255, 255);
  border-bottom-left-radius: 6px;
  border-bottom-right-radius: 6px;
  border-top-left-radius: 6px;
  border-top-right-radius: 6px;
  box-shadow: rgba(10, 10, 10, 0.1) 0px 8px 16px -2px, rgba(10, 10, 10, 0.02) 0px 0px 0px 1px;
  box-sizing: border-box;
  color: rgb(74, 74, 74);
  display: block;
  font-size: 16px;
  font-weight: 400;
  line-height: 24px;
  padding-bottom: 20px;
  padding-left: 20px;
  padding-right: 20px;
  padding-top: 20px;
  text-rendering: optimizelegibility;
  -moz-osx-font-smoothing: grayscale;
}

$gray: darkslategrey;
h1 {
  color: $gray;
  font-size: 3rem;
}

.fade-enter-active, .fade-leave-active {
  transition: opacity .5s;
}
.fade-enter, .fade-leave-to {
  opacity: 0;
}
</style>
