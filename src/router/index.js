import Vue from 'vue'
import Router from 'vue-router'
import appIndex from "@/components/appIndex";
import PlayList from "@/components/PlayList";

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/',component: appIndex },
    { path: '/playlist',component: PlayList }
  ]
})
