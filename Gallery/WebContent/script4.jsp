<%@ page contentType="text/html; charset=EUC-KR"%>
필요하다면 script 함수 설계도 가능
<script>
	function aa() {
		if(confirm("진행하시겠습니까?")) {
			var v = prompt("YES 입력");
			if(v == 'YES') {
				location.href='list.jsp';
			}
		}		
	}
</script>
<input type="button" onclick="aa()"/>

