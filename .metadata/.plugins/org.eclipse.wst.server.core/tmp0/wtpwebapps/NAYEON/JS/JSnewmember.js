// id 중복체크 -->
  function idCheck(){
    var idCheck = window.open('M_login/l_idCheck.jsp', '중복 확인', 'width=500px,height=400px, scrollbars=yes');
  }

  window.onload = function(){
      document.getElementById("newwin").onclick = function(){
          window.open("M_login/l_idCheck.jsp","","width=500px,height=400px");
      }

  };
  
 
// 비밀번호 확인 -->  
  $(function(){
      $("#link-success").hide();
      $("#link-danger").hide();
      $("input").keyup(function(){
          var pw=$("#pw").val();
          var pw_check=$("#pw_check").val();
          if(pw != "" || pw_check != ""){
              if(pw == pw_check){
                  $("#link-success").show();
                  $("#link-danger").hide();
                  $("#submit").removeAttr("disabled");
              }else{
                  $("#link-success").hide();
                  $("#link-danger").show();
                  $("#submit").attr("disabled", "disabled");
              }    
          }
      });
  });
  
  
  
  function Validation(){        
	  var RegExp = /^[a-zA-Z0-9]{4,12}$/; //id와 pwassword 유효성 검사 정규식        

	  
	  var objId = document.getElementById("id"); //아이디       
	  var objpw = document.getElementById("pw"); //비밀번호 
	  
	  
	 // ================ ID 유효성검사 ================ //                
	   if(!RegExp.test(objId.value)){            
		  alert("ID는 4~12자의 영문과 숫자로만 입력하여 주세요.");                    
		  return false;        
		  }                
		  
 	// ================ PASSWORD 유효성검사 ===============//    
 	   if(!RegExp.test(objpw.value)){       
 		  alert("Password는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");            
 		  return false;       
 		   }        
 		  
 	   if(objpw.value==objId.value){ //패스워드와 ID가 동일한지 검사           
 		    alert("Password는 ID와 동일할 수 없습니다.");           
 		    return false;        
 		   }
  }
  
  
  
function id_search() { 
 	var frm = document.idfindscreen;

 	if (frm.name.value.length < 1) {
	  alert("이름을 입력해주세요");
	  return;
	 }

	 if (frm.tel.value.length != 11) {
		  alert("핸드폰번호를 정확하게 입력해주세요");
		  return;
	 }

 frm.method = "post";
 frm.action = "findIdResult.jsp"; //넘어간화면
 frm.submit();  
 }
