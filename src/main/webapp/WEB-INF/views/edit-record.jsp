<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Record</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white">
<div class="flex flex-col gap-6 w-[90%] mx-auto my-10">
    <div class="flex justify-between items-end">
        <div>
            <h1 class="text-3xl font-bold">Edit Existing Record</h1>
            <p class="text-sm">Update the details to modify a new shipping record</p>
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
    <form action="/edit" method="POST" class="bg-gray-800 p-6 rounded-lg shadow-lg space-y-6">
        <input type="hidden" name="clientID" value="${record.clientID}">
        <div class="grid grid-cols-2 gap-6">
            <div>
                <label for="clientName" class="block text-sm text-gray-400">Client Name</label>
                <input type="text" id="clientName" name="clientName" value="${record.clientName}" required
                       class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
            </div>
            <div>
                <label for="clientPhone" class="block text-sm text-gray-400">Client Phone</label>
                <input type="text" id="clientPhone" name="clientPhone" value="${record.clientPhone}" required
                       class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
            </div>
            <div>
                <label for="itemShipped" class="block text-sm text-gray-400">Item Shipped</label>
                <input type="text" id="itemShipped" name="itemShipped" value="${record.itemShipped}" required
                       class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
            </div>
            <div>
                <label for="shipDate" class="block text-sm text-gray-400">Ship Date</label>
                <input type="date" id="shipDate" name="shipDate" value="${record.shipDate}" required
                       class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
            </div>
            <div>
                <label for="dateReceived" class="block text-sm text-gray-400">Date Received</label>
                <input type="date" id="dateReceived" name="dateReceived" value="${record.dateReceived}" required
                       class="w-full mt-1 px-3 py-2 bg-gray-700 text-white rounded-md border border-gray-600 focus:outline-none focus:ring-2 focus:ring-emerald-500">
            </div>
        </div>
        <div class="flex justify-end">
            <button type="submit" class="bg-emerald-600 hover:bg-emerald-700 px-4 py-2 rounded-md text-white font-medium">
                Update Record
            </button>
        </div>
    </form>
</div>
</body>
</html>
