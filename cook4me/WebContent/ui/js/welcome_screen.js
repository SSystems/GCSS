/**
 * 
 */
$(document).ready(function(){
	$("#login").click(function(){
		$("#login_list").slideToggle(400);
	});
});
$("a[rel*=leanModal]").leanModal({top:200 , overlay : .7, closeButton: ".modal_close" });
	$(function(){
		$(".Register").click(function(){
			$("#user_login").hide();
			$("#registration_form").show();
			$("#header_title").text('Register');
			return false;
		});
		
		$(".back").click(function(){
			$("#user_login").show();
			$("#registration_form").hide();
			$("#header_title").text('Login');
			return false;
		});
		
	})
	$("#upload_image").click(function(){
				$("#container").append( '<div><input type=file accept="image/*" id="image_input"><span class="remove_div">remove</span></div>' );
			});
	$(document).on('click','.remove_div',function(){
				$(this).parent().remove();
			});
	$("#add_dish").click(function(){
		$("#container").append( '<div id="dish"><label>Dish Name</label><input type="text"><br><label>Click to Upload Your Image</label><input type=file accept="image/*" id="image_input"><br><label>Dish Description</label><textarea></textarea><span id="remove_dish">Remove This Dish</span></div>' );
			});
	$(document).on('click','.remove_div',function(){
				$(this).parent().remove();
			});
	$(document).on('click','#remove_dish',function(){
				$(this).parent().remove();
			});
			

	