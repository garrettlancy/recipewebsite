<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="2: Models - Recipe Table View" />

<%@ include file="Common/header.jspf" %>

	<table>
	
	<tr class="odd">
		<td class="column" id="row-image"></td>
		<c:forEach var="recipe" items="${recipes}">
			<c:url var="recipeUrl" value="/recipeDetails">
				<c:param name="recipeId" value="${recipe.recipeId}" />
			</c:url>
			<c:url var="imageUrl" value="/img"></c:url>
			<td><a href="${recipeUrl}"><img class="imageTable" src="${imageUrl}/recipe${recipe.recipeId}.jpg"/></a></td>
		</c:forEach>
	</tr>
	
	<tr class="even">
		<td id="row-name">Name</td>
		<c:forEach var="recipe" items="${recipes}">
			<td class="column" id="row-data">
				<c:out value="${recipe.name}"/>
			</td>
		</c:forEach>
	</tr>
	<tr class="odd">
		<td id="row-name">Type</td>
		<c:forEach var="recipe" items="${recipes}">
			<td class="column" id="row-data">
				<c:out value="${recipe.recipeType}"/>
			</td>
		</c:forEach>
	</tr>
	<tr class="even">
		<td id="row-name">Cook Time</td>
		<c:forEach var="recipe" items="${recipes}">
			<td class="column" id="row-data">
				<c:out value="${recipe.cookTimeInMinutes} min"/>
			</td>
		</c:forEach>
	</tr>
	<tr class="odd">
		<td id="row-name">Ingredients</td>
		<c:forEach var="recipe" items="${recipes}">
			<td class="column" id="row-data">
				<c:out value="${recipe.ingredients.size()} ingredients"/>
			</td>
		</c:forEach>
	</tr>
	
	<tr class="even">
		<td id="row-name">Rating</td>
		<c:url var="imageUrl" value="/img"></c:url>
		<c:forEach var="recipe" items="${recipes}">
				<td class="column" id="row-data">
				<img src="${imageUrl}/<fmt:formatNumber value="${recipe.averageRating}" maxFractionDigits="0"/>-star.png" /></td>
		</c:forEach>
	</tr>
	
	</table>

       <!-- Use the request attribute "recipes" (List<Recipe>) -->
      <!--  <table>
       <tr>
      	 <th>Name</th>
      	 <th>id</th>
       </tr>
       
       /recipeDetails?recipeId={id}
       
       <c:forEach var="recipe" items="${recipes}">
       
       		<c:url var="recipeUrl" value="/recipeDetails">
       			<c:param name="recipeId" value="${recipe.recipeId}"></c:param>
       		</c:url>
       		
       			<tr>
       				<td><a href="${recipeUrl}"></a><c:out value="${recipe.name}" /></a></td>
       				<td><c:out value="${recipe.recipeId}" /></td>
       			</tr>
       		
       	</c:forEach>
       </table>
       -->

<%@ include file="Common/footer.jspf" %>