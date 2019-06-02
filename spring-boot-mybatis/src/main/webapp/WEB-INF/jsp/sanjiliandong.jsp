<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <script type="text/javascript" src="js/index/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/index/menu.js"></script>    
        
	<script type="text/javascript" src="js/index/select.js"></script>
	<script type="text/javascript">
    	jQuery(function(){
			jQuery.ajax({
				"url":"getProvince",
				"type":"post",
				"data":{},
				"dataType":"json",
				"success":function(res){
					jQuery.each(res,function(){
						jQuery("#province").append('<option value="'+this.provinceCode+'" >'+this.provinceName+'</option>');
					 }) 
				}
			})
			jQuery("#province").change(function(){
				var provinceCode = jQuery(this).val();
				jQuery.ajax({
				"url":"getCity",
				"type":"post",
				"data":{"provinceCode":provinceCode},
				"dataType":"json",
				"success":function(res){
					jQuery("#city>option:gt(0)").remove();
					jQuery.each(res,function(){
						jQuery("#city").append('<option value="'+this.cityCode+'" >'+this.cityName+'</option>');
					 }) 
				}
			})
		})
		 jQuery("#city").change(function(){
				var cityCode = jQuery(this).val();
				jQuery.ajax({
				"url":"getArea",
				"type":"post",
				"data":{"cityCode":cityCode},
				"dataType":"json",
				"success":function(res){
					jQuery("#area>option:gt(0)").remove();
					jQuery.each(res,function(){
						jQuery("#area").append('<option value="'+this.areaId+'" >'+this.areaName+'</option>');
					 }) 
				}
			})
		}) 
		
		
		
		 jQuery("#area").change(function(){
				var cit = jQuery(this).val();
				jQuery.ajax({
				"url":"yaodian",
				"type":"post",
				"data":{"cit":cit},
				"dataType":"json",
				"success":function(res){
					jQuery("#yao>option:gt(0)").remove();
					jQuery.each(res,function(){
						jQuery("#yao").append('<option value="'+this.yd_id+'" >'+this.yd_name+'</option>');
					 }) 
				}
			})
		}) 
		
		
	})
	</script>
<body>
 	<select id="province" style="font-size: 14px;" name="province" >
					<option value="0">${user.provinceName }</option>
					</select> <br/>
                	<select  id="city" style="font-size: 14px" name="city">
                      <option value="0" >${user.cityName }</option>
                    </select><br/>
                    <select   id="area" style="font-size: 14px;" name="user_countyid">
                      <option value="${user.user_countyid }" >${user.areaName }</option>
                    </select><br/>
                     <select   id="yao" style="font-size: 14px;" name="yaodian">
                      <option value="药店" >药店</option>
                    </select>
</body>
</html>