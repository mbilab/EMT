<template lang="pug">
.user-template
  v-top-panel
  v-main
</template>

<script>
import Main from './main.vue'
import TopPanel from './top-panel.vue'
export default{
  name: 'App',

  components: {
    'v-main': Main,
    'v-top-panel': TopPanel,
  },

}
</script>

<style lang="sass" scoped>
.user-template
  height: 100%
  width: 100%
  overflow: hidden
</style>
