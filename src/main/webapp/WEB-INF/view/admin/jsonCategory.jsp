<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions"%>
[
<a:set value="${categorylist}" var="l"></a:set>
<a:set value="${b:length(l)}" var="x"></a:set>

<a:forEach items="${l}" var="i" varStatus="j">
	{
		"categoryId" : ${i.id} ,
		"categoryName" : "${i.categoryName}",
		"categoryDescription" : "${i.categoryDescription}" 		
	}
	<a:if test="${j.count ne x}">,</a:if>
</a:forEach>

]