<template>
<div class="app">
  <div class="header">
    <span class="menu" :style="note" @click="navList"></span>
    <div class="guide" id="guide">
      <ul>
        <li><router-link to="">首页</router-link></li>
        <li><router-link to="">单机</router-link></li>
        <li><router-link to="">网游</router-link></li>
        <li><router-link to="">应用</router-link></li>
        <li><router-link to="">攻略</router-link></li>
        <li><router-link to="">资讯</router-link></li>
      </ul>
    </div>
    <router-link to="" class="search" :style="note1"></router-link>
    <img class="logo" src="../images/logo.png">
  </div>

  <mt-swipe :auto="3000">
    <mt-swipe-item v-for="item in list" :key="item.lid">
      <img :src="item.img_url" class="img"/>
    </mt-swipe-item>
  </mt-swipe>
  <div class="nav">
    <ul class="mui-table-view mui-grid-view mui-grid-9">
      <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-3">
        <router-link to="/playlist">
          <img src="../images/nav1.png" />
          <p>安卓单机</p>
        </router-link>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-3">
        <router-link to="/">
          <img src="../images/nav2.png" />
          <p>安卓网游</p>
        </router-link>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-3">
        <router-link to="/">
          <img src="../images/nav3.png" />
          <p>手机应用</p>
        </router-link>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-3">
        <router-link to="/">
          <img src="../images/nav4.png" />
          <p>攻略大全</p>
        </router-link>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-3">
        <router-link to="/">
          <img src="../images/nav5.png" />
          <p>新闻资讯</p>
        </router-link>
      </li>
    </ul>
  </div>
  <div class="more">
    <div></div>
    <h4>推荐手游</h4>
    <a href="#">更多</a>
  </div>
  <ul class="gamelist">
    <li v-for="item in applist" :key="item.id">
      <a href="android/12234.html">
        <img :src="item.img_url" alt="掌上炸翻天">
      </a>
      <h3>
        <a href="android/12234.html">{{item.title}}</a>
      </h3>
      <p>人气：{{item.renqi}}</p>
      <p>大小：{{item.big}} MB</p>
      <a class="btn_down" href="android/12234.html">抢先下载</a>
    </li>
  </ul>
  <div class="more">
    <div></div>
    <h4>经典手游</h4>
    <a href="#">更多</a>
  </div>
  <ul class="gamelist">
    <li v-for="item in jdlist" :key="item.id">
      <a href="android/12234.html">
        <img :src="item.img_url" alt="掌上炸翻天">
      </a>
      <h3>
        <a href="android/12234.html">{{item.title}}</a>
      </h3>
      <p>人气：{{item.renqi}}</p>
      <p>大小：{{item.big}} MB</p>
      <a class="btn_down" href="android/12234.html">抢先下载</a>
    </li>
  </ul>
  <div class="more">
    <div></div>
    <h4>最新资讯</h4>
    <a href="#">更多</a>
  </div>
  <div class="block1">
    <img class="bimg" src="../images/1407829910.jpg" />
    <div class="text">
      <p class="title">《天天酷跑》策划疑遭开除 仅因家属为刀塔传奇研发商？</p>
      <p class="subtitle">近日，陈小花在网上发布长篇博文，称其已接到腾讯通知要被开除。据博文中陈述，陈小花自2012年7月从复旦大学研究生毕业之后就加入腾讯公司，并陆续担任《天天连萌》和《天天酷跑》的游戏运营及策划。陈小花在博文中表示，自己为这两款火遍全国的微信游戏付出了不少汗水，熬夜加班早已是家常便饭，自己被腾讯开除，就是因为丈夫...</p>
    </div>
  </div>
  <div class="block1">
    <img class="bimg" src="../images/1407829388.jpg" />
    <div class="text">
      <p class="title">《天天酷跑》策划疑遭开除 仅因家属为刀塔传奇研发商？</p>
      <p class="subtitle">近日，陈小花在网上发布长篇博文，称其已接到腾讯通知要被开除。据博文中陈述，陈小花自2012年7月从复旦大学研究生毕业之后就加入腾讯公司，并陆续担任《天天连萌》和《天天酷跑》的游戏运营及策划。陈小花在博文中表示，自己为这两款火遍全国的微信游戏付出了不少汗水，熬夜加班早已是家常便饭，自己被腾讯开除，就是因为丈夫...</p>
    </div></div>
  <div class="block2">
    <ul class="newslist">
      <li><span>[新游速递]</span><a href="#">《全民切水果》蜕变之旅变得更加精彩纷呈 来体验下？</a></li>
      <li><span>[新游速递]</span><a href="#">腾讯新作《天天来塔防》来袭 天天系列很强势</a></li>
      <li><span>[业内新闻]</span><a href="#">3D电影《秦时明月》爆笑NG预告 天明、少羽基情满满</a></li>
      <li><span>[业内新闻]</span><a href="#">《欢乐西游》8月7日停机维护 开服时间尚未确定</a></li>
      <li><span>[新游速递]</span><a href="#">《西游降魔篇》8月5日不删档内测 七十二变变身系统首曝</a></li>
    </ul>
  </div>
  <div class="more">
    <div></div>
    <h4>最新攻略</h4>
    <a href="#">更多</a>
  </div>
  <div class="block1">
    <img class="bimg" src="../images/1407836992.jpg" />
    <div class="text">
      <p class="title">《天天酷跑》策划疑遭开除 仅因家属为刀塔传奇研发商？</p>
      <p class="subtitle">近日，陈小花在网上发布长篇博文，称其已接到腾讯通知要被开除。据博文中陈述，陈小花自2012年7月从复旦大学研究生毕业之后就加入腾讯公司，并陆续担任《天天连萌》和《天天酷跑》的游戏运营及策划。陈小花在博文中表示，自己为这两款火遍全国的微信游戏付出了不少汗水，熬夜加班早已是家常便饭，自己被腾讯开除，就是因为丈夫...</p>
    </div>
  </div>
  <div class="block1">
    <img class="bimg" src="../images/1407836310.jpg" />
    <div class="text">
      <p class="title">《天天酷跑》策划疑遭开除 仅因家属为刀塔传奇研发商？</p>
      <p class="subtitle">近日，陈小花在网上发布长篇博文，称其已接到腾讯通知要被开除。据博文中陈述，陈小花自2012年7月从复旦大学研究生毕业之后就加入腾讯公司，并陆续担任《天天连萌》和《天天酷跑》的游戏运营及策划。陈小花在博文中表示，自己为这两款火遍全国的微信游戏付出了不少汗水，熬夜加班早已是家常便饭，自己被腾讯开除，就是因为丈夫...</p>
    </div></div>
  <div class="block2">
    <ul class="newslist">
      <li><span>[攻略]</span><a href="#">《三国志乱消》四大绝色美人卡牌技能详解</a></li>
      <li><span>[攻略]</span><a href="#">《天天小师妹》职业介绍 职业选择攻略</a></li>
      <li><span>[攻略]</span><a href="#">《酷酷爱魔兽》升级赚钱攻略</a></li>
      <li><span>[攻略]</span><a href="#">《酷酷爱魔兽》职业介绍 新手职业选择攻略</a></li>
      <li><span>[攻略]</span><a href="#">《植物大战僵尸：花园战争》那些小技巧</a></li>
    </ul>
  </div>
</div>

</template>

<script>
  import{Toast} from "mint-ui";
    export default {
      name: 'productdetailspage',
      data() {
          return {
              note: {
              display:"block",
              backgroundImage: "url(" + require("../images/sprite.png") + ")",
              backgroundRepeat: "no-repeat",
              backgroundPosition:"-77px 0px"
            },
            note1: {
              display:"block",
              backgroundImage: "url(" + require("../images/sprite.png") + ")",
              backgroundRepeat: "no-repeat",
              backgroundPosition:"-84px -34px"
            },
            list:[],
            applist:[],
            jdlist:[]
        }
      },
      methods:{
        getimgList(){
          var url="http://127.0.0.1:3000/index/list";
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
        getjdList(){
          var url="http://127.0.0.1:3000/index/jdlist";
          this.$http.get(url).then(result=>{
              if(result.body.code == 1){
              this.jdlist = result.body.msg;
                console.log(this.jdlist);
              }
              else
              Toast("加载轮播图片失败!!");
          })
        },
        navList(){
          var a = document.getElementById("guide");
          if(a.style.opacity == 0)
          a.style.opacity=1;
          else
          a.style.opacity=0;
        }
      },
      created() {
        this.getimgList();
        this.getappList();
        this.getjdList();
      },
    }
</script>

<style>
  *{
    padding:0;
    margin:0;
    box-sizing:border-box;
  }
  .header{
    width:100%;
    height:50px;
    background: #fff;
    line-height:50px;
  }
  .menu{
    width:35px;
    height:35px;
    float:left;
    margin-top:7px;
    margin-left:20px;
  }
  .search{
    width:38px;
    height:37px;
    float:right;
    margin-top:5px;
    margin-right:20px;
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
  .app .mint-swipe{
    width:100%;
    height:150px;
  }
  .img{
    width:100%;
  }
  .mui-table-view-cell.mui-media.mui-col-xs-2.mui-col-sm-3{
    padding:0 !important;
    width:20%;
    height:90px;
    border-bottom:1px solid #ccc;
  }
  .mui-table-view-cell.mui-media.mui-col-xs-2.mui-col-sm-3 img{
    height:50px;
  }
  .mui-table-view-cell.mui-media.mui-col-xs-2.mui-col-sm-3 p{
    font-size:5px;
    color:#000;
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

  .gamelist li p{ 
    line-height:18px; 
    height:18px; 
    overflow:hidden;
  }

  .gamelist li .btn_down{ 
    display:block; 
    width:54px; 
    border-radius:3px; 
    height:22px; 
    line-height:22px; 
    color:#fff; 
    margin:6px auto 0; 
    background-color:#4398d1; 
    background-position:-44px -38px; 
    text-align:center;
    font-size:12px;
  }
  .block1{
    width:100%;
    height:100px;
    border-bottom:1px solid #ccc;
    padding:10px 10px;
  }
  .bimg{
    width:30%;
    height:100%;
    float:left;
  }
  .text{
    width:70%;
    height:100%;
    float:right;
  }
  .text .title{
    font-size:14px;
    padding-left:10px;
    color:#000;
  }
  .text .subtitle{
    font-size:12px;
    padding-left:10px;
    margin-top:-10px;
    overflow:hidden;
    width:100%;
    height:40px;
  }
  .block2{
    width:100%;
    height:180px;
    border-bottom:1px solid #ccc;
  }
  .newslist{
    width:100%;
    padding:10px;
    list-style:none;
  }
  .newslist li{
    width:100%;
    height:100%;
    overflow:hidden;
    margin:10px 0;
  }
  .newslist span{
    display:block;
    float:left;
    width:20%;
    font-size:14px;
  }
  .newslist a{
    display:block;
    height:20px;
    float:left;
    width:80%;
    text-decoration:none;
    font-size:14px;
    overflow:hidden;
    color:#000;
  }
</style>