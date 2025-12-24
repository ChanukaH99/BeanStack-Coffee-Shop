<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BeanStack_Coffee_Shop.Views.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BeanStack - About Us</title>
<script src="https://cdn.tailwindcss.com"></script>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;700&display=swap" rel="stylesheet">


<style>
  body {
    font-family: 'Playfair Display', serif;
  }

  .heading-font {
      font-family: 'Playfair Display', serif;
      }
</style>

</head>
<body class="bg-gray-100 text-gray-800">

  <!-- Header Image -->
  <div class="relative h-[730px] bg-cover bg-center bg-no-repeat text-white text-center overflow-hidden" style="background-image: url('../Images/Hero1.png');">
   <div class="absolute inset-0 bg-black/40 z-0"></div>
   <nav class="relative z-10 w-full max-w-[1000px] mx-auto mt-5 flex flex-wrap lg:flex-nowrap justify-between items-center bg-white/10 px-4 sm:px-8 lg:px-12 py-4 rounded-2xl shadow-md">
     <div class="flex items-center w-full lg:w-auto justify-center lg:justify-start mb-4 lg:mb-0">
       <h2 class="text-4xl font-serif font-medium font-[Clicker_Script]">BeanStack</h2>
     </div>
     <div class="flex-1 flex justify-center w-full lg:w-auto mb-4 lg:mb-0 font-serif">
       <ul class="flex flex-col lg:flex-row space-y-2 lg:space-y-0 lg:space-x-10 text-lg font-medium">
         <li><a href="Dashbord.aspx" class="hover:text-blue-500">Home</a></li>
         <li><a href="Shop.aspx" class="hover:text-blue-500">Shop</a></li>
         <li><a href="AboutUs.aspx" class="hover:text-blue-500">About Us</a></li>
       </ul>
     </div>
     <div class="flex w-full lg:w-auto justify-center lg:justify-end space-x-4">
       <a href="#" class="text-white px-4 py-2 text-base rounded hover:border hover:border-blue-500 hover:shadow-md transition-all">Login</a>
       <a href="#" class="text-white px-4 py-2 text-base rounded hover:border hover:border-blue-500 hover:shadow-md transition-all">Register</a>
     </div>
   </nav>

 </div>


    <body class="bg-white text-gray-800 p-6">

  <!-- Section Title -->
  <div class="text-center mb-10">
    <h1 class="text-3xl font-playfair font-semibold text-[#6f3d1e] relative inline-block">
      About Us
      <!-- Decorative underline with diamonds -->
      <div class="flex justify-center items-center mt-2">
        <div class="w-2 h-2 bg-[#6f3d1e] rotate-45 mr-2"></div>
        <div class="w-16 h-[2px] bg-[#6f3d1e]"></div>
        <div class="w-2 h-2 bg-[#6f3d1e] rotate-45 ml-2"></div>
      </div>
    </h1>
  </div>

  <!-- Content Grid -->
  <div class="max-w-5xl mx-auto grid md:grid-cols-2 items-center gap-8 px-4">
    
    <!-- Left: Circular Image -->
    <div class="flex justify-start p-8">
      <div class="bg-gray-100 rounded-full p-6 w-100 h-64 flex items-center justify-center">
        <img src='../Images/coffeebeans.png' alt="Coffee Beans Cup" class="w-[600px] h-[480px] object-contain"/>
      </div>
    </div>

    <!-- Right: Text Content -->
    <div class="text-gray-700 text-base leading-relaxed space-y-4 justify-center p-3">
      <p>Welcome to BeanStack, your neighborhood coffee haven, producing high-quality coffees. 
          Founded with a passion for exceptional coffee and a warm, clean mindset, BeanStack is 
          more than just a coffee shop – it's a place to relax, meet, and recharge.</p>
      <p>Set in a stylish and inviting setting, we serve expertly crafted coffee from the finest beans.</p>
      <p>Whether you're in for a quiet moment, a cherished get-together with friends, or a productive work 
          session, BeanStack is designed to feel like your second home. With comfortable seating, soft music, 
          and the rich aroma of fresh coffee in the air, we invite you to sit back, sip slowly, and savor the 
          experience.</p>
    </div>

  </div>

  <div class="flex flex-col md:flex-row items-center gap-4 justify-center p-4">
    
    <!-- Oval-like Image using aspect ratio and rounded-full -->
    <div class="w-40 h-80 flex-shrink-0 overflow-hidden rounded-full border-4 border-gray-200">
      <img src='../Images/img1.jpg' alt="Coffee Oval" class="w-full h-full object-cover"/>
    </div>

    <!-- Image Grid -->
    <div class="grid grid-row-2 gap-2">
      <img src='../Images/img2.png' alt="Coffee 1" class="w-40 h-40 object-cover rounded-2xl shadow-md"/>
      <img src='../Images/img3.jpg' alt="Coffee 3" class="w-40 h-40 object-cover rounded-2xl shadow-md"/>
    </div>

    <!-- Squre Image -->
      <div class="Squre Squre-col gap-2">
       <img src='../Images/img4.jpg' alt="Coffee 2" class="w-40 h-80 object-cover rounded-2xl shadow-md"/>
      </div>

  </div>


  <!-- Footer -->
      <footer class="bg-[url('../Images/footer.png')] bg-cover bg-center bg-no-repeat text-white pt-16 pb-10 relative font-serif">
      
      <div class="absolute top-0 left-0 w-[1px] h-full bg-red-200"></div>
      <div class="absolute top-0 right-0 w-[1px] h-full bg-red-200"></div>

    
      <div class="absolute inset-0 bg-black/20 backdrop-blur-sm"></div>

      <div class="relative max-w-6xl mx-auto px-6 sm:px-10 grid grid-cols-1 md:grid-cols-3 gap-10">

       
        <div>
          <h3 class="text-3xl font-cursive mb-2">BeanStack</h3>
          <p class="text-sm text-gray-800 max-w-xs">
            BeanStack is your all-in-one digital barista—streamlining orders, inventory, and customer insights so you can focus on crafting the perfect brew and growing your coffee business.
          </p>
        </div>

     
        <div class="ml-0 md:ml-20 lg:ml-44">
          <h4 class="text-lg font-semibold mb-2 ">Quick Links</h4>
          <ul class="space-y-1 text-white  text-sm">
            <li><a href="Dashbord.aspx" class="hover:text-orange-300 transition">Home</a></li>
            <li><a href="AboutUs.aspx" class="hover:text-orange-300 transition">About</a></li>
            <li><a href="Shop.aspx" class="hover:text-orange-300 transition">Shop</a></li>
          </ul>
        </div>

        
        <div>
          <h4 class="text-lg font-semibold mb-2">Contact Card</h4>
          <ul class="space-y-2 text-white text-sm">
            <li><span class="mr-2">📍</span>123 Bean St. Coffee City</li>
            <li><span class="mr-2">📞</span>+1 (555) 123-4567</li>
            <li><span class="mr-2">✉️</span>hello@beanstack.app</li>
          </ul>
        </div>
          
      </div>
         <div class="relative text-center mt-10 text-sm text-white">
    © 2025 <span class="font-semibold">BeanStack</span>. All rights reserved.
</div>
   </footer>

</body>

</html>
