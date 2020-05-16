<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:svg="http://www.w3.org/2000/svg">
<%@ include file="header.jsp"%>
<%@ include file="siteHeader.jsp"%>
<div class="hero-section inner-page">
	<div class="wave">

		<svg:svg width="1920px" height="265px" viewBox="0 0 1920 265"
			version="1.1" xmlns="http://www.w3.org/2000/svg"
			xmlns:xlink="http://www.w3.org/1999/xlink">
			<svg:g id="Page-1" stroke="none" stroke-width="1" fill="none"
				fill-rule="evenodd">
				<svg:g id="Apple-TV" transform="translate(0.000000, -402.000000)"
					fill="#FFFFFF">
					<svg:path
						d="M0,439.134243 C175.04074,464.89273 327.944386,477.771974 458.710937,477.771974 C654.860765,477.771974 870.645295,442.632362 1205.9828,410.192501 C1429.54114,388.565926 1667.54687,411.092417 1920,477.771974 L1920,667 L1017.15166,667 L0,667 L0,439.134243 Z"
						id="Path"></svg:path>
				</svg:g>
			</svg:g>
		</svg:svg>

	</div>

	<div class="container">
		<div class="row align-items-center">
			<div class="col-12">
				<div class="row justify-content-center">
					<div class="col-md-7 text-center hero-text">
						<h1 data-aos="fade-up">Regular Intern</h1>
						<p class="mb-5" data-aos="fade-up">8 - 10</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>



<div class="site-section pb-0">


<c:choose>
	<c:when test="${mode=='ALL_USERS'}">
	<div class="container">
		<div class="row">

			<c:forEach var="user" items="${users}">
				<div class="col-12 col-sm-6 col-md-4 col-lg-3">
					<div class="our-team">
						<div class="picture">
							<img class="img-fluid"
								src="https://picsum.photos/130/130?image=1027">
						</div>
						<div class="team-content">
							<h3 class="name">${user.name}</h3>
							<h4 class="title">${user.company}</h4>
						</div>
						<a href="/${user.id}" class="stretched-link"></a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</c:when>
</c:choose>
</div>
</div>
<br>
<br>
<%@ include file="siteFooter.jsp"%>