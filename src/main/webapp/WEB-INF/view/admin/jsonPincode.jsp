<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions"%>
[
<a:set value="${pincodeList}" var="l"></a:set>
<a:set value="${b:length(l)}" var="x"></a:set>

<a:forEach items="${l}" var="i" varStatus="j">
	{
		"pId" : ${i.id} ,
		"pincode" : "${i.areaPincode}" 		
	}
	<a:if test="${j.count ne x}">,</a:if>
</a:forEach>

]