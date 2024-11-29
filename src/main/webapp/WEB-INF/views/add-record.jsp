<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>ShippingRecords | Add Record</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white">
<div class="flex flex-col gap-6 w-[90%] mx-auto my-10">
  <div class="flex justify-between items-end">
    <div>
      <h1 class="text-3xl font-bold">Add New Record</h1>
      <p class="text-sm">Fill out the details to create a new shipping record</p>
    </div>
    <div>
      <a href="/">
        <button
                class="ring-4 border border-gray-600 ring-gray-700 bg-gray-700 px-3 py-1 rounded-md">
          Back to Records
        </button>
      </a>
    </div>
  </div>

  <form action="/add" method="POST" class="bg-gray-800 p-6 rounded-lg shadow-lg space-y-6">
    <div class="grid grid-cols-2 gap-6">
      <!-- Client ID -->
      <div>
        <label for="clientID" class="block text-sm text-gray-400">Client ID</label>
        <input type="text" id="clientID" name="clientID" required
               class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
      </div>

      <!-- Client Name -->
      <div>
        <label for="clientName" class="block text-sm text-gray-400">Client Name</label>
        <input type="text" id="clientName" name="clientName" required
               class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
      </div>

      <!-- Client Phone -->
      <div>
        <label for="clientPhone" class="block text-sm text-gray-400">Client Phone</label>
        <input type="text" id="clientPhone" name="clientPhone" required
               class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
      </div>

      <!-- Item Shipped -->
      <div>
        <label for="itemShipped" class="block text-sm text-gray-400">Item Shipped</label>
        <input type="text" id="itemShipped" name="itemShipped" required
               class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
      </div>

      <!-- Ship Date -->
      <div>
        <label for="shipDate" class="block text-sm text-gray-400">Ship Date</label>
        <input type="date" id="shipDate" name="shipDate" required
               class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
      </div>

      <!-- Date Received -->
      <div>
        <label for="dateReceived" class="block text-sm text-gray-400">Date Received</label>
        <input type="date" id="dateReceived" name="dateReceived" required
               class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
      </div>
    </div>

    <!-- Submit Button -->
    <div class="flex justify-end">
      <button type="submit"
              class="bg-emerald-600 hover:bg-emerald-700 px-4 py-2 rounded-md text-white font-medium transition-all">
        Save Record
      </button>
    </div>
  </form>
</div>
</body>
</html>
