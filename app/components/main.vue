<template lang="pug">
.main
  .item-set
    ul
      li(v-for='item in items')
        .item-image
          img(v-bind:src='item.imgurl')
        .item-context
          .item-name {{item.name}}
          .item-address 地址：{{item.address}}
          .item-least-price
            p 最低只要{{item.launch.discount}}元
            button.ui.orange.button(v-on:click='select(item)') 買餐券囉
  .order
    .ui.two.buttons.big
      button.ui.teal.button 過去訂單紀錄
      button.ui.teal.button 尚未繳款訂單
</template>

<script>
import Item from '../item.json'
export default {
  name: 'Main',
  data() {
    return {
      items: Item,
    }
  },
  methods: {
    select: function(item){
      this.$emit('MainToForm',item)
    },
  },
}
</script>

<style lang="sass" scoped>
.main
  height: 90%
.item-set
  height: 90%
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
  height: 28%
  list-style-type: none
.ui.two.buttons.big
  height: 100%
button.ui.teal.button
  background-color: rgba(0,0,0,0) !important
  color: #000 !important
  padding: 0 !important
::-webkit-scrollbar
  width: 0.5em
::-webkit-scrollbar-track
  -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3)
  border-radius: 10px
::-webkit-scrollbar-thumb
  border-radius: 10px
  -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5)
.item-image, .item-context
  float: left
  height: 90%
.item-image
  width: 45%
  margin: 0 2.5%
.item-context
  width: 50%
.item-name
  font-size: 1.5em
  padding: 0.5em 0 0.2em 0
.item-least-price
  margin: 0.7em 0 0 0
.item-least-price p
  margin: 0
  font-size: 1.3em
button.ui.orange.button
  padding: 0.4em 1em
  margin: 0.5em 0 0 0
  font-size: 1.2em
img
  height: 100%
  width: 100%
</style>
