<template lang="pug">
.main
  .sort
    .ui.tabular.teal.four.item.menu.compact.massive
      a.item 全部
      a.item 火鍋
      a.item 燒烤
      a.item 快炒
  .item-set
    ul: v-item(v-bind:item='val' v-for='val in items')
  .order
    .ui.two.buttons.big
      button.ui.teal.button 過去訂單紀錄
      button.ui.teal.button 尚未繳款訂單
</template>

<script>
import ItemBlock from './item.vue'
import Item from '../item.json'
export default {
  name: 'Main',
  data() {
    return {
      items: Item,
    }
  },
  components: {
    'v-item': ItemBlock,
  },
}
</script>

<style lang="sass" scoped>
.main
  height: 90%
.sort
  height: 10%
.item-set
  height: 80%
  overflow-y: scroll
.order
  height: 10%
a.item
  color: #DDD !important
  font-family: 'Noto Sans TC'
ul,li
  margin: 0
  padding: 0
li
  height: 34%
  list-style-type: none
button
  background-color: rgba(0,0,0,0) !important
  color: #DDD !important
</style>
