<%@ page contentType="text/html; charset=EUC-KR"%>
�ʿ��ϴٸ� script �Լ� ���赵 ����
<script>
	function aa() {
		if(confirm("�����Ͻðڽ��ϱ�?")) {
			var v = prompt("YES �Է�");
			if(v == 'YES') {
				location.href='list.jsp';
			}
		}		
	}
</script>
<input type="button" onclick="aa()"/>

