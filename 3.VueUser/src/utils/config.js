const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '客户信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'客户信息',
							url:'/index/kehuxinxiList'
						},
					]
				},
				{
					name: '产品信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'产品信息',
							url:'/index/chanpinxinxiList'
						},
					]
				},
				{
					name: '销量订单管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'销量订单',
							url:'/index/xiaoliangdingdanList'
						},
					]
				},
				{
					name: '新闻资讯管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'新闻资讯',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '服务信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'服务信息',
							url:'/index/fuwuxinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "基于Spring Boot的企业客源关系管理系统的设计与实现"
        } 
    }
}
export default config
