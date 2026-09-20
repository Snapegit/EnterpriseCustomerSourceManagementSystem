	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import xiaoliangdingdan from '@/views/xiaoliangdingdan/list'
	import chanpinxinxi from '@/views/chanpinxinxi/list'
	import chanpinleixing from '@/views/chanpinleixing/list'
	import yonghu from '@/views/yonghu/list'
	import fuwuxinxi from '@/views/fuwuxinxi/list'
	import kehuxinxi from '@/views/kehuxinxi/list'
	import storeup from '@/views/storeup/list'
	import config from '@/views/config/list'
	import fuwuleixing from '@/views/fuwuleixing/list'
	import users from '@/views/users/list'
	import yonghuCenter from '@/views/yonghu/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yonghuCenter',
			name: '用户个人中心',
			component: yonghuCenter
		}
		,{
			path: '/news',
			name: '新闻资讯',
			component: news
		}
		,{
			path: '/xiaoliangdingdan',
			name: '销量订单',
			component: xiaoliangdingdan
		}
		,{
			path: '/chanpinxinxi',
			name: '产品信息',
			component: chanpinxinxi
		}
		,{
			path: '/chanpinleixing',
			name: '产品类型',
			component: chanpinleixing
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/fuwuxinxi',
			name: '服务信息',
			component: fuwuxinxi
		}
		,{
			path: '/kehuxinxi',
			name: '客户信息',
			component: kehuxinxi
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/fuwuleixing',
			name: '服务类型',
			component: fuwuleixing
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
