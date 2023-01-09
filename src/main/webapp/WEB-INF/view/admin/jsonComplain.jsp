<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions"%>
[
<a:set value="${complainlist}" var="l"></a:set>
<a:set value="${b:length(l)}" var="x"></a:set>

<a:forEach items="${l}" var="i" varStatus="j">
	{
		"complainId" : ${i.id} ,
		"complainName" : "${i.complainSubject}",
		"complainDescription" : "${i.complainDescription}",
		"complainDate" : "${i.complainDate}",
		"loginId" : "${i.loginvo.loginId }" 		
	}
	<a:if test="${j.count ne x}">,</a:if>
</a:forEach>

]