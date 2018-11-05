// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App.vue'
import router from './router'

import 'mint-ui/lib/style.css'

import {Swipe,SwipeItem}from "mint-ui";
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);

import VueResource from "vue-resource"
Vue.use(VueResource);

Vue.config.productionTip = false

import './lib/mui/css/mui.css'

import './lib/mui/css/icons-extra.css'
/* eslint-disable no-new */
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
