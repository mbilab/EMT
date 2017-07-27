<template lang="pug">
.top
  .search: .ui.huge.transparent.left.icon.input
    input(type='text', placeholder='Search...')
    i.search.icon
  .person: i.user.icon
</template>

<script>
export default {
  name: 'TopPanel',

}

</script>

<style lang="sass" scoped>
.top
  height: 10%
.search
  float: left
  height: 100%
  width: 80%
.person
  float: left
  height: 100%
  width: 20%
.ui
  height: 100%
  left: 10%
i.user.icon
  position: center
  margin-top: 0.6em
  font-size: 2.5em !important
  width: 100%
</style>
