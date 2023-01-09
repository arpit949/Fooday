<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions"%>
[
<a:set value="${citylist}" var="l"></a:set>
<a:set value="${b:length(l)}" var="x"></a:set>

<a:forEach items="${l}" var="i" varStatus="j">
	{
		"cityId" : ${i.id} ,
		"cityName" : "${i.cityName}" ,
		"cityDescription" : "${i.cityDescription}" , 
		"stateId": "${i.statevo.id }"			
	}
	<a:if test="${j.count ne x}">,</a:if>
</a:forEach>

]