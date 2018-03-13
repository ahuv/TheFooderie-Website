<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" 
  AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="Slides" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpmainContent" Runat="Server">

    <asp:Label ID="Label1" runat="server"></asp:Label>

      <span class="auto-style5">
      <br />
      Welcome to the Fooderie!</span><br class="auto-style4" />
      <br class="auto-style4" />
      <p>
        <span class="auto-style4">We provide you with a great collection of healthy recipes
        </span>
        <br class="auto-style4" />
        <span class="auto-style4">and tips and tricks to keep your cooking clean and the results delicious!</span></p>
      <p class="auto-style1">
        <a href="createAccount.aspx"> <span class="pagelink">Create an account</span></a><span class="auto-style3"> with us to join a community of people who love healthy deliciousness!</span></p>
    <p class="auto-style1">
        <a href="Contribute.aspx">Add a suggestion </a></p>
      <p class="auto-style1">
        <a href="Admin/AdminTables.aspx">View user tables</a> </p>
      <br />

  <div class="content">

	<div class="slideshow-container">

		<div class="mySlides fade">
  			<div class="numbertext"></div>
  			<img src="App_Themes/Slides/cookies.jpg" style="width:100%"/>
  			<div class="text"></div>
		</div>

		<div class="mySlides fade">
 			 <div class="numbertext"></div>
 			 <img src="App_Themes/Slides/chickensalad.jpg" style="width:100%"/>
 			 <div class="text"></div>
		</div>

		<div class="mySlides fade">
  			<div class="numbertext"></div>
 			<img src="App_Themes/Slides/smoothies.jpg" style="width:100%"/>
  			<div class="text"></div>
		</div>

		<div class="mySlides fade">
  			<div class="numbertext"></div>
  			<img src="App_Themes/Slides/salmon.jpg" style="width:100%"/>
 			<div class="text"></div>
		</div>

		<div class="mySlides fade">
 			<div class="numbertext"></div>
  			<img src="App_Themes/Slides/pancakes.jpg" style="width:100%"/>
  			<div class="text"></div>
		</div>

		<div class="mySlides fade">
 			<div class="numbertext"></div>
  			<img src="App_Themes/Slides/bananas.jpg"  style="width:100%"/>
  			<div class="text"></div>
		</div>

		<div class="mySlides fade">
  			<div class="numbertext"></div>
  			<img src="App_Themes/Slides/veggies.jpg"  style="width:100%"/>
  			<div class="text"></div>
		</div>

	</div>
<br />

	<div style="text-align:center">
		

		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span>
		<span class="dot"></span>
		<span class="dot"></span>
		<span class="dot"></span>
		<br/><br/>
	</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 3000); // Change image every 3 seconds
}
</script>


 
</div>

  
</asp:Content>

