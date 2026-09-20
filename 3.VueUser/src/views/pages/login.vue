<template>
	<div>
		<div class="login_view">
			<el-form :model="loginForm" class="login_form">
				<div class="title_view">基于Spring Boot的企业客源关系管理系统的设计与实现登录</div>
				<div class="list_item" v-if="loginType==1">
					<div class="list_label">
						账号：
					</div>
					<input class="list_inp" v-model="loginForm.username" placeholder="请输入账号" />
				</div>
				<div class="list_item" v-if="loginType==1">
					<div class="list_label">
						密码：
					</div>
					<input class="list_inp" v-model="loginForm.password" type="password" placeholder="请输入密码"  />
				</div>
				<div class="list_type" v-if="userList.length>1">
					<div class="list_label">
						用户类型：
					</div>
				  <el-select v-model="loginForm.role" placeholder="请选择用户类型">
				    <el-option v-for="(item,index) in userList" :label="item.roleName" :value="item.roleName"></el-option>
				  </el-select>
				</div>
				<div class="listCode_view" v-if="loginType==1">
					<div class="listCode_label">
						验证码：
					</div>
					<input class="listCode_inp" placeholder="请输入验证码" type="text" v-model="loginForm.code" @keydown.enter.native="handleLogin">
					<div class="listCode_btn" @click="getMathCode">
						<span
							:style="{color:item.color,transform:item.rotate,fontSize:item.size,padding: '0 3px',display:'inline-block'}"
							v-for="(item, index) in symbolCodes" :key="index">{{ item.num }}</span>
					</div>
				</div>
				<div class="remember_view" v-if="loginType==1">
					<el-checkbox v-model="rememberPassword" label="记住密码" size="large" :true-label="true"
						:false-label="false" />
				</div>
				<div class="btn_view">
					<el-button class="login" v-if="loginType==1" type="success" @click="handleLogin">登录</el-button>
					<el-button class="register" type="primary" @click="handleRegister('yonghu')">注册用户</el-button>
				</div>
			</el-form>
		</div>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		nextTick,
		onMounted,
	} from "vue";
	import menu from '@/utils/menu'
	const userList = ref([])
	const menus = ref([])
	const loginForm = ref({
		role: '',
		username: '',
		password: ''
	})
	const tableName = ref('')
	const loginType = ref(1)
	//是否记住密码
	const rememberPassword = ref(true)
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	//运算验证码
	const symbolCodes = ref([{
		num: 1,
		color: '#000',
		rotate: '10deg',
		size: '16px'
	}, {
		num: '+',
		color: '#000',
		rotate: '10deg',
		size: '16px'
	}, {
		num: 3,
		color: '#000',
		rotate: '10deg',
		size: '16px'
	}])
	const getMathCode = () => {
		let num1 = Math.floor(Math.random() * 50)
		let symbolList = ['+', '-', '*']
		let num2 = Math.floor(Math.random() * 10)
		let colors = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
		let sizes = ['14', '15', '16', '17', '18']
		symbolCodes.value[0].num = num1
		let symbol = Math.floor(Math.random() * symbolList.length)
		symbolCodes.value[1].num = symbolList[symbol]
		symbolCodes.value[2].num = num2
		for (let i = 0; i < 3; i++) {
			// 随机验证码颜色
			let code = '#'
			for (let j = 0; j < 6; j++) {
				let key = Math.floor(Math.random() * colors.length)
				code += colors[key]
			}
			symbolCodes.value[i].color = code
			// 随机验证码方向
			let rotate = Math.floor(Math.random() * 60)
			let plus = Math.floor(Math.random() * 2)
			if (plus == 1) rotate = '-' + rotate
			symbolCodes.value[i].rotate = 'rotate(' + rotate + 'deg)'
			// 随机验证码字体大小
			let size = Math.floor(Math.random() * sizes.length)
			symbolCodes.value[i].size = sizes[size] + 'px'
		}
	}
	//注册
    const handleRegister = (tableName) => {
    	context?.$router.push(`/${tableName}Register`)
    	
    }
	const handleLogin = () => {
		if (!loginForm.value.username) {
			context?.$toolUtil.message('请输入用户名', 'error')
			
			return;
		}
		if (!loginForm.value.password) {
			context?.$toolUtil.message('请输入密码', 'error')
			
			return;
		}
		if (userList.value.length > 1) {
			if (!loginForm.value.role) {
				context?.$toolUtil.message('请选择角色', 'error')
				verifySlider.reset()
				return;
			}
			for (let i = 0; i < menus.value.length; i++) {
				if (menus.value[i].roleName == loginForm.value.role) {
					tableName.value = menus.value[i].tableName;
				}
			}
		} else {
			tableName.value = userList.value[0].tableName;
			loginForm.value.role = userList.value[0].roleName;
		}
		let symbolList = ['+', '-', '*']
		let symbolIndex = 0
		let code = 0
		for (let x in symbolList) {
			if (symbolList[x] == symbolCodes.value[1].num) {
				symbolIndex = x
			}
		}
		if (symbolIndex == 0) {
			code = symbolCodes.value[0].num + symbolCodes.value[2].num
		} else if (symbolIndex == 1) {
			code = symbolCodes.value[0].num - symbolCodes.value[2].num
		} else if (symbolIndex == 2) {
			code = symbolCodes.value[0].num * symbolCodes.value[2].num
		}
		if (code != loginForm.value.code) {
			context?.$toolUtil.message('验证码输入有误', 'error')
			getMathCode()
			return;
		}
		login()
	}
	const login = () => {
		context?.$http({
			url: `${tableName.value}/login?username=${loginForm.value.username}&password=${loginForm.value.password}`,
			method: 'post'
		}).then(res => {
			//是否保存当前账号密码至缓存
			if (rememberPassword.value) {
				let loginForm1 = JSON.parse(JSON.stringify(loginForm.value))
				delete loginForm1.code
				context?.$toolUtil.storageSet("frontLoginForm", JSON.stringify(loginForm1));
			} else {
				context?.$toolUtil.storageRemove("frontLoginForm")
			}
			context?.$toolUtil.storageSet("frontToken", res.data.token);
			context?.$toolUtil.storageSet("frontRole", loginForm.value.role);
			context?.$toolUtil.storageSet("frontSessionTable", tableName.value);
			let path = context?.$toolUtil.storageGet('toPath')
			if (path) {
				context?.$router.push(path)
				context?.$toolUtil.storageRemove('toPath')
				return
			}
			context?.$router.push(`/index/${tableName.value}Center`)
		},err=>{
		})
	}
	//获取菜单
	const getMenu=()=> {
		let arr = menu.list()
		menus.value = arr
		for (let i = 0; i < menus.value.length; i++) {
			if (menus.value[i].hasFrontLogin=='是') {
				userList.value.push(menus.value[i])
			}
		}
    }
	//初始化
	const init = () => {
		getMenu();
		//获取缓存是否有保存的账号密码
		let form = context?.$toolUtil.storageGet('frontLoginForm')
		if (form) {
			loginForm.value = JSON.parse(form)
		}else {
			loginForm.value.role = userList.value[0].roleName
		}
		getMathCode()
	}
	onMounted(()=>{
		init()
	})
</script>

<style lang="scss" scoped>
	.login_view {
		background-repeat: no-repeat;
		flex-direction: column;
		background-size: cover;
		background: url(http://clfile.zggen.cn/20231229/e2095d3a74784da2bdff07be79797146.jpg);
		display: flex;
		min-height: 100vh;
		justify-content: center;
		align-items: center;
		position: relative;
		background-position: center center;
		// 表单盒子
		.login_form {
			border-radius: 20px;
			padding: 30px 20px 40px;
			box-shadow: 0px 26px 36px -20px #083f5d;
			margin: 20px 0;
			background: #fff;
			display: flex;
			width: 600px;
			min-height: 600px;
			justify-content: center;
			position: relative;
			flex-wrap: wrap;
		}
		.title_view {
			padding: 0;
			margin: 0 0 10px;
			color: #0d6392;
			width: 100%;
			font-size: 18px;
			text-align: center;
		}
		// item盒子
		.list_item {
			margin: 10px 0;
			display: flex;
			width: 80%;
			justify-content: center;
			align-items: center;
			// label
			.list_label {
				width: 90px;
				font-size: 14px;
				text-align: right;
			}
			// 输入框
			.list_inp {
				border: 1px solid #ddd;
				border-radius: 0px;
				padding: 0 10px;
				width: 300px;
				line-height: 36px;
				height: 36px;
			}
		}
		// 验证码
		.listCode_view {
			margin: 10px 0;
			display: flex;
			width: 80%;
			justify-content: center;
			align-items: center;
			// label
			.listCode_label {
				width: 90px;
				font-size: 14px;
				text-align: right;
			}
			// 验证码输入框
			.listCode_inp {
				border: 1px solid #ddd;
				padding: 0 10px;
				width: 190px;
				line-height: 36px;
				height: 36px;
			}
			// 验证码按钮
			.listCode_btn {
				border: 1px solid #ddd;
				margin: 0 0 0 20px;
				background: #0d639210;
				width: 90px;
				line-height: 36px;
				text-align: center;
				height: 36px;
			}
		}
		.list_type {
			margin: 10px 0;
			display: flex;
			width: 80%;
			justify-content: center;
			align-items: center;
			.list_label {
				width: 90px;
				font-size: 14px;
				text-align: right;
			}
			// 下拉框样式
			:deep(.el-select) {
				border: 1px solid #ddd;
				border-radius: 0px;
				padding: 0 10px;
				color: #666;
				background: #fff;
				width: 300px;
				line-height: 36px;
				box-sizing: border-box;
				//去掉默认样式
				.select-trigger{
					height: 100%;
					.el-input{
						height: 100%;
						.el-input__wrapper{
							border: none;
							box-shadow: none;
							background: none;
							border-radius: 0;
							height: 100%;
							padding: 0;
						}
						.is-focus {
							box-shadow: none !important;
						}
					}
				}
			}
		}
		// 记住密码样式
		.remember_view {
			margin: 16px auto;
			width: 80%;
			text-align: center;
		
			// 未选中样式
			:deep(.el-checkbox) {
				margin: 0;
				display: flex;
				width: 82%;
				justify-content: center;
				align-items: center;
				// 复选框
				.el-checkbox__inner {
					border: 1px solid #DCDFE6;
					background: #fff;
				}
				// 提示文字
				.el-checkbox__label{
					color: #999;
				}
			}
			// 选中样式
			:deep(.is-checked) {
				//复选框
				.el-checkbox__inner {
					background-color: #0058ab;
					border-color: #0058ab;
				}
				// 提示文字
				.el-checkbox__label{
					color: #0058ab;
				}
			}
		}
		// 按钮盒子
		.btn_view {
			padding: 20px 0 0;
			display: flex;
			width: 80%;
			justify-content: center;
			align-items: center;
			flex-wrap: wrap;
			// 登录
			.login {
				border: 0;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 24px;
				margin: 0 0px 10px 90px;
				outline: none;
				color: #fff;
				background: linear-gradient(158deg, rgba(75,149,218,1) 49%, rgba(0,88,171,1) 100%),#0058ab;
				width: 300px;
				font-size: 14px;
				height: 36px;
			}
			// 注册
			.register {
				border: 0px solid #0058ab;
				cursor: pointer;
				border-radius: 0px;
				padding: 0 10px;
				margin: 0 10px 10px 0;
				outline: none;
				color: #0058ab;
				background: none;
				width: auto;
				font-size: 14px;
				height: 36px;
			}
		}
	}

</style>