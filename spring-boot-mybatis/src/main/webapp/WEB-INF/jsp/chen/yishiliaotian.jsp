<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="yes" name="apple-touch-fullscreen">
    <meta name="full-screen" content="yes">
    <meta content="default" name="apple-mobile-web-app-status-bar-style">
    <meta name="screen-orientation" content="portrait">
    <meta name="browsermode" content="application">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="x5-orientation" content="portrait">
    <meta name="x5-fullscreen" content="true">
    <meta name="x5-page-mode" content="app">
    <base target="_blank">
    <title></title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/index/chat.css">
    <script src="~/Scripts/jquery-1.10.2.min.js"></script>
    <script src="~/Scripts/chat.js"></script>
    <script>
    
   // 发送信息
   
function SendMsg()
{
    var text = document.getElementById("text");
    if (text.value == "" || text.value == null)
    {
        alert("发送信息为空，请输入！")
    }
    else
    {
        AddMsg('default', SendMsgDispose(text.value));
        text.value = "";
    }
}
// 发送的信息处理
function SendMsgDispose(detail)
{
    detail = detail.replace("\n", "<br>").replace(" ", "&nbsp;")
    return detail;
}

// 增加信息
function AddMsg(user,content)
{
    var str = CreadMsg(user, content);
    var msgs = document.getElementById("msgs");
    msgs.innerHTML = msgs.innerHTML + str;
}

// 生成内容
function CreadMsg(user, content)
{
    var str = "";
    if(user == 'default')
    {
        str = "<div class=\"msg guest\"><div class=\"msg-right\"><div class=\"msg-host headDefault\"></div><div class=\"msg-ball\" title=\"今天 17:52:06\">" + content +"</div></div></div>"
    }
    else
    {
        str = "<div class=\"msg robot\"><div class=\"msg-left\" worker=\"" + user + "\"><div class=\"msg-host photo\" style=\"background-image: url(../Images/head.png)\"></div><div class=\"msg-ball\" title=\"今天 17:52:06\">" + content + "</div></div></div>";
    }
    return str;
}

</script>
<style>

	.ab{
                        	margin-left:165px;
                        	margin-top: 370px; 
                        	z-index: 200;
                        	 position: absolute; 
                        	 color: rgb(51,51,51);
                         text-decoration: none;	
                        	
	}
	.ab input{
		 height: 90px;
		 width: 625px;
		 border:none;
		  outline: none; 
	}
</style>
</head>
<body lang="zh">
    <div class="abs cover contaniner">
        <div class="abs cover pnl">
            <div class="top pnl-head">
            	<div id="yishi">用户</div>
            <div id="guanbi">
            	<table>
            		<tr>
            			<td>一</td>
            			<td>口</td>
            			<td style="font-size: 20px;"><a href="" id="a">×</a></td>
            		</tr>
            	
            	</table>
            </div>
            </div>
            <div class="abs cover pnl-body" id="pnlBody">
                <div class="abs cover pnl-left">
                    <div class="abs cover pnl-msgs scroll" id="show" >
                        <div class="msg min time" id="histStart">加载历史消息</div>
                        <div class="pnl-list" id="hists">
                            <!-- 历史消息 -->
                        </div>
                        	<!--收发信息的大DIV-->
                        <div class="pnl-list" id="msgs">
                        	
                            <!--发送出去了的DIV-->
                            <div class="msg guest" >
                                <div class="msg-right" id="asd" >
                                </div>
                            </div>
                        </div>
                    </div>
                        <div class="abs cover pnl-input">
                           <textarea class="scroll" id="text" wrap="hard" placeholder="as"></textarea>
                        </div>
                        <!--下面发送DIV-->
                        <div>
                        <div class="abs br pnl-btn" id="submit" style="background-color: rgb(32, 196, 202); color: rgb(255, 255, 255);" onclick="cc()">发送</div>
                        <div class="pnl-support" id="copyright"><a href="#">版权什么的</a></div>
                    </div>
                </div>
               <!-- 右边部分-->
                <div class="abs right pnl-right">
                    <div class="slider-container hide"></div>
                    <div class="pnl-right-content">
                        <div class="pnl-tabs">
                            <div class="tab-btn active" id="hot-tab">常见问题</div>
                            <div class="tab-btn" id="rel-tab">相关问题</div>
                        </div>
                        <div class="pnl-hot">
                            <ul class="rel-list unselect" id="hots">
                                <!-- <li class="rel-item">这是一个问题，这是一个问题？</li> -->
                            </ul>
                        </div>
                        <div class="pnl-rel" style="display: none;">
                            <ul class="rel-list unselect" id="rels">
                                <!-- <li class="rel-item">这是一个问题，这是一个问题？</li> -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  						<!--发送信息的DIV-->
                        <div class="ab" style="position: relative; top: 270px;left: -206px;"><input id="fasong" name="" autofocus="autofocus"  /></div>
    	<script >
			/*创建websocket 参数webSocket地址*/
			var websocket = new WebSocket("ws://localhost:3000");
			  var div2 = document.getElementById("asd");
				websocket.addEventListener('open',function(){1
					 document.getElementById("asd").innerHTML="欢迎你！请问有什么可以帮助你的？"
				});
				/*发送信息的时候触发*/
			function cc(){
				var fasong =  document.getElementById("fasong").value;
				var value = '医师:'+fasong;
//				value.setStyle("collor#000000");
			websocket.send(value);
				document.getElementById("fasong").value="";
				
			}
			
			
			/*接受到了服务器的信息时候触发*/
		    websocket.addEventListener('message',function(e){
		    		var data = JSON.parse(e.data)
		    	var dv = document.createElement('div')
		    	dv.innerText=data.msg+ '-----'+ data.time;
		    	if(data.type ===0 ){
		    		dv.style.color='green'
		    	}else if(data.type ===1){
		    		dv.style.color='blue'
		    	}else{
		    		dv.style.color='red'
		    	}
		    	div2.appendChild(dv)
		    	
		    	
		    	
		    })
		websocket.addEventListener('close',function(){
			
		})		
		</script>
     
</body>
</html>