<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions"%>
[
<a:set value="${restaurantList}" var="l"></a:set>
<a:set value="${b:length(l)}" var="x"></a:set>

<a:forEach items="${l}" var="i" varStatus="j">
	{
		"restaurantId":${i.id} ,
		"restaurantName":"${i.restaurantName}",
		"restaurantAddress":"${i.restaurantAddress}",
		"stateId":${i.statevo.id},
		"cityId":${i.cityvo.id},
		"areaId":${i.areavo.id},
		"payment":"${i.paymentMethod}"
	}
	<a:if test="${j.count ne x}">,</a:if>
</a:forEach>

]