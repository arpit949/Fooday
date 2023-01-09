<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="b" uri="http://java.sun.com/jsp/jstl/functions"%>
[
<a:set value="${statelist}" var="l"></a:set>
<a:set value="${b:length(l)}" var="x"></a:set>

<a:forEach items="${l}" var="i" varStatus="j">
	{
		"stateId" : ${i.id} ,
		"stateName" : "${i.stateName}",
		"stateDescription" : "${i.stateDescription}"		
	}
	<a:if test="${j.count ne x}">,</a:if>
</a:forEach>

]