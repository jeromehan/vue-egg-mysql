<template>
    <div>
        <div>
            <label>
                <span>作者</span>
                <input type="text" v-model="author">
            </label>
        </div>
        <div>
            <label>
                <span>日期</span>
                <input type="text" v-model="date">
            </label>
        </div>
        <div>
            <label>
                <span>链接</span>
                <input type="text" v-model="link">
            </label>
        </div>
        <div>
            <label>
                <span>标题</span>
                <input type="text" v-model="title">
            </label>
        </div>
        <div>
            <button @click="editCollect">确定</button>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default {
    data() {
        return {
            collectId:this.$route.query.id,
            author: "",
            date: "",
            link: "",
            title: ""
        };
    },
    methods: {
        getCollect() {
            axios
                .get("http://localhost:7001/api/collect/" + this.collectId)
                .then(response => {
                    console.log(response);
                    this.author = response.data.data.author;
                    this.date = response.data.data.date;
                    this.link = response.data.data.link;
                    this.title = response.data.data.title;
                })
                .catch(error => {
                    console.log(error);
                });
        },
        editCollect(){
            axios
                .put("http://localhost:7001/api/collect/" + this.collectId,{
                    author: this.author,
                    date: this.date,
                    link: this.link,
                    title: this.title
                })
                .then(response => {
                    console.log(response);
                    this.$router.push({path:'/'})
                })
                .catch(error => {
                    console.log(error);
                });
        }
    },
    created(){
        this.getCollect()
    }
};
</script>