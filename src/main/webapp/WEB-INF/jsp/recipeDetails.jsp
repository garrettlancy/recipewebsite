<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="3: Detail Views" />

<%@include file="Common/header.jspf" %>

<div class="details">

<div class="info">
	<c:url var="imageUrl" value="/img"></c:url>
		<img class="details-image" src="${imageUrl}/recipe${recipe.recipeId}.jpg"/>
	<div class="text">
		
			<h3><c:out value="${recipe.name}"/></h3>
		<c:out value="${recipe.recipeType}"/>
		<div id="cooktime">
			<c:out value="Cook Time: ${recipe.cookTimeInMinutes} min"/>
		</div>
		<div id="description">
			<c:out value="${recipe.description}"/>
		</div>
	</div>
</div>

<div class="recipe-ingredients">
	<h3><c:out value="Ingredients"/></h3>
	<ul>
		<c:forEach var="ingredient" items="${recipe.ingredients}">
			<li><c:out value="${ingredient.quantity} ${ingredient.name}"/></li>
		
		</c:forEach>
	
	</ul>
</div>

<div class="recipe-preparation">
	<h3><c:out value="Preparation"/></h3>
	<ol>
		<c:forEach var="step" items="${recipe.preparationSteps}">
			<li><c:out value="${step}"/></li>
		
		</c:forEach>
	
	</ol>
</div>

</div>

<%@ include file="Common/footer.jspf" %>

