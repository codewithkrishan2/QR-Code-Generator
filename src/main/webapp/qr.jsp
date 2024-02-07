<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>QR CODE GENERATOR</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body class="bg-gradient-to-r from-indigo-300">

        <div class="flex flex-col items-center justify-center h-screen">
            <h1>Please Fill out this form to create QR code</h1>
            <form action="/qr" method="post">
                
                <label for="firstName" class="text-sm font-medium leading-6 text-gray-900">First Name</label>
                <input type="text" name="firstName" id="firstName" class=" w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"> <br>
                
                <label for="lastName" class="text-sm font-medium leading-6 text-gray-900">Last Name</label>
                <input type="text" name="lastName" id="lastName" class=" w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"><br>
                
                <label for="email" class="text-sm font-medium leading-6 text-gray-900">Email</label>
                <input type="email" name="email" id="email" class=" w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"><br>
                
                <label for="city" class="text-sm font-medium leading-6 text-gray-900">City</label>
                <input type="text" name="city" id="city" class=" w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"> <br>
                
                <label for="mobile" class="text-sm font-medium leading-6 text-gray-900">Mobile</label>
                <input type="text" name="mobile" id="mobile" class=" w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"> <br>
                
                <input type="submit" value="Generate QR" class="bg-indigo-600 text-white font-bold py-2 px-4 rounded-md mt-2"  />

            </form>
        </div>
        
    </body>

    </html>