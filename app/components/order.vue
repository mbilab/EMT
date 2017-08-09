<template lang="pug">
.order
  .ui.card
    .content
      .header 訂單編號：9966
    .content
      .ui.small.feed
        .event: .content: .summary.shop 店名： {{item.name}}
        .event: .content: .summary.shop 餐券數量： {{number}}
        .event: .content: .summary.shop 餐券價格： {{item.launch.discount}}
        .event: .content: .summary.shop 總價格： {{item.launch.discount*number}}
    .content
      h2.ui.sub.header 注意事項：
      .ui.small.feed
        .event: .content: .summary 1.  本活動之得獎獎項得獎者不得要求兌換為等值的商品或現金。
        .event: .content: .summary 2.  活動參加者必須遵守「PChome24h購物」公佈之活動規則及注意事項，如有違反視同棄權，「PChome24h購物」並得取消其參加、得獎資格。
        .event: .content: .summary 3.  得獎者應於「PChome24h購物」於得獎通知函中通知之回函期限內將領獎確認書正本及其附件資料（得獎者需親簽）郵寄至「PCh
        .event: .content: .summary 4.  PChome24h購物」保留隨時修改、終止或變更本活動內容之權利。修改後之活動內容將於本活動網
    .extra.content
      button.ui.orange.button(v-on:click='OrderToMain()') 返回首頁
</template>

<script>
export default {
  name: 'Order',
  props: ['number','item'],
  data() {
    return {
    }
  },
  methods: {
    OrderToMain: function() {
      this.$emit('OrderToMain')
    },
  },
}
</script>

<style lang="sass" scoped>
.order
  height: 90%
  padding: 0 2.5%
  text-align: center
.ui.card
  background-color: rgba(0,0,0,0.1)
  display: inline-block
  margin-top: 5%
.shop
  text-align: left
  padding-left: 28%
</style>
