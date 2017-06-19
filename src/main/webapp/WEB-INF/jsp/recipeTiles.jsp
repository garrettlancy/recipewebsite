<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="2: Models - Recipe Tile View" />

<%@include file="Common/header.jspf" %>

       <!-- Use the request attribute "recipes" (List<Recipe>) -->
 	<div class="tile">
 	
 		<c:forEach var="recipe" items="${recipes}">
 			<div class="box">
 				<c:url var="recipeUrl" value="/recipeDetails">
					<c:param name="recipeId" value="${recipe.recipeId}" />
				</c:url>
				<c:url var="imageUrl" value="/img"></c:url>
				<a href="${recipeUrl}"><img class="imageTile" src="${imageUrl}/recipe${recipe.recipeId}.jpg"/></a>
				<div class="recipeDetails">
					<div class="boldName">
						<c:out value="${recipe.name}"/>
					</div>
					<div class="rating">
						<img src="${imageUrl}/<fmt:formatNumber value="${recipe.averageRating}" maxFractionDigits="0"/>-star.png" />
					</div>
					<div class="ingredients">
						<c:out value="${recipe.ingredients.size()} ingredients"/>
					</div>
				</div>
 			</div>
 		</c:forEach>
 		
 		
 	
 	
 	
 	
 	
 	
 	
 	</div>
       

<%@include file="Common/footer.jspf" %>