<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:svg="http://www.w3.org/2000/svg">

<%@ include file = "header.jsp" %>
<%@ include file = "siteHeader.jsp" %>

<body>
    
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <header class="site-navbar js-sticky-header site-navbar-target" role="banner" >

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-6 col-lg-2">
            <h1 class="mb-0 site-logo"><a href="index.html" class="mb-0">Placed VIT</a></h1>
          </div>

          <div class="col-12 col-md-10 d-none d-lg-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="index.html" class="nav-link">Home</a></li>
                <li class="active"><a href="ppo.html" class="nav-link">PPO</a></li>
                <li><a href="placement.html" class="nav-link">Placement</a></li>
                <li><a href="contact.html" class="nav-link">Internship</a></li>

                <li  class="has-children ">
                  <a href="blog.html" class="nav-link">Blog</a>
                  <ul class="dropdown">
                    <li><a href="advice.html" class="nav-link">Advice from peers</a></li>
                    <li><a href="blog-single.html" class="nav-link">Books and Courses</a></li>
                    <li><a href="blog-single.html" class="nav-link">Off-Campus Applications</a></li>
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
          
          <svg:svg width="1920px" height="265px" viewBox="0 0 1920 265" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              <svg:g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <svg:g id="Apple-TV" transform="translate(0.000000, -402.000000)" fill="#FFFFFF">
                      <svg:path d="M0,439.134243 C175.04074,464.89273 327.944386,477.771974 458.710937,477.771974 C654.860765,477.771974 870.645295,442.632362 1205.9828,410.192501 C1429.54114,388.565926 1667.54687,411.092417 1920,477.771974 L1920,667 L1017.15166,667 L0,667 L0,439.134243 Z" id="Path"></svg:path>
                  </svg:g>
              </svg:g>
          </svg:svg>

        </div>

        <div class="container">
          <div class="row align-items-center">
            <div class="col-12">
              <div class="row justify-content-center">
                <div class="col-md-7 text-center hero-text">
                  <h1 data-aos="fade-up" data-aos-delay="">Mr. N. Divesh</h1>
                  <p class="mb-5" data-aos="fade-up"  data-aos-delay="100">Microsoft</p>  
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
      <c:choose>
      <c:when test="${mode=='USERS_BY_ID'}">
      <div class="site-section pb-0">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-4 mr-auto">
            
                <h3 class="mb-4">Name:</h3>
                

                <h3 class="mb-4">CGPA:-</h3>
                <h3 class="mb-4">Branch:-</h3>
                <hr><br>
                <h3 class="mb-4">Company Name:</h3>
                <h3 class="mb-4">Position:-</h3>
                
                
                
                <h3 class="mb-4">CTC:-</h3>
                <h3 class="mb-4">Inhand:-</h3>
                <hr><br>
                <h3 class="mb-4">Projects:-</h3><br>
                <h3 class="mb-4">Books and Courses Recommendation:-</h3><br>
                
                <hr><br>
                <h3 class="mb-4">Interview Experience:-</h3><br><br>
                <h3 class="mb-4">Preparing Strategies:-</h3><br><br>
                <h3 class="mb-4">Mistakes which can be avoided:-</h3><br><br>
                <h3 class="mb-4">Advice for Juniors:-</h3><br><br><hr>
                <h3 class="mb-4">Github Username:-</h3>
                <h3 class="mb-4">Linkedin Username:-</h3>
                <h3 class="mb-4">Email:-</h3><hr>
				
              </div>
            <div class="col-md-6" data-aos="fade-left">
            <c:forEach var="user" items="${users}">
            ${user.name}
            ${user.ctc}
            ${user.cgpa}<br>
            ${user.branch}<br><br>
            ${user.company}<br><br>
            ${user.positonoff }<br><br>
            ${user.ctc}<br><br>
            ${user.inhand}<br><br>
            ${user.projects}<br><br>
            ${user.booksncourse}<br><br>
            ${user.intexp}<br><br>
            ${user.prpstr}<br><br>
            ${user.commonmis}<br><br>
            ${user.advice}<br><br>
            ${user.gitprof}<br><br>
            ${user.linkprof}<br><br>
            ${user.personalemail}<br><br>
              </c:forEach>
            </div>
          
          </div>
        </div>
      </div> 
     
      </c:when>
      </c:choose>
      <br><br>
     <br><br>
<%@ include file = "siteFooter.jsp" %>