<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script src="${pageContext.request.contextPath}/js/chart/chart.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
<form>
<input type="hidden" id="complaintWiseCount" value='${complaintWiseCount}' />
<div id="complaintPiechart" style="width: 500px; height: 250px;"></div>
</form>
</body>