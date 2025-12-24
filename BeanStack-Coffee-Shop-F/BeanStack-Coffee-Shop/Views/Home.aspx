<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BeanStack_Coffee_Shop.Views.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
     <script src="https://cdn.tailwindcss.com"></script>

   
</head>
<body class="m-0 p-0 h-full font-sans">
    <form id="form1" runat="server">
         <!-- Hero section -->
       <div class="relative h-[730px] bg-cover bg-center bg-no-repeat text-white text-center overflow-hidden" style="background-image: url('../Images/Hero1.png');">
          <div class="absolute inset-0 bg-black/40 z-0"></div>
          <nav class="relative z-10 w-full max-w-[1000px] mx-auto mt-5 flex flex-wrap lg:flex-nowrap justify-between items-center bg-white/10 px-4 sm:px-8 lg:px-12 py-4 rounded-2xl shadow-md">
            <div class="flex items-center w-full lg:w-auto justify-center lg:justify-start mb-4 lg:mb-0">
              <h2 class="text-4xl font-serif font-medium font-[Clicker_Script]">BeanStack</h2>
            </div>
            <div class="flex-1 flex justify-center w-full lg:w-auto mb-4 lg:mb-0 font-serif">
              <ul class="flex flex-col lg:flex-row space-y-2 lg:space-y-0 lg:space-x-10 text-lg font-medium">
                <li><a href="#" class="hover:text-blue-500">Home</a></li>
                <li><a href="#" class="hover:text-blue-500">Shop</a></li>
                <li><a href="#" class="hover:text-blue-500">About Us</a></li>
              </ul>
            </div>
            <div class="flex w-full lg:w-auto justify-center lg:justify-end space-x-4">
              <a href="#" class="text-white px-4 py-2 text-base rounded hover:border hover:border-blue-500 hover:shadow-md transition-all">Login</a>
              <a href="#" class="text-white px-4 py-2 text-base rounded hover:border hover:border-blue-500 hover:shadow-md transition-all">Register</a>
            </div>
          </nav>

          <div class="relative z-10 mt-28 text-left pl-6 sm:pl-16 lg:pl-32 font-serif">
            <h1 class="text-5xl font-bold leading-snug mb-2 pt-12">Warm Moments<br />Brewed with Love</h1>
            <p class="text-xl mb-8">From our family to your cup.</p>
            <a href="#" class="bg-[#D84315] hover:bg-[#bf360c] text-white px-8 py-3 rounded-full text-lg transition ml-0">Shop Now</a>
          </div>
        </div>
  <!-- Menu section -->
 <div class="text-center py-12 px-5 bg-[#EFEBE7] h-[500px] relative overflow-hidden">
   <div class="flex items-center justify-center mb-8">
  <div class="flex-grow border-t-2 border-gray-400"></div>
  <h2 class="text-3xl font-bold mx-4 whitespace-nowrap font-serif">Our Coffee Menu</h2>
  <div class="flex-grow border-t-2 border-gray-400"></div>
</div>

   <!--Card viwes -->
    <div id="menuSlider" class="flex transition-transform duration-700 ease-in-out w-[750px] mx-auto pr-20px font-serif">
       
        <div class="flex-shrink-0 w-[250px] h-[300px] bg-white rounded-xl shadow-lg overflow-hidden mx-5">
            <img src="../Images/Cappuccino3.jpg" alt="Cappuccino" class="w-[250px] h-[250px] object-cover" />
            <div class="flex justify-between px-4 py-2 text-lg font-medium">
                <span>Cappuccino</span>
                <span>Rp:500</span>
            </div>
        </div>

        <div class="flex-shrink-0 w-[250px] h-[300px] bg-white rounded-xl shadow-lg overflow-hidden mx-5">
            <img src="../Images/Cappuccino1.jpg" alt="Cappuccino" class="w-[250px] h-[250px] object-cover" />
            <div class="flex justify-between px-4 py-2 text-lg font-medium">
                <span>Cappuccino</span>
                <span>Rp:500</span>
            </div>
        </div>

        <div class="flex-shrink-0 w-[250px] h-[300px] bg-white rounded-xl shadow-lg overflow-hidden mx-5">
            <img src="../Images/Cappuccino2.jpg" alt="Cappuccino" class="w-[250px] h-[250px] object-cover" />
            <div class="flex justify-between px-4 py-2 text-lg font-medium">
                <span>Cappuccino</span>
                <span>Rp:500</span>
            </div>
        </div>
        <div class="flex-shrink-0 w-[250px] h-[300px] bg-white rounded-xl shadow-lg overflow-hidden mx-5">
        <img src="../Images/Mocha.jpg" alt="Mocha" class="w-[250px] h-[250px] object-cover" />
        <div class="flex justify-between px-4 py-2 text-lg font-medium">
            <span>Mocha</span>
            <span>Rp:600</span>
        </div>
    </div>

    <div class="flex-shrink-0 w-[250px] h-[300px] bg-white rounded-xl shadow-lg overflow-hidden mx-5">
        <img src="../Images/Americano.jpg" alt="Americano" class="w-[250px] h-[250px] object-cover" />
        <div class="flex justify-between px-4 py-2 text-lg font-medium">
            <span>Americano</span>
            <span>Rp:400</span>
        </div>
    </div>

    <div class="flex-shrink-0 w-[250px] h-[300px] bg-white rounded-xl shadow-lg overflow-hidden mx-5">
        <img src="../Images/FlatWhite.jpg" alt="Flat White" class="w-[250px] h-[250px] object-cover" />
        <div class="flex justify-between px-4 py-2 text-lg font-medium">
            <span>Flat White</span>
            <span>Rp:550</span>
        </div>
    </div>
    </div>

    <div id="dots" class="mt-6">
<span class="inline-block h-2.5 w-2.5 mx-1 rounded-full bg-[#D84315] transition-colors dot"></span>
    <span class="inline-block h-2.5 w-2.5 mx-1 rounded-full bg-gray-400 transition-colors dot"></span>
    <span class="inline-block h-2.5 w-2.5 mx-1 rounded-full bg-gray-400 transition-colors dot"></span>
    <span class="inline-block h-2.5 w-2.5 mx-1 rounded-full bg-gray-400 transition-colors dot"></span>
    <span class="inline-block h-2.5 w-2.5 mx-1 rounded-full bg-gray-400 transition-colors dot"></span>
    <span class="inline-block h-2.5 w-2.5 mx-1 rounded-full bg-gray-400 transition-colors dot"></span>
    </div>
</div>
         <!--js part in Dots -->
        <script>
            const slider = document.getElementById('menuSlider');
            const dots = document.querySelectorAll('.dot');
            let currentIndex = 0;
            const totalSlides = dots.length;

            function goToSlide(index) {
                slider.style.transform = `translateX(-${index * 250}px)`;
                dots.forEach((dot, idx) => {
                    if (idx === index) {
                        dot.classList.remove('bg-gray-400');
                        dot.classList.add('bg-[#D84315]');
                    } else {
                        dot.classList.remove('bg-[#D84315]');
                        dot.classList.add('bg-gray-400');
                    }
                });
            }

            function nextSlide() {
                currentIndex = (currentIndex + 1) % totalSlides;
                goToSlide(currentIndex);
            }

            setInterval(nextSlide, 3000);

        </script>


         <!-- Best Selles Items part -->

        <div class="text-center py-12 px-5 bg-[#FFFFFF] relative overflow-hidden font-serif">

          <h2 class="text-3xl font-bold font-serif text-left md:pl-48 pl-6">
            Our Best Sellers
          </h2>

    <!-- Menu views -->
        <div class="flex flex-wrap justify-center gap-8 pt-10">
   
            <div class="w-full sm:w-[300px] bg-white rounded-xl shadow-lg overflow-hidden">
              <img src="../Images/Cappuccino3.jpg" alt="Cappuccino" class="w-full h-[250px] object-cover" />
              <div class="px-4 py-2">
                <div class="flex justify-between text-lg font-medium">
                  <span>Cappuccino</span>
                  <span>Rp:500</span>
                </div>
                <p class="text-sm text-gray-600 mt-1">
                  The perfect balance of espresso, steamed milk and foam.
                </p>
                <div class="flex justify-end">
                  <button class="mt-3 w-full bg-orange-600 text-white py-2 rounded-2xl hover:bg-orange-700 transition">
                    Add to Cart
                  </button>
                </div>
              </div>
            </div>

  
            <div class="w-full sm:w-[300px] bg-white rounded-xl shadow-lg overflow-hidden">
              <img src="../Images/Cappuccino1.jpg" alt="Cappuccino" class="w-full h-[250px] object-cover" />
              <div class="px-4 py-2">
                <div class="flex justify-between text-lg font-medium">
                  <span>Cappuccino</span>
                  <span>Rp:500</span>
                </div>
                <p class="text-sm text-gray-600 mt-1">
                  The perfect balance of espresso, steamed milk and foam.
                </p>
                <div class="flex justify-end">
                  <button class="mt-3 w-full bg-orange-600 text-white py-2 rounded-2xl hover:bg-orange-700 transition">
                    Add to Cart
                  </button>
                </div>
              </div>
            </div>

    
            <div class="w-full sm:w-[300px] bg-white rounded-xl shadow-lg overflow-hidden">
              <img src="../Images/Cappuccino2.jpg" alt="Cappuccino" class="w-full h-[250px] object-cover" />
              <div class="px-4 py-2">
                <div class="flex justify-between text-lg font-medium">
                  <span>Cappuccino</span>
                  <span>Rp:500</span>
                </div>
                <p class="text-sm text-gray-600 mt-1">
                  The perfect balance of espresso, steamed milk and foam.
                </p>
                <div class="flex justify-end">
                  <button class="mt-3 w-full bg-orange-600 text-white py-2 rounded-2xl hover:bg-orange-700 transition">
                    Add to Cart
                  </button>
                </div>
              </div>
            </div>
    
         </div>
        </div>

        <!--Subscribe part -->
        <section class="bg-[url('../Images/Subscribe.jpg')] bg-cover bg-center bg-no-repeat py-16 px-4 relative font-serif">
              <div class="absolute top-0 left-0 w-[1px] h-full bg-red-200"></div>
              <div class="absolute top-0 right-0 w-[1px] h-full bg-red-200"></div>

              <div class="max-w-xl mx-auto text-center">
              <h2 class="text-3xl md:text-4xl font-bold mb-3 text-gray-900 whitespace-nowrap">
                  Subscribe to get the Latest News
                </h2>
                 <p class="text-gray-600 mb-6">
                  Don’t miss out on our latest news, updates, tips and special offers
                </p>

                <div class="flex justify-center">
                  <form class="flex w-full max-w-xl">
                    <input
                      type="email"
                      placeholder="Enter your mail"
                      class="flex-grow py-3 px-5 rounded-l-md bg-[#FFF9F1] text-gray-700 placeholder-gray-400 focus:outline-none"
                    />
                    <button
                      type="submit"
                      class="bg-orange-400 hover:bg-orange-500 text-white font-semibold py-3 px-6 rounded-r-md transition"
                    >
                      Subscribe
                    </button>
                  </form>
                </div>
              </div>
            </section>

        <!-- footer part -->
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
                <li><a href="#" class="hover:text-orange-300 transition">Home</a></li>
                <li><a href="#" class="hover:text-orange-300 transition">About</a></li>
                <li><a href="#" class="hover:text-orange-300 transition">Shop</a></li>
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
      
    </form>
</body>
</html>
