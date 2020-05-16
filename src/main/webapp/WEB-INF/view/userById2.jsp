<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:svg="http://www.w3.org/2000/svg">

<%@ include file = "header.jsp" %>
<%@ include file = "siteHeader.jsp" %>


      <c:choose>
      <c:when test="${mode=='USERS_BY_ID'}">
      
      
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
		<c:forEach var="user" items="${users}">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-12">
              <div class="row justify-content-center">
                <div class="col-md-7 text-center hero-text">
                  <h1 >${fn:toUpperCase(fn:substring(user.name, 0, 1))}${fn:toLowerCase(fn:substring(user.name, 1,fn:length(user.name)))}</h1>
                  <p  ><b>${user.ctc} lakhs</b></p>
                  <p class="mb-5" ><b>${fn:toUpperCase(fn:substring(user.company, 0, 1))}${fn:toLowerCase(fn:substring(user.company, 1,fn:length(user.company)))}<br>
                  ${fn:toUpperCase(fn:substring(user.typepack, 0, 1))}${fn:toLowerCase(fn:substring(user.typepack, 1,fn:length(user.typepack)))}
                 ${fn:toUpperCase(fn:substring(user.selection, 0, 1))}${fn:toLowerCase(fn:substring(user.selection, 1,fn:length(user.selection)))}
               </b></p> 
                 
                </div>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
        
      </div>
      
      
      <div class="site-section pb-0">
        <div class="container">
          <div class="row align-items-center">
              <div class="col-md-12 mr-auto">
                  <table class="table table-striped">
                      
                      <tbody>
                       <c:forEach var="user" items="${users}">
                        <tr>
                          <th scope="row">CGPA</th>
                          <td>${user.cgpa}</td>
                        </tr>
                        <tr>
                          <th scope="row">BRANCH</th>
                          <td> ${user.branch}</td>
                        </tr>
                        <tr>
                          <th scope="row">COMPANY NAME</th>
                          <td>${user.company}</td>
                        </tr>
                        <tr>
                          <th scope="row">POSITION</th>
                          <td>${user.positonoff }</td>
                        </tr>
                        <tr>
                          <th scope="row">CTC</th>
                          <td>${user.ctc}</td>
                        </tr>
                        <tr>
                          <th scope="row">INHAND</th>
                          <td>${user.inhand}</td>
                        </tr>
                        <tr>
                          <th scope="row">PROJECTS</th>
                          <td  >${user.projects}</td>
                        </tr>
                        
                        <tr>
                          <th scope="row"></th>
                          <td></td>
                        </tr>
                        
                        <tr>
                          <th scope="row">BOOKS AND COURSES RECOMMENDATION</th>
                          <td >${user.booksncourse}</td>
                        </tr>
                        <tr>
                          <th  scope="row">INTERVIEW EXPERIENCE</th>
                          <td >${user.intexp}</td>
                        </tr>
                        <tr>
                          <th scope="row">PREPARING STRATEGIES</th>
                          <td > ${user.prpstr}</td>
                        </tr>
                          <tr>
                          <th  scope="row">MISTAKES WHICH CAN BE AVOIDED</th>
                          <td >${user.commonmis}</td>
                        </tr>
                          <tr>
                          <th   scope="row">ADVICE FOR JUNIORS</th>
                          <td >${user.advice}</td>
                        </tr>
                          <tr>
                          <th  scope="row"></th>
                          <td ></td>
                        </tr>
                          <tr>
                          <th scope="row">GITHUB USERNAME</th>
                          <td>${user.gitprof}</td>
                        </tr>
                          <tr>
                          <th scope="row">LINKEDIN USERNAME</th>
                          <td> ${user.linkprof}</td>
                        </tr>
                         <tr>
                          <th scope="row">EMAIL</th>
                          <td>${user.personalemail}</td>
                        </tr>
                         <tr>
                          <th scope="row"></th>
                          <td></td>
                        
                        </tr>
                        </c:forEach>  
                      </tbody>
         
                    </table>
              </div>
                

            
          </div>
        </div>
      </div> </main></c:when></c:choose>
      <br><br><br><br><br><br>
<%@ include file = "siteFooter.jsp" %>