<template lang="pug">
.form
  .item-image
    img(v-bind:src='item.imgurl')
  .item-context
    .item-name: h1 {{item.name}}
    .item-address 地址：{{item.address}}
    .item-launch
      .item-price
        h4 優惠價： {{item.launch.discount}} 元
        h5 (原價： {{item.launch.origin}})
      .ui.input
        input(v-model='number' type='text' placeholder='輸入張數..')
  .item-button
    button.ui.orange.button(v-on:click='FormToMain()') 返回
    button.ui.orange.button(v-on:click='Submit(number)') 送出訂單
</template>

<script>
export default {
  name: 'Form',
  props: ['item'],
  data() {
    return {
      number: ''
    }
  },
  methods: {
    FormToMain: function(){
      this.$emit('FormToMain')
    },
    Submit: function(number){
      this.$emit('Submit',number)
      console.log(number)
    },
  },
}
</script>

<style lang="sass" scoped>
.form
  padding: 0 5%
.item-image
  height: 30%
  width: 100%
img
  height: 100%
  width: 100%
.item-context
h1
  font-size: 2em
.item-address
  margin: 1% 1%
.item-price
  right-margin: 5%
h4
  font-size: 2em
  margin: 0
h5
  margin: 0
.ui.input
  width: 25% !important
</style>
