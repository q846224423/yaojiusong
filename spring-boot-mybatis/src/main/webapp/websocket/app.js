//1.导入nodejs-websocket包
const ws = require('nodejs-websocket')
const POST = 3000
//记录当前进来的连接数
let count=0;
//创建一个server
//只要有用户连接上来了 就回创建一个connect对象
const server = ws.createServer(connect => {
	console.log('有用户连接上来了')
	count++;
	//connect.userName='用户${count}'
	
	
	//告诉所有人，有人加入聊天室
	/*broadcast({
		type:0,
		msg:'用户进来了',
		time:new Date().toLocaleTimeString()
	})*/
	//每当接收到浏览器数据 text事件就会被触发
connect.on('text', data => {
	console.log('接受到了用户信息', data)
	broadcast({
		type:1,
		msg:data,
		time:new Date().toLocaleTimeString()
	})
})
 connect.on('close',data =>{
 	console.log('关闭连接')
 	broadcast({
		type:2,
		msg:'用户退出聊天室',
		time:new Date().toLocaleTimeString()
	})
 })
 //用户断开打印一个一场  不导致服务断开
 connect.on('error',() =>{
  	console.log('用户连接异常')
  
  })

})
   //广播，给所有人发消息
   function broadcast(msg){
   	//	server.connections表示所有用户
   	server.connections.forEach(item =>{
   		item.send(JSON.stringify(msg))
   	})
   }
server.listen(POST, () => {
	console.log('wensocket服务已成功启动了')
})