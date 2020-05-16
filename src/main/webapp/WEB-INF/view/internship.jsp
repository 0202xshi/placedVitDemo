<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:svg="http://www.w3.org/2000/svg">

<%@ include file = "header.jsp" %>
<%@ include file = "siteHeader.jsp" %>

    <main id="main">
      <div class="hero-section inner-page">
        <div class="wave">
          
          <svg:svg width="1920px" height="265px" viewBox="0 0 1920 265">
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
                  <h1 data-aos="fade-up" data-aos-delay="">Internship Offers</h1>
                  <p class="mb-5" data-aos="fade-up"  data-aos-delay="100">Let the Internship BEGIN!</p>  
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>

      

      <div class="site-section pb-0">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-4 mr-auto">
              <h2 class="mb-4">Superdream Offers</h2>
              <p class="mb-4">These are offers whose CTC range from 12 lakh and above per annum. Total number of student this year placed in Superdream are 68 which is 100% of the students who received PPO.</p>
              <p><a href="/showuserInternshipSuperDream">Check List</a></p>
            </div>
            <div class="col-md-6" data-aos="fade-left">
              <img src="/static/img/undraw_super.svg" alt="Image" class="img-fluid">
            </div>
          </div>
        </div>
      </div> <!-- .site-section -->

      <div class="site-section">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-4 ml-auto order-2">
              <h2 class="mb-4">Dream Offers</h2>
              <p class="mb-4">These are offers whose CTC range from 6 lakh and above per annum. Total number of student this year placed in Dream are 0 which is 0% of the students who received PPO.</p>
              <p><a href="/showuserInternshipDream">Check List</a></p>
            </div>
            <div class="col-md-6" data-aos="fade-right">
              <img src="/static/img/undraw_dream.svg" alt="Image" class="img-fluid">
            </div>
          </div>
        </div>
      </div>
      <div class="site-section pb-0">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-4 mr-auto">
              <h2 class="mb-4">Regular Offers</h2>
              <p class="mb-4">These are offers whose CTC range from below 6 lakh per annum. Total number of student this year placed in Regular are 0 which is 0% of the students who received PPO.</p>
              <p><a href="/showuserInternshipRegular">Check List</a></p>
            </div>
            <div class="col-md-6" data-aos="fade-left">
              <img src="/static/img/undraw_regular.svg" alt="Image" class="img-fluid">
            </div>
          </div>
        </div>
      </div>
    </main>
    <br><br>
<%@ include file = "siteFooter.jsp" %>