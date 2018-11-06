import Vue from 'vue'
import Router from 'vue-router'
import appIndex from "@/components/appIndex";
import PlayList from "@/components/PlayList";
import containerList from "@/components/containerList";

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/',component: appIndex },
    { path: '/playlist',component: PlayList },
    { path: '/container',component: containerList }
  ]
})
