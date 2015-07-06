<%@ page contentType="text/html; charset=EUC-KR"%>


<script>
	function test(id,  pass) {
		alert(id+"/"+pass);		
	}
</script>
<input type="button" onclick="test('salz', 'zzang')"/>
<input type="button" onclick="test('saan', 'zzang')"/>

<%
	request.setAttribute("msg", "message");
%>
<input type="button" onclick="test('${msg}', '${msg }')"/>









