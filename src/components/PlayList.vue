<template>
    <div class="app">
        <div class="header">游戏
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
        <ul class="gamelist">
          <li v-for="item in list" :key="item.id">
            <router-link to="/container">
              <img :src="item.img_url" alt="掌上炸翻天">
            </router-link>
            <h3>
              <router-link to="/container">{{item.title}}</router-link>
            </h3>
            <p>人气：{{item.renqi}}</p>
            <p>大小：{{item.big}} MB</p>
            <router-link class="btn_down" to="/container">抢先下载</router-link>
          </li>
        </ul>
    </div>
</template>

<script>
import{Toast} from "mint-ui";
    export default {
      data() {
          return {
             list:[]
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
          var url="http://127.0.0.1:3000/yxlist/list";
          this.$http.get(url).then(result=>{
            if(result.body.code == 1){
              this.list = result.body.msg;
                console.log(this.list);
              }
            else
              Toast("加载轮播图片失败!!");
          })
        }
      },
      created() {
        this.yxList();
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
</style>