<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions"%>
[
<a:set value="${areaList}" var="l"></a:set>
<a:set value="${b:length(l)}" var="x"></a:set>

<a:forEach items="${l}" var="i" varStatus="j">
	{
		"areaId":${i.id},
		"areaName":"${i.areaName}",
		"areaDescription":"${i.areaDescription}",
		"pincode":"${i.areaPincode}",
		"stateId":${i.statevo.id},
		"cityId":${i.cityvo.id}	
	}
	<a:if test="${j.count ne x}">,</a:if>
</a:forEach>

]