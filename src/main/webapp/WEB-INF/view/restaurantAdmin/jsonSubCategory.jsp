<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions"%>
[
<a:set value="${subcategorylist}" var="l"></a:set>
<a:set value="${b:length(l)}" var="x"></a:set>

<a:forEach items="${l}" var="i" varStatus="j">
	{
		"subcategoryId" : ${i.id} ,
		"subcategoryName" : "${i.subcategoryName}" ,
		"subcategoryDescription" : "${i.subcategoryDescription}" ,
		"categoryId": "${i.categoryvo.id }"		
	}
	<a:if test="${j.count ne x}">,</a:if>
</a:forEach>

]