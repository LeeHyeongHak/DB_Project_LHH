window.onload = function(){
	document.registerForm.submitButton.onclick = function(){
		var registerForm = document.registerForm;
		var id = registerForm.id.value;
		var pw = registerForm.pw.value;
		var name = registerForm.name.value;
		var ssn = registerForm.ssn.value;
		var phone = registerForm.phone.value;
		var address = registerForm.address.value;
		var submitButton = registerForm.submitButton.value;
		var regex;
		
		//가입하기를 눌렸을 때, 입력값이 모두 입력되었는지 유효성 검사 
		if(id==""){alert("ID를 입력해주세요");return;}
		if(pw==""){alert("비밀번호를 입력해주세요");return;}
		if(name==""){alert("이름을 입력해주세요");return;}
		if(ssn==""){alert("주민등록번호을 입력해주세요");return;}
		if(phone==""){alert("전화번호를 입력해주세요");return;}
		if(address==""){alert("주소를 입력해주세요");return;}
		
		
		//전화번호 형식 확인(정규 표현식)
		regex=/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
		if(regex.test(phone) === false){
			alert("잘못된 전화번호입니다.");
			return;
		}
	}
}