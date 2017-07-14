<template lang="pug">
.top
  v-search-panel
  v-person-panel
</template>

<script>
import SearchPanel from './components/search-panel.vue'
import PersonPanel from './components/person-panel.vue'
export default {
  name: 'TopPanel',

  components: {
    'v-search-panel': SearchPanel,
    'v-person-panel': PersonPanel,
  },
}

</script>

<style lang="sass" scoped>
.top
  height: 10%
</style>
