import './index.pug'

import './vendor/semantic-ui/semantic.css'

import Vuex from 'vuex'
import Vue from 'vue'
import App from './app.vue'


new Vue({
  el: '#v-app',
  render: h => h(App)
})
