<template lang="pug">
.user-template
  v-top-panel
  v-main(@MainToForm='MainToForm' v-if='MainSeen')
  v-form(@FormToMain='FormToMain' :item='item' v-if='FormSeen')

</template>

<script>
import Main from './components/main.vue'
import TopPanel from './components/top-panel.vue'
import Form from './components/form.vue'

export default{
  name: 'App',
  components: {
    'v-top-panel': TopPanel,
    'v-main': Main,
    'v-form': Form,
  },
  data(){
    return {
      'MainSeen': true,
      'FormSeen': false,
      'item': '',
    }
  },
  methods: {
    MainToForm: function(item){
      this.MainSeen=false
      this.FormSeen=true
      this.item = item
    },
    FormToMain: function(){
      this.MainSeen=true
      this.FormSeen=false
    },
  },
}
</script>

<style lang="sass" scoped>
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css)

.user-template
  font-family: 'Noto Sans TC'
  background-image: radial-gradient(circle at 2% 98%, rgb(254, 200, 199), transparent 100%), radial-gradient(circle at 98% 2%, rgb(243, 32, 32), transparent 100%), radial-gradient(circle at 50% 50%, rgb(254, 236, 70), rgb(254, 236, 70) 100%)
  height: 100%
  width: 100%
  overflow: hidden
</style>
