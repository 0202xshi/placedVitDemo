<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:svg="http://www.w3.org/2000/svg">

<head>
  <meta charset="utf-8">
  <title>Blog - SoftLand</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <link href="static/css/img/favicon.png" rel="icon">
  <link href="static/css/img/apple-touch-icon.png" rel="apple-touch-icon">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,700|Roboto:300,400,700&display=swap" rel="stylesheet">

  <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link href="static/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="static/vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
 
  <link href="static/vendor/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <link href="static/css/style.css" rel="stylesheet">

</head>

<body>
    
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icofont-close js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <header class="site-navbar js-sticky-header site-navbar-target" role="banner" >

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-6 col-lg-2">
            <h1 class="mb-0 site-logo"><a href="index.html" class="mb-0">PlacedVit</a></h1>
          </div>

          <div class="col-12 col-md-10 d-none d-lg-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

             <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="index.html" class="nav-link">Home</a></li>
                <li><a href="ppo.html" class="nav-link">PPO</a></li>
                <li class=""><a href="placement.html" class="nav-link">Placement</a></li>
                <li><a href="internship.html" class="nav-link">Internship</a></li>

                <li class="has-children active">
                  <a href="blog.html" class="nav-link">Blog</a>
                  <ul class="dropdown ">
                    <li><a href="blog.html" class="nav-link">Advice from peers</a></li>
                    <li><a href="UserDetails.html" class="nav-link">Books and Courses</a></li>
                    <li><a href="UserDetails.html" class="nav-link">Off-Campus Applications</a></li>
                    <li><a href="blog.html" class="nav-link">Placement Rules</a></li>
                    <li><a href="list.html" class="nav-link">Complete List</a></li>

                  </ul>
                </li>
                <li><a href="contact.html" class="nav-link">Contact</a></li>
                <li><a href="form.html" class="nav-link">Form</a></li>
              </ul>
            </nav>
          </div>


          <div class="col-6 d-inline-block d-lg-none ml-md-0 py-3" style="position: relative; top: 3px;">

            <a href="#" class="burger site-menu-toggle js-menu-toggle" data-toggle="collapse" data-target="#main-navbar">
              <span></span>
            </a>
          </div>

        </div>
      </div>
      
    </header>


    <main id="main">
      <div class="hero-section inner-page">
        <div class="wave">
          
          <svg width="1920px" height="265px" viewBox="0 0 1920 265" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g id="Apple-TV" transform="translate(0.000000, -402.000000)" fill="#FFFFFF">
                      <path d="M0,439.134243 C175.04074,464.89273 327.944386,477.771974 458.710937,477.771974 C654.860765,477.771974 870.645295,442.632362 1205.9828,410.192501 C1429.54114,388.565926 1667.54687,411.092417 1920,477.771974 L1920,667 L1017.15166,667 L0,667 L0,439.134243 Z" id="Path"></path>
                  </g>
              </g>
          </svg>

        </div>
     

        <div class="container">
          <div class="row align-items-center">
            <div class="col-12">
              <div class="row justify-content-center">
                <div class="col-md-7 text-center hero-text">
                  <h1 data-aos="fade-up" data-aos-delay="">Advices</h1>
                  <p class="mb-5" data-aos="fade-up"  data-aos-delay="100">Learning from others failures is better than failing.</p>  
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>

        
      <div class="site-section">
        <div class="container">
         <c:choose>
	<c:when test="${mode=='MODE_HOME'}">
        <c:forEach var="user" items="${users}">
          <div class="row mb-5">
            <div class="col-md-4">
              <div class="post-entry">
                <a href="blog-single.html" class="d-block mb-4">
                  <img src="static/img/img_1.jpg" alt="Image" class="img-fluid">
                </a>
                <div class="post-text">
                  <span class="post-meta">December 13, 2019 &bullet; By <a href="#">Admin</a></span>  
                  <h3><a href="#">Chrome now alerts you when someone steals your password</a></h3>
                  <p>${user}</p>
                  <p><a href="#" class="readmore">Read more</a></p>
                </div>
              </div>
            </div>
            

          </div>
          </c:forEach>
           </c:when>
      </c:choose>

          <div class="row">
            <div class="col-12 text-center">
              <span class="p-3 active text-primary">1</span>
              <a href="#" class="p-3">2</a>
              <a href="#" class="p-3">3</a>
              <a href="#" class="p-3">4</a>
            </div>
          </div>
        </div>
      </div>
     
      

      

    </main>
<%@ include file = "siteFooter.jsp" %>