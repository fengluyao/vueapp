<!--<template>
  <div id="app">
    <img src="./assets/logo.png">
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

<template>
  <div class="wrapper">
    <div class="box1"></div>
    <div class="box2"></div>
    <div class="box3"></div>
    <div class="box4"></div>
    <div class="box5"></div>
  </div>
</template>

<style>
* {
  margin: 0;
  padding: 0;
}
</style>

<style scoped>
.wrapper div {
  height: 1rem;
}
.box1 {
  width: 2rem;
  background-color: coral;
}
.box2 {
  width: 4rem;
  background-color: skyblue;
}
.box3 {
  width: 6rem;
  background-color: palegreen;
}
.box4 {
  width: 8rem;
  background-color: wheat;
}
.box5 {
  width: 10rem;
  background-color: darkred;
}
</style>-->
<template>
<div class="app">
  <router-view></router-view>
  
</div>

</template>

<script>
  /*import{Toast} from "mint-ui";
    export default {
      name: 'productdetailspage',
      data() {
          return {
              note: {
              display:"block",
              backgroundImage: "url(" + require("./images/sprite.png") + ")",
              backgroundRepeat: "no-repeat",
              backgroundPosition:"-77px 0px"
            },
            note1: {
              display:"block",
              backgroundImage: "url(" + require("./images/sprite.png") + ")",
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
    }*/
</script>

<style>
  /**{
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
  }*/
</style>