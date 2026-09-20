import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import newsList from '@/views/pages/news/list'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import kehuxinxiList from '@/views/pages/kehuxinxi/list'
import kehuxinxiDetail from '@/views/pages/kehuxinxi/formModel'
import kehuxinxiAdd from '@/views/pages/kehuxinxi/formAdd'
import xiaoliangdingdanList from '@/views/pages/xiaoliangdingdan/list'
import xiaoliangdingdanDetail from '@/views/pages/xiaoliangdingdan/formModel'
import xiaoliangdingdanAdd from '@/views/pages/xiaoliangdingdan/formAdd'
import storeupList from '@/views/pages/storeup/list'
import fuwuleixingList from '@/views/pages/fuwuleixing/list'
import fuwuleixingDetail from '@/views/pages/fuwuleixing/formModel'
import fuwuleixingAdd from '@/views/pages/fuwuleixing/formAdd'
import fuwuxinxiList from '@/views/pages/fuwuxinxi/list'
import fuwuxinxiDetail from '@/views/pages/fuwuxinxi/formModel'
import fuwuxinxiAdd from '@/views/pages/fuwuxinxi/formAdd'
import chanpinleixingList from '@/views/pages/chanpinleixing/list'
import chanpinleixingDetail from '@/views/pages/chanpinleixing/formModel'
import chanpinleixingAdd from '@/views/pages/chanpinleixing/formAdd'
import chanpinxinxiList from '@/views/pages/chanpinxinxi/list'
import chanpinxinxiDetail from '@/views/pages/chanpinxinxi/formModel'
import chanpinxinxiAdd from '@/views/pages/chanpinxinxi/formAdd'
import emailregistercodeList from '@/views/pages/emailregistercode/list'
import emailregistercodeDetail from '@/views/pages/emailregistercode/formModel'
import emailregistercodeAdd from '@/views/pages/emailregistercode/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'kehuxinxiList',
			component: kehuxinxiList
		}, {
			path: 'kehuxinxiDetail',
			component: kehuxinxiDetail
		}, {
			path: 'kehuxinxiAdd',
			component: kehuxinxiAdd
		}
		, {
			path: 'xiaoliangdingdanList',
			component: xiaoliangdingdanList
		}, {
			path: 'xiaoliangdingdanDetail',
			component: xiaoliangdingdanDetail
		}, {
			path: 'xiaoliangdingdanAdd',
			component: xiaoliangdingdanAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'fuwuleixingList',
			component: fuwuleixingList
		}, {
			path: 'fuwuleixingDetail',
			component: fuwuleixingDetail
		}, {
			path: 'fuwuleixingAdd',
			component: fuwuleixingAdd
		}
		, {
			path: 'fuwuxinxiList',
			component: fuwuxinxiList
		}, {
			path: 'fuwuxinxiDetail',
			component: fuwuxinxiDetail
		}, {
			path: 'fuwuxinxiAdd',
			component: fuwuxinxiAdd
		}
		, {
			path: 'chanpinleixingList',
			component: chanpinleixingList
		}, {
			path: 'chanpinleixingDetail',
			component: chanpinleixingDetail
		}, {
			path: 'chanpinleixingAdd',
			component: chanpinleixingAdd
		}
		, {
			path: 'chanpinxinxiList',
			component: chanpinxinxiList
		}, {
			path: 'chanpinxinxiDetail',
			component: chanpinxinxiDetail
		}, {
			path: 'chanpinxinxiAdd',
			component: chanpinxinxiAdd
		}
		, {
			path: 'emailregistercodeList',
			component: emailregistercodeList
		}, {
			path: 'emailregistercodeDetail',
			component: emailregistercodeDetail
		}, {
			path: 'emailregistercodeAdd',
			component: emailregistercodeAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
