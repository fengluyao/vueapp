<template>
    <div class="app">
    <div class="header">游戏详情
        <router-link to="/" class="back">
            <img src="../images/prev.png" />
        </router-link>
        <router-link to="" class="search">
            <img src="../images/caidan.png" @click="navList" />
            <div class="guide" id="guide">
                <ul>
                    <li><router-link to="/">首页</router-link></li>
                    <li><router-link to="/playlist">单机</router-link></li>
                    <li><router-link to="/playlist">网游</router-link></li>
                    <li><router-link to="/playlist">应用</router-link></li>
                    <li><router-link to="/playlist">攻略</router-link></li>
                    <li><router-link to="/playlist">资讯</router-link></li>
                </ul>
            </div>
        </router-link>
        </div>
        <dl class="game_detail">
            <dt>
                <img src="../images/1407829211679251.jpg" alt="怪物猎人">
                <a href="#" class="btn_down">下载</a>
            </dt>
            <dd class="title">怪物猎人</dd>
            <dd><span class="star">
                <img src="../images/orangestar.png" />
                </span><span class="score">9.9分</span>
                <span class="ping">(已有1人评分)</span>
            </dd>
            <dd>大小：155.1 MB</dd>
            <dd>更新：2014-08-12</dd>
            <dd>当前版本：</dd>
            <dd>人气：6</dd>
        </dl>
        <div class="more">
            <div></div>
            <h4>游戏截图</h4>
        </div>
        <mt-swipe class="swiper" :auto="3000">
            <mt-swipe-item v-for="item in list" :key="item.lid">
                <img :src="item.img_url" class="img"/>
            </mt-swipe-item>
        </mt-swipe>
        <div class="more">
            <div></div>
            <h4>内容提要</h4>
        </div>
        <p class="text">
            《怪物猎人（DynamicHunting）》是一款动作射击游戏，是由株式会社カプコン开发制作。本作是CAPCOM经典动作游戏《怪物猎人》的最新作，本作是以原始社会作为游戏的背景，虚构了许多现实中不存在的怪物，然后玩家在游戏中扮演一名猎人，在原始世界进行狩猎，完成各种任务。本作绝对能带给玩家原始风味十足的生活体验，喜欢的玩家...
        </p>
        <div class="more">
            <div></div>
            <h4>游戏推荐</h4>
            <a href="#">更多</a>
        </div>
        <ul class="gamelist">
            <li v-for="item in applist" :key="item.id">
            <router-link to="#">
                <img :src="item.img_url" alt="掌上炸翻天">
            </router-link>
            <h3>
                <router-link to="#">{{item.title}}</router-link>
            </h3>
            </li>
        </ul>
    </div>
</template>
<script>
import {Toast} from "mint-ui"
    export default {
        data(){
            return{
                list:[],
                applist:[]
            }
        },
        methods:{
            navList(){
                var a = document.getElementById("guide");
                if(a.style.opacity == 0)
                    a.style.opacity=1;
                else
                    a.style.opacity=0;
            },
            yxList(){
                var url="http://127.0.0.1:3000/yxlist/jtlist";
                this.$http.get(url).then(result=>{
                    if(result.body.code == 1){
                    this.list = result.body.msg;
                        console.log(this.list);
                    }
                    else
                        Toast("加载轮播图片失败!!");
                })
            },
            getappList(){
            var url="http://127.0.0.1:3000/index/applist";
                this.$http.get(url).then(result=>{
                    if(result.body.code == 1){
                    this.applist = result.body.msg;
                        console.log(this.applist);
                    }
                    else
                    Toast("加载轮播图片失败!!");
                })
            },
        },
        created() {
            this.yxList();
            this.getappList();
        },
    }
</script>

<style>
    *{
        padding:0;
        margin:0;
        box-sizing:border-box;
    }
    .app{
        background:#fff;
    }
    .header{
        width:100%;
        height:50px;
        background: #fff;
        line-height:50px;
        border-bottom:1px solid #ccc;
    }
    .back{
        width:30px;
        height:35px;
        float:left;
        margin-top:6px;
        margin-left:10px;
    }
    .back img{
        width:20px;
        height:35px;
    }
    .search{
        width:38px;
        height:37px;
        float:right;
        margin-right:10px;
        margin-top:9px;
    }
    .search img{
        width:25px;
        height:25px;
        line-height:30px;
    }
    .guide{ 
        position:absolute; 
        left:0; 
        top:45px; 
        z-index:999; 
        background:#fff; 
        width:100%; 
        height:70px;
        overflow:hidden; 
        opacity:0;
        box-shadow: 0px 2px 2px #666;
    }
    .guide ul{
        list-style:none;
    }
    .guide ul li{
        float:left;
        width:25%;
        height:35px;
        line-height:35px;
        text-align:center;
        border:1px solid #ddd;
    }
    .logo{
        width:80px;
        position:relative;
        top:5px;
        left:90px;
    }

    .game_detail{ 
        margin:5px 10px 0; 
        padding:0 8px 10px; 
        border-bottom:1px dashed #e0e0e0;
    }
    .game_detail dt{ 
        float:left; 
        width:75px; 
        margin:11px 15px 0 0;
    }
    .game_detail dt img{ 
        display:block; 
        border-radius:10px; 
        width:75px; 
        height:75px;
    }
    .game_detail dt .btn_down{ 
        display:block; 
        width:75px; 
        height:22px; 
        line-height:22px; 
        text-align:center; 
        color:#fff; 
        font-size:14px; 
        background:#4398d1;
        border-radius:3px; 
        margin-top:11px;
    }
    .game_detail dd{ 
        font-size:14px; 
        line-height:20px; 
        height:20px; 
        overflow:hidden;
    }
    .game_detail .title{ 
        font-size:20px; 
        line-height:30px; 
        height:30px; 
        overflow:hidden;
    }
    .star,.star img{ 
        float:left; 
        margin:4px 4px 0 0; 
        width:60px; 
        height:12px; 
        width:99%,
    }
    .star img{ 
        margin:0; 
    }
    .more{
        width:100%;
        height:30px;
        border-bottom:2px solid #ccc;
    }
    .more>div{
        float:left;
        width:10px;
        height:30px;
        background:#4398D1;
    }
    .more h4{
        float:left;
        line-height:20px;
        padding-left:15px;
        font-weight:normal;
        color:#111;
        font-size:16px;
    }
    .more a{
        float:right;
        padding-right:20px;
        line-height:30px;
        font-size:12px;
        color:#111;
    }
    .app .swiper{
        width:100%;
        height:250px;
    }
    .img{
        width:100%;
    }
    .app .text{
        display:block;
        width:100%;
        height:250px;
        font-size:14px;
        padding:10px;
        color:#222;
        border-bottom:1px solid #ccc;
    }
    .gamelist{ 
    overflow:hidden;
    width:100%;
    list-style:none;
  }
  .gamelist li{ 
    float:left; 
    width:33.33%; 
    text-align:center; 
    border-bottom:1px solid #e0e0e0; 
    border-top:1px solid #fff;
    padding:10px 0;
  }

  .gamelist li img{ 
    display:block; 
    margin:0 auto; 
    border-radius:10px; 
    width:75px; 
    height:75px;
  }

  .gamelist li h3{ 
    font-weight:normal; 
    height:24px; 
    line-height:24px; 
    font-size:14px; 
    margin-top:3px; 
    overflow:hidden;
  }
</style>