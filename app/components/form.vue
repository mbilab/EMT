<template lang="pug">
.form
  .ui.card
    .content: .image: img(:src='item.imgurl')
    .content
      .ui.small.feed
        .event: .content: .summary #[h2 {{item.name}}]
        .event: .content: .summary #[h5 地址：{{item.address}}]
        .event: .content: .summary #[h5 原價： {{item.launch.origin}}]
        .event: .content: .summary #[h3 優惠價： {{item.launch.discount}}]
        .event: .content: .summary #[h3 購買張數： #[input(v-model='number' type='text' maxlength='2' placeholder='輸入張數..')] 張]
    .extra.content
      button.ui.orange.button(v-on:click='FormToMain()') 返回
      button.ui.orange.button(v-on:click='SubmitForm(number)') 送出訂單
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
    SubmitForm: function(number){
      this.$emit('SubmitForm',number)
    },
  },
}
</script>

<style lang="sass" scoped>
.form
  height: 90%
  padding: 0 2.5%
  text-align: center
.image
  height: 40%
  width: 100%
input
  width: 40%
  padding-left: 2.5%
img
  height: 100%
  width: 100%
.ui.card
  background-color: rgba(0,0,0,.1)
  display: inline-block
  margin-top: 5%
</style>
