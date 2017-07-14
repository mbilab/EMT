<template lang="pug">
.main
  v-sort-panel
  v-item-panel
  v-order-panel
</template>

<script>
import SortPanel from './components/sort-panel.vue'
import ItemPanel from './components/item-panel.vue'
import OrderPanel from './components/order-panel.vue'
export default {
  name: 'Main',

  components: {
    'v-sort-panel': SortPanel,
    'v-item-panel': ItemPanel,
    'v-order-panel': OrderPanel,
  },
}
</script>

<style lang="sass" scoped>
.main
  height: 90%
</style>
