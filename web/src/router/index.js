
export default [{
    path: '/',
    redirect: '/list'
}, {
    path: '/list',
    name: 'list',
    component: () => import('@/components/list.vue')
},{
    path:'/add',
    name:'add',
    component: () => import('@/components/add.vue')
},{
    path:'/updated',
    name:'updated',
    component: () => import('@/components/updated.vue')
}]