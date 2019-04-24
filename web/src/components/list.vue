<template>
    <div class="app-collect">
        <header>
            <router-link to="/add">新建收藏</router-link>
        </header>
        <ul class="collect-main">
            <li class="main-item" v-for="item in collecData" :key="item.id">
                <a :href="item.link">{{item.title}}</a>
                <span style="margin-left:20px;">
                    <router-link :to="{path:'/updated',query:{id:item.id}}">编辑</router-link>
                    <button @click="deleteCollect(item.id)" style="margin-left:20px;">删除</button>
                </span>
            </li>
        </ul>
    </div>
</template>
<script>
import axios from 'axios'
export default {
    data() {
        return {
            collecData: []
        };
    },
    methods: {
        getCollect() {
            axios
                .get("http://localhost:7001/api/collect",{
                    params:{
                        limit:10
                    }
                })
                .then(response => {
                    console.log(response);
                    this.collecData = response.data.data.rows;
                })
                .catch(error => {
                    console.log(error);
                });
        },
        deleteCollect(id){
            axios
                .delete("http://localhost:7001/api/collect/" + id)
                .then(response => {
                    console.log(response);
                    this.getCollect();
                })
                .catch(error => {
                    console.log(error);
                });
        }
    },
    created() {
        this.getCollect();
    }
};
</script>
<style scoped>
li{
    list-style: none;
}
</style>

