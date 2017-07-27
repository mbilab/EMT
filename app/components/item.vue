<template lang="pug">
li
  .item-image
  .item-context
    .item-name {{item.name}}
    .item-address 地址：{{item.address}}
    .item-least-price 最低只要  {{item.launch.discount}}  元
</template>

<script>
export default {
  name: 'ItemBlock',

  props: ['item'],
}
</script>

<style lang="sass" scoped>
.item-image, .item-context
  float: left
  height: 90%
.item-image
  width: 45%
  margin: 0 2.5%
  background-image: url('http://sugar.easylife.tw/pics/200911/1128/IMG_0299.jpg')
  background-size: contain
  background-repeat: no-repeat
.item-context
  width: 50%
.item-name
  font-size: 2em
  padding: 10% 0
</style>
