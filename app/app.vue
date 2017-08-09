<template lang="pug">
.user-template
  v-top-panel.v-top-panel
  v-main.v-main(@MainToForm='MainToForm' v-if='MainSeen')
  v-form.v-form(@FormToMain='FormToMain' @SubmitForm='SubmitForm' :item='item' v-if='FormSeen')
  v-order.v-order(@OrderToMain='OrderToMain' :item='item' :number='number' v-if='OrderSeen')
</template>

<script>
import Main from './components/main.vue'
import TopPanel from './components/top-panel.vue'
import Form from './components/form.vue'
import Order from './components/order.vue'

export default{
  name: 'App',
  components: {
    'v-top-panel': TopPanel,
    'v-main': Main,
    'v-form': Form,
    'v-order': Order
  },
  data(){
    return {
      'MainSeen': true,
      'FormSeen': false,
      'OrderSeen': false,
      'item': '',
      'number': '',
    }
  },
  methods: {
    MainToForm: function(item){
      this.MainSeen=false
      this.FormSeen=true
      this.item=item
    },
    FormToMain: function(){
      this.MainSeen=true
      this.FormSeen=false
    },
    SubmitForm: function(number){
      this.FormSeen=false
      this.OrderSeen=true
      this.number=number
    },
    OrderToMain: function(){
      this.OrderSeen=false
      this.MainSeen=true
    },
  },
}
</script>

<style lang="sass" scoped>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css)
.user-template
  font-family: 'Noto Sans TC'
  background-image: radial-gradient(circle at 2% 98%, rgb(254, 200, 199), transparent 100%), radial-gradient(circle at 98% 2%, rgb(243, 90, 32), transparent 100%), radial-gradient(circle at 50% 50%, rgb(254, 236, 70), rgb(254, 236, 70) 100%)
  height: 100%
  width: 100%
  overflow: hidden

.v-top-panel, .v-main, .v-order, .v-form
  background-color: rgba(0, 0, 0, .1)
  box-shadow: 0 0 2px 0 rgba(0, 0, 0, .3)

  margin: 0 auto
  @media screen and (min-width: 500px)
    max-width: 60vw
  @media screen and (max-width: 500px)
    max-width: 100vw

</style>
