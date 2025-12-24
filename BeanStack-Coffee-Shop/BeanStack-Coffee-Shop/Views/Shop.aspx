<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="BeanStack_Coffee_Shop.Views.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>BeanStack - Coffee Menu</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Clicker+Script&display=swap');
    </style>
</head>
<body class="bg-white text-gray-800 m-0 p-0 h-full font-sans">

    <!-- Hero Section with Navigation Inside -->
    <div class="relative bg-cover bg-center h-[480px] rounded-b-xl" style="background-image: url('../Images/Hero1.png');">

        <!-- Navigation Bar -->
        <nav class="relative z-10 w-full max-w-[1000px] mx-auto top-6 flex flex-wrap lg:flex-nowrap justify-between items-center bg-white/10 px-4 sm:px-8 lg:px-12 py-4 rounded-2xl shadow-md backdrop-blur-md">
            <div class="flex items-center w-full lg:w-auto justify-center lg:justify-start mb-4 lg:mb-0">
                <h2 class="text-4xl font-serif font-medium text-white" style="font-family: 'Clicker Script', cursive;">BeanStack</h2>
            </div>
            <div class="flex-1 flex justify-center w-full lg:w-auto mb-4 lg:mb-0 font-serif">
                <ul class="flex flex-col lg:flex-row space-y-2 lg:space-y-0 lg:space-x-10 text-lg font-medium text-white">
                    <li><a href="Dashbord.aspx" class="hover:text-blue-300">Home</a></li>
                    <li><a href="Shop.aspx" class="hover:text-blue-300">Shop</a></li>
                    <li><a href="AboutUs.aspx" class="hover:text-blue-300">About Us</a></li>
                </ul>
            </div>
            <div class="flex w-full lg:w-auto justify-center lg:justify-end space-x-4">
                <a href="Login.aspx" class="text-white px-4 py-2 text-base rounded hover:border hover:border-blue-400 hover:shadow-md transition-all">Login</a>
                <a href="Registration.aspx" class="text-white px-4 py-2 text-base rounded hover:border hover:border-blue-400 hover:shadow-md transition-all">Register</a>
            </div>
        </nav>

        <!-- Hero Content -->
        <div class="absolute inset-0 bg-black bg-opacity-50 flex flex-col items-center justify-center text-center px-4">
            <h2 class="text-white text-3xl font-semibold mb-6">Explore Our Signature Coffee Blends</h2>
            <div class="flex w-full max-w-md justify-center">
                <input type="text" placeholder="Search your coffee..."
                    class="px-4 py-2 w-full rounded-l-lg focus:outline-none text-black" />
                <button class="bg-[#8b3e2e] hover:bg-[#6e2c20] text-white px-4 py-2 rounded-r-lg">🔍</button>
            </div>
        </div>
    </div>

    <!-- Product Grid -->
    <form id="form1" runat="server">
        <div class="max-w-7xl mx-auto px-4 py-10 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8">
            <!-- Example Card (Repeatable) -->
            <div class="bg-gray-100 rounded-xl shadow-md p-5 text-center transition-transform hover:scale-105">
                <img src="../Images/Americano.jpg" alt="Cappuccino" class="w-24 h-32 mx-auto mb-4 object-cover" />
                <h4 class="text-lg font-medium mb-2">Americno</h4>
                <p class="text-sm text-gray-600 mb-2">Espresso shots topped with hot water create a light layer of crema</p>
                <span class="text-black font-semibold block mb-2">Rs:430.00</span>
                <button type="button" onclick="addToCart('Americno', 450,'../Images/Cappuccino1.jpg')" class="bg-[#8b3e2e] hover:bg-[#6e2c20] text-white text-sm px-4 py-1 rounded-lg transition-all">
                    Add Cart
                </button>
            </div>

             <div class="bg-gray-100 rounded-xl shadow-md p-5 text-center transition-transform hover:scale-105">
                 <img src="../Images/Cappuccino2.jpg" alt="Cappuccino" class="w-24 h-32 mx-auto mb-4 object-cover" />
                 <h4 class="text-lg font-medium mb-2">Cappuccino</h4>
                 <p class="text-sm text-gray-600 mb-2">Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam</p>
                 <span class="text-black font-semibold block mb-2">Rs:480.00</span>
                 <button type="button" onclick="addToCart('Cappuccino', 480,'../Images/Cappuccino2.jpg')" class="bg-[#8b3e2e] hover:bg-[#6e2c20] text-white text-sm px-4 py-1 rounded-lg transition-all">
                     Add Cart

                 </button>

             </div>
            <div class="bg-gray-100 rounded-xl shadow-md p-5 text-center transition-transform hover:scale-105">
                <img src="../Images/FlatWhite.jpg" alt="Cappuccino" class="w-24 h-32 mx-auto mb-4 object-cover" />
                <h4 class="text-lg font-medium mb-2">Flat White</h4>
                <p class="text-sm text-gray-600 mb-2">Smooth ristretto shots of espresso get the perfect amount of steamed whole milk</p>
                <span class="text-black font-semibold block mb-2">Rs:500.00</span>
                <button type="button" onclick="addToCart('Flat White', 500,'../Images/Cappuccino3.jpg')" class="bg-[#8b3e2e] hover:bg-[#6e2c20] text-white text-sm px-4 py-1 rounded-lg transition-all">
                    Add Cart

                </button>

            </div>
        </div>

         <!-- ORDER SUMMARY SECTION -->
        <div class="max-w-7xl mx-auto mt-12 p-6 bg-gray-50 shadow-md rounded-xl">
            <h2 class="text-3xl font-bold text-center mb-6">Order Details</h2>
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">

                <!-- CART ITEMS -->
                <div class="lg:col-span-2 space-y-4" id="cartItems"></div>

                <!-- DATE PICKER -->
                <div>
                    <h3 class="text-lg font-medium mb-3 text-green-700">Choose date</h3>
                    <input type="date" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-green-600" />
                </div>
            </div>

            <!-- TOTAL + BUTTONS -->
            <hr class="my-6 border-gray-400" />
            <div class="flex flex-col sm:flex-row sm:justify-between items-center text-xl font-bold mb-6 px-4">
                <div>Total Amount</div>
                <div><span id="totalQty">0</span> &nbsp; Rs: <span id="totalPrice">0</span></div>
            </div>

            <div class="flex justify-center gap-8">
                <button type="button" onclick="clearCart()" class="bg-green-700 text-white px-8 py-2 rounded hover:bg-green-800">Clear Order</button>
                <button type="button" onclick="confirmOrder()" class="bg-green-700 text-white px-8 py-2 rounded hover:bg-green-800">Order Confirm</button>
            </div>
        </div>

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
            <li><a href="Dashboard.aspx" class="hover:text-orange-300 transition">Home</a></li>
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
    </form>

     <!-- SCRIPTS -->
    <script>
        const cart = {};

        function addToCart(name, price, image) {
            if (cart[name]) {
                cart[name].qty++;
            } else {
                cart[name] = { price: price, qty: 1, image: image };
            }
            renderCart();
        }

        function updateQty(name, delta) {
            cart[name].qty += delta;
            if (cart[name].qty <= 0) delete cart[name];
            renderCart();
        }

        function clearCart() {
            Object.keys(cart).forEach(k => delete cart[k]);
            renderCart();
        }

        function renderCart() {
            const container = document.getElementById("cartItems");
            container.innerHTML = "";
            let totalQty = 0, totalPrice = 0;

            for (let item in cart) {
                const { price, qty, image } = cart[item];
                totalQty += qty;
                totalPrice += price * qty;

                container.innerHTML += `
                <div class="flex items-center justify-between bg-white p-4 rounded-lg shadow-sm">
                    <div class="flex items-center gap-4">
                        <img src="${image}" class="w-16 h-16 rounded" />
                        <span class="text-lg font-medium">${item}</span>
                    </div>
                    <div class="flex items-center gap-2">
                        <button onclick="updateQty('${item}', -1)" class="text-xl px-2">➖</button>
                        <span>${qty}</span>
                        <button onclick="updateQty('${item}', 1)" class="text-xl px-2">➕</button>
                    </div>
                    <div class="text-right font-semibold">RS:${price * qty}</div>
                </div>`;
            }

            document.getElementById("totalQty").textContent = totalQty;
            document.getElementById("totalPrice").textContent = totalPrice;
        }

        function confirmOrder() {
            alert("Order Confirmed!");
            clearCart();
        }
    </script>




</body>
</html>
