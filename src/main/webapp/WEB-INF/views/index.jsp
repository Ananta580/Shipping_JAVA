<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ShippingRecords | Records</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const showSuccessMessage = ${showSuccessMessage ? "true" : "false"};
            const successMessageDiv = document.getElementById("successMessage");
            const message = successMessageDiv.dataset.message;

            if (showSuccessMessage === true) {
                successMessageDiv.style.display = "block"; // Show the message
                successMessageDiv.querySelector("p").textContent = message; // Set the message
            }
        });
        setTimeout(() => {
            document.querySelector('.fade-out').style.display = 'none';
        }, 2000);
    </script>
</head>
<body class="bg-gray-900 text-white">
<div class="flex gap-6 w-[90%] mx-auto my-10 flex-col">
    <div class="flex justify-between items-end">
        <div>
            <h1 class="text-3xl font-bold">Shipping Record Clients</h1>
            <p class="text-sm">List of all clients and their shipping records</p>
        </div>
        <div>
            <a href="/add">
                <button
                        class="bg-emerald-600 hover:bg-emerald-700 px-4 py-2 rounded-md text-white font-medium">
                    Add New Record
                </button>
            </a>
        </div>
    </div>

    <table class="text-left border-collapse bg-gray-800 rounded-lg overflow-hidden shadow-lg">
        <thead class="bg-gray-700 text-sm uppercase text-gray-400">
        <tr>
            <th class="px-6 py-4">ClientID</th>
            <th class="px-6 py-4">Name</th>
            <th class="px-6 py-4">Contact</th>
            <th class="px-6 py-4">Item Shipped</th>
            <th class="px-6 py-4">Date Shipped</th>
            <th class="px-6 py-4">Date Received</th>
            <th class="px-6 py-4 text-right">Actions</th>
        </tr>
        </thead>
        <tbody class="divide-y divide-gray-700 text-gray-300">
        <c:forEach var="record" items="${records}">
            <tr>
                <td class="px-6 py-4">${record.clientID}</td>
                <td class="px-6 py-4">${record.clientName}</td>
                <td class="px-6 py-4">${record.clientPhone}</td>
                <td class="px-6 py-4">${record.itemShipped}</td>
                <td class="px-6 py-4">${record.shipDate}</td>
                <td class="px-6 py-4">${record.dateReceived}</td>
                <td class="px-6 py-4 flex space-x-3 justify-end">
                    <!-- Edit Button -->
                    <a href="/edit/${record.clientID}">
                        <button
                                class="text-xs border border-gray-600 bg-gray-700 px-3 py-1 rounded-md hover:bg-gray-600">
                            Edit
                        </button>
                    </a>
                    <!-- Delete Button -->
                    <form action="/delete/${record.clientID}" method="POST"
                          onsubmit="return confirm('Are you sure you want to delete this record?');">
                        <button
                                type="submit"
                                class="text-xs border border-red-600 bg-gray-700 px-3 py-1 rounded-md hover:bg-red-600">
                            Delete
                        </button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Success Message -->
<div id="successMessage"
     class="fade-out fixed bg-opacity-10 min-w-96 bg-emerald-400 border-2 rounded border-emerald-600 p-4 py-2 flex flex-col gap-1 bottom-10 right-20"
     style="display: none;"
     data-message="${message}">
    <h2 class="text-lg font-semibold">Successful</h2>
    <p class="text-sm"></p>
</div>
</body>
</html>
