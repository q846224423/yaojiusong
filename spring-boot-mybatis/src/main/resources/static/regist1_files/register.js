"use strict";!function(e){function t(t,o,a){var i=e(t).parents("ul"),s=e.trim(i.find("[name=phone]").val()),n=e.trim(i.find("[name=code]").val()),d=i.find("#readme").prop("checked");return""===s?void GY.dialogInfo({text:"手机号码不能为空！",auto:3e3,fooder:"closed"}):""===n?void GY.dialogInfo({text:"短信验证码不能为空！",auto:3e3,fooder:"closed"}):"phone"==e(t).attr("checkcode")&&1!=d?void GY.dialogInfo({text:"请选择协议！",auto:3e3,fooder:"closed"}):e(t).hasClass("disabled_btn")?!1:(e(t).addClass("disabled_btn"),void GY.iop({url:GY["interface"].checkCode.url,data:{method:GY["interface"].checkCode.method,telPhone:s,telIdentifyingCode:n,type:a,plat:GY.plat}}).done(function(a){0===a.status&&(o(i,a.data,n),e(".register-step li").eq(1).addClass("cur").siblings("cur"),e(".register-step li").eq(0).addClass("finish")),-2===a.status&&(GY.dialogInfo({text:a.msg,auto:3e3,fooder:"closed"}),e(t).removeClass("disabled_btn"))}).fail(function(o,a){GY.dialogInfo({text:"网络连接异常！",auto:3e3,fooder:"closed"}),e(t).removeClass("disabled_btn")}))}function o(t,o){function a(){var e=[];return e.push('<li><span class="reg-info">登录手机</span>'),e.push('<input type="text" class="tel" value="'+o.replace(/(\d{3})\d{4}(\d{4})/g,"$1****$2")+'" readonly="readonly"/>'),e.push('</li><li><span class="reg-info"><s>*</s>用户名</span>'),e.push('<input name="name" type="text" placeholder="会员名一旦设置成功，将无法修改" /></li>'),e.push('<li><span class="reg-info" ><s>*</s>登录密码</span>'),e.push('<input name="pwd" type="password" placeholder="设置您的登录密码"/></li>'),e.push('<li><span class="reg-info" ><s>*</s>确认密码</span>'),e.push('<input name="repeatpwd" type="password" placeholder="确认您的登录密码" /></li>'),e.push('<li><span class="reg-info"></span>'),e.push('<div id="phoneRegister"  class="btn">确定</div></li>'),e.join("")}e("[name=phone]").val(o),t.html(a()).on("click","#phoneRegister",s)}function a(e){return new RegExp("^[A-Za-z0-9_\\-\\u4e00-\\u9fa5]+$").test(e)}function i(e,t,o){return e.length>=t&&e.length<=o}function s(){var t=e.trim(e("[name=name]").val()),o=e.trim(e("[name=pwd]").val()),s=e.trim(e("[name=phone]").val()),n=e.trim(e("[name=repeatpwd]").val()),l=e("#phoneRegister").parents("ul"),r=/^[0-9]+$/,c=i(t.replace(/[^\x00-\xff]/g,"**"),4,16);return c?0==a(t)?(GY.dialogInfo({text:"用户名只能用 中文、英文、数字、下划线、4-16个字符!",auto:3e3,fooder:"closed"}),!1):r.test(t)?(GY.dialogInfo({text:"用户名不能使用全数字!",auto:3e3,fooder:"closed"}),!1):""===t?void GY.dialogInfo({text:"用户名不能为空！",auto:3e3,fooder:"closed"}):""===o?void GY.dialogInfo({text:"密码不能为空！",auto:3e3,fooder:"closed"}):o.length<6?void GY.dialogInfo({text:"密码长度6-20位，请重新设置！",auto:3e3,fooder:"closed"}):o.length>20?void GY.dialogInfo({text:"密码长度6-20位，请重新设置！",auto:3e3,fooder:"closed"}):""===n?void GY.dialogInfo({text:"确认密码不能为空！",auto:3e3,fooder:"closed"}):n!==o?void GY.dialogInfo({text:"确认密码与密码不一致！",auto:3e3,fooder:"closed"}):e("#phoneRegister").hasClass("disabled_btn")?!1:(e("#phoneRegister").addClass("disabled_btn"),void GY.iop({url:GY["interface"].register4phone.url,data:{method:GY["interface"].register4phone.method,telPhone:s,userName:encodeURIComponent(t),password:encodeURIComponent(o),plat:GY.plat}}).done(function(t){0===t.status&&(l.html(d(t.data,t.msg)),e(".register-step").addClass("step3"),e(".register-step .fl").removeClass("cur").eq(2).addClass("cur")),-2===t.status&&(GY.dialogInfo({text:t.msg,auto:3e3,fooder:"closed"}),e("#phoneRegister").removeClass("disabled_btn"))}).fail(function(t,o){GY.dialogInfo({text:"网络连接异常！",auto:3e3,fooder:"closed"}),e("#phoneRegister").removeClass("disabled_btn")})):(GY.dialogInfo({text:"用户名只能用 中文、英文、数字、下划线、4-16个字符!",auto:3e3,fooder:"closed"}),!1)}function n(e){var t=[];return t.push('<li><div class="clear success-tip">'),t.push('<span class="reg-step-success reg-success fl"></span><div>'),t.push('<p>验证邮件已发送到邮箱<span class="red user_mail">'+e+"</span></p>"),t.push('<p>请在<span class="red">2</span>小时内点击邮箱中的链接继续注册</p>'),t.push("</div></div></li>"),t.push('<li><a href="javascript:void(0)" class="btn mast_post">立即查收邮件</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)"  class="red" id="no_send" style="display:none;">没有收到邮件？</a></li>'),t.join("")}function d(e,t){var o=[];return o.push('<li><p class="success-tip">'),o.push('<span class="reg-step-success reg-success"></span>'),o.push(t),o.push("</p></li>"),o.push("<li>"),o.push('<a href="'+GY.host.rethost+"/usercenterLogin?retUrl="+GY.host.rethost+"&ticket="+e+'" class="btn reg-success-btn">开始购物</a>&nbsp;&nbsp;&nbsp;'),o.push('<a href="'+GY.host.rethost+"/usercenterLogin?retUrl="+GY.host.rethost+"/member&ticket="+e+'" class="btn reg-success-btn">个人中心</a>'),o.push("</li>"),o.join("")}GY.plat=GY.host.current_platform;var l=new regular;e.fn.headerSet({isIndex:"",hot:"0",search:"0"}),e(".after_apend").append('<a href="javascript:void(0);" class="title_append">会员注册</a>'),e("#mailBindPhone").find("i").click(function(){e("#mailBindPhone").addClass("hide")}),e(document).on("click","[r-type]",function(){var t=e(this).attr("r-type");"mail"===t&&(e("[register=phone]").addClass("hide"),e("[register=mail]").removeClass("hide")),"phone"===t&&(e("[register=mail]").addClass("hide"),e("[register=phone]").removeClass("hide"))}),e("#changeImgCode1").click(function(){e("#imgCode1").attr("src",GY.host.usercenterUrl+"/userAccountInfoAction.do?method=getMobIdentifyingCode&plat="+GY.plat+"&rnd="+Math.random())}),e("[sendcode]").click(function(){var t=(e(this).text(),e.trim(e(this).parents("ul").find("[name=phone]").val())),o=e.trim(e(this).parents("ul").find("[name=imgcode]").val()),a=e(this),i=a.attr("sendcode");return a.hasClass("disabled")?void 0:""===t?void GY.dialogInfo({text:"手机号码不能为空！",auto:3e3,fooder:"closed"}):"1"===i&&""===o?void GY.dialogInfo({text:"验证码不能为空！",auto:3e3,fooder:"closed"}):l.isphone(t)===!1?void GY.dialogInfo({text:"请填写正确的手机号码！",auto:3e3,fooder:"closed"}):void GY.iop({url:GY["interface"].code4register.url,data:{method:GY["interface"].code4register.method,telPhone:t,type:i,mobidentifyingCode:o,plat:GY.plat}}).done(function(e){0===e.status&&(GY.dialogInfo({text:"短信验证码已发送，请注意查收短信。如果您没有收到短信，可以在60秒后重新获取短信验证码。",auto:3e3,fooder:"closed"}),a.countdownCode()),-2===e.status&&GY.dialogInfo({text:e.msg,auto:3e3,fooder:"closed"})}).fail(function(e,t){GY.dialogInfo({text:"网络连接异常 !",auto:3e3,fooder:"closed"})})}),e("[checkCode]").click(function(){var a=e(this).attr("checkCode");"phone"===a&&t(this,function(e,t){o(e,t)},1),"mail"===a&&t(this,function(t,o,a){var i=e(".email-reg"),s=e.trim(i.find("[name=mail]").val()),d=e.trim(i.find("[name=imgcode]").val());GY.iop({url:GY["interface"].sendMail.url,data:{method:GY["interface"].sendMail.method,email:s,identifyingCode:d,telPhone:o,telIdentifyingCode:a,plat:GY.plat}}).done(function(t){if(0===t.status){i.html(n(s)),e("#mailBindPhone").addClass("hide"),e(".register-step li").removeClass("cur"),e(".register-step li").eq(3).addClass("cur"),e(".register").attr("data",s+"|"+d+"|"+o+"|"+a);var l={"vip.163.com":"http://vip.163.com/","126.com":"http://mail.126.com","163.com":"http://mail.163.com","yeah.net":"http://www.yeah.net/","sohu.com":"http://mail.sohu.com/","sina.com":"http://mail.sina.com.cn","vip.sina.com":"http://vip.sina.com.cn/","yahoo.com":"https://mail.yahoo.com","tom.com":"http://mail.tom.com/","qq.com":"http://mail.qq.com","188.com":"http://www.188.com/","139.com":"http://mail.10086.cn/","21cn.com":"http://mail.21cn.com/","hotmail.com":"http://www.hotmail.com","263.net":"http://mail.263.net/","guoyao123.com":"http://exmail.qq.com/login/","live.com":"http://login.live.com/","mail.com":"https://www.mail.com/mail/","outlook.com":"https://login.live.com/","wo.com.cn":"http://mail.wo.cn/mail/login.action","189.com":"http://webmail16.189.cn/webmail/","sogou.com":"http://mail.sogou.com/"},r=e(".user_mail").text().split("@")[1];l[r]?e(".mast_post").attr("href",l[r]):e(document).on("click",".mast_post",function(e){e.preventDefault(),GY.dialogInfo({text:"无法跳转到您设定的邮箱，请手工登录邮箱进行验证。",auto:3e3,fooder:"closed"})})}-2===t.status&&GY.dialogInfo({text:t.msg,auto:3e3,fooder:"closed"})}).fail(function(e,t){GY.dialogInfo({text:"网络连接异常 !",auto:3e3,fooder:"closed"})})},2)}),e("#changeImgCode").click(function(){e("#imgCode").attr("src",GY.host.usercenterUrl+"/userAccountInfoAction.do?plat="+GY.plat+"&method=getIdentifyingCode&rnd="+Math.random())});var r=/^[0-9a-z][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\.){1,4}[a-z]{2,4}$/;e("#checkMail").click(function(){var t=e(this).parents("ul"),o=e.trim(t.find("[name=mail]").val()),a=e.trim(t.find("[name=imgcode]").val()),i=t.find("#readme").prop("checked");return""===o?void GY.dialogInfo({text:"邮箱不能为空!",auto:3e3,fooder:"closed"}):r.test(o)?""===a?void GY.dialogInfo({text:"验证码不能为空!",auto:3e3,fooder:"closed"}):1!=i?void GY.dialogInfo({text:"请选择协议!",auto:3e3,fooder:"closed"}):void GY.iop({url:GY["interface"].checkMail.url,data:{method:GY["interface"].checkMail.method,email:o,identifyingCode:a,plat:GY.plat}}).done(function(t){0===t.status&&e("#mailBindPhone").removeClass("hide"),-2===t.status&&GY.dialogInfo({text:t.msg,auto:3e3,fooder:"closed"})}).fail(function(e,t){GY.dialogInfo({text:"网络连接异常!",auto:3e3,fooder:"closed"})}):void GY.dialogInfo({text:"请填写正确邮箱!",auto:3e3,fooder:"closed"})}),e.fn.countdownEmail=function(){function t(e){0==a?(e.removeClass("disabled"),e.text("没有收到邮件？ "),a=60):(e.addClass("disabled"),e.text("("+a+")秒后可重新发送 "),a--,setTimeout(function(){t(e)},3e3))}var o=e(this),a=60;t(o)},e(document).on("click","#no_send",function(){var t=e(this),o=e(".register").attr("data").split("|");return e(this).hasClass("disabled")?!1:(e(this).addClass("disabled"),void GY.iop({url:GY["interface"].sendMail.url,data:{method:GY["interface"].sendMail.method,email:o[0],identifyingCode:o[1],telPhone:o[2],telIdentifyingCode:o[3],plat:GY.plat}}).done(function(e){0===e.status&&(GY.dialogInfo({text:"邮件已重新发送，请注意查收邮件。如果您没有收到邮件，可以在60秒后重新发送。",auto:3e3,fooder:"closed"}),t.countdownEmail())}))}),e(document).on("click","#protocol",function(){GY.dialogInfo({title:"国药用户注册协议",text:e(".protocol_box").html(),cls:"dialog_protocol"})})}(jQuery);