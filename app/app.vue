<template lang="pug">
.user-template
  v-top-panel
  v-main
</template>

<script>
import Main from './components/main.vue'
import TopPanel from './components/top-panel.vue'

export default{
  name: 'App',

  components: {
    'v-main': Main,
    'v-top-panel': TopPanel,
  },

}
</script>

<style lang="sass" scoped>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css)

.user-template
  font-family: 'Noto Sans TC'
  background-image: radial-gradient(circle at 2% 98%, rgb(28, 216, 210), transparent 100%), radial-gradient(circle at 98% 2%, rgb(147, 237, 199), transparent 100%), radial-gradient(circle at 50% 50%, rgb(188, 38, 94), rgb(188, 38, 94) 100%)
  height: 100%
  width: 100%
  overflow: hidden
</style>
