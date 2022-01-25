<!--===========Start Modal Add experience ==============-->
<div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay">
    <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl mt-140 px-3 rounded-xl shadow-xl text-gray-800">
        <div class="flex items-center justify-between space-x-2 font-semibold text-zinc-900 text-2xl">
            <div class="flex items-center mt-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                <span class="text-theme-color relative inline-block ">
                    <i class="lni lni-list"></i>
                </span>
                <span class="tracking-wide ">Add experience</span>
            </div>
            <a href="#" class="flex justify-between mt-2 p-1 text-sm text-theme-color duration-15 border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white close-modal" aria-label="Edit">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                </svg>
            </a>
        </div>
        <div class="mt-2 text-sm text-left">
            <form method="post" action="/profile/add-experience">
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input name="experience-title" type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Title: Ex Software Engineer" />
                </div>
                <div class="lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <select name="job-type" class="w-full px-4 py-3 border bg-gray-300 rounded-lg hover:border-ensias-red">
                        <option value="" class="text-gray-300">Employment type</option>
                        <option value="Full-time">Full-time</option>
                        <option value="Part-time">Part-time</option>
                        <option value="Freelance">Freelance</option>
                        <option value="Contract">Contract</option>
                        <option value="Internship">Internship</option>
                        <option value="Apprenticeship">Apprenticeship</option>
                        <option value="Seasonal">Seasonal</option>
                    </select>
                </div>
                <div class=" lg:w-2/2 mt-5  mb-3 lg:mb-2 mx-1">
                    <input name="company-name" type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Company name" />
                </div>
                <div class=" lg:w-2/2 mt-5 mb-3 lg:mb-2 mx-1">
                    <input name="company-location" type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Rabat, Morocco" />
                </div>
                <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1 flex items-center">
                    <input name="still-working" value="now" type='checkbox' class=" mr-3 px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" />
                    <label class="text-gray-600 font-light text-sm">I'm currently working in this role</label>
                </div>
                <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                    <label class="text-gray-600 font-light text-sm">Start date</label>
                    <input name="start-date" type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                </div>
                <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                    <label class="text-gray-600 font-light text-sm">End date</label>
                    <input name="end-date" type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                </div>
                <div class=" lg:w-2/2 mt-5 mb-3 lg:mb-2 mx-1">
                    <textarea name="experience-description" class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" rows="4" placeholder="Description"></textarea>
                </div>
                <button type="submit" class="w-full p-3 text-sm font-light text-white bg-theme-color rounded-lg shadow-md hover:bg-ensias-red mb-3">Submit</button>
            </form>
        </div>
    </div>
</div>
<!--===========End Modal Add experience ==============-->

<!--===========Start Modal delete experience ==============-->
<div class="bg-black bg-opacity-70 absolute inset-0 hidden justify-center items-center overlay">
    <div class="bg-gray-200 text-center max-w-sm max-h-lg py-2 px-3 rounded-xl shadow-xl text-gray-800" >
        <div class="justify-center items-center">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 -m-1 flex items-center text-red-500 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" class="w-11 h-11 flex items-center text-red-500 mx-auto" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd"></path>
            </svg>
            <h4 class="text-lg font-bold">Are you sure?</h4>
        </div>
        <div class="mt-2 text-sm">
            <p>
                Do you really want to delete it? This process
                cannot be undone
            </p>
        </div>
        <div class="mt-3 flex justify-center space-x-3">
            <button class="px-3 py-1 rounded hover:bg-ensias-red hover:text-white border-2 border-gray-300 close-modal">
                Cancel
            </button>
            <button class="px-3 py-1 bg-red-800 text-gray-200 hover:bg-ensias-red rounded">
                Delete
            </button>
        </div>
    </div>
</div>
<!--===========End Modal delete experience ==============-->

<!--===========Start Modal Add education ==============-->
<div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay">
    <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl mt-140 px-3 rounded-xl shadow-xl text-gray-800">
        <div class="flex items-center justify-between space-x-2 font-semibold text-zinc-900 text-2xl">
            <div class="flex items-center mt-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <span class="text-theme-color relative inline-block ">
                        <i class="lni lni-graduation"></i>
                    </span>
                <span class="tracking-wide ">Add education</span>
            </div>
            <a href="#" class="flex justify-between mt-2 p-1 text-sm text-theme-color duration-15 border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white close-modal" aria-label="Edit">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                </svg>
            </a>
        </div>
        <div class="mt-2 text-sm text-left">
            <form action="">
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="School name" />
                </div>
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Degree: Ex Engineering" />
                </div>
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Field of study: Software Engineering" />
                </div>
                <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                    <label class="text-gray-600 font-light text-sm">Start date</label>
                    <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" />
                </div>
                <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                    <label class="text-gray-600 font-light text-sm">End date (or expected)</label>
                    <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" />
                </div>
                <div class=" lg:w-2/2 mt-5 mb-3 lg:mb-2 mx-1">
                        <textarea class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" rows="4" placeholder="Description"></textarea>
                </div>
                <button type="submit" class="w-full p-3 text-sm font-light text-white bg-theme-color rounded-lg shadow-md hover:bg-ensias-red mb-3">Save</button>
            </form>
        </div>
    </div>
</div>
<!--===========End Modal Add education ==============-->

<!--===========Start Modal delete education ==============-->
<div class="bg-black bg-opacity-70 absolute inset-0 hidden justify-center items-center overlay">
    <div class="bg-gray-200 text-center max-w-sm max-h-lg py-2 px-3 rounded-xl shadow-xl text-gray-800" >
        <div class="justify-center items-center">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 -m-1 flex items-center text-red-500 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" class="w-11 h-11 flex items-center text-red-500 mx-auto" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd"></path>
            </svg>
            <h4 class="text-lg font-bold">Are you sure?</h4>
        </div>
        <div class="mt-2 text-sm">
            <p>
                Do you really want to delete it? This process
                cannot be undone
            </p>
        </div>
        <div class="mt-3 flex justify-center space-x-3">
            <button class="px-3 py-1 rounded hover:bg-ensias-red hover:text-white border-2 border-gray-300 close-modal">
                Cancel
            </button>
            <button class="px-3 py-1 bg-red-800 text-gray-200 hover:bg-ensias-red rounded">
                Delete
            </button>
        </div>
    </div>
</div>
<!--===========End Modal delete education ==============-->

<!--===========Start Modal Add Certification ==============-->
<div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay">
    <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl mt-140 px-3 rounded-xl shadow-xl text-gray-800">
        <div class="flex items-center justify-between space-x-2 font-semibold text-zinc-900 text-2xl">
            <div class="flex items-center mt-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <span class="text-theme-color relative inline-block ">
                        <img src="assets/img/certificate_icon.svg" class="h-8 w-8 " alt="">
                    </span>
                <span class="tracking-wide ">Add certification</span>
            </div>
            <a href="#"
               class="flex justify-between mt-2 p-1 text-sm text-theme-color duration-15 border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white close-modal"
               aria-label="Edit">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                </svg>
            </a>
        </div>
        <div class="mt-2 text-sm text-left">
            <form action="">
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Name: Ex Microsoft certified network associate security" />
                </div>
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Issuing organization: Ex Microsoft" />
                </div>

                <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1 flex items-center">
                    <input type='checkbox' class=" mr-3 px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" />
                    <label class="text-gray-600 font-light text-sm">This credential does not expire</label>
                </div>
                <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                    <label class="text-gray-600 font-light text-sm">Issue date</label>
                    <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                </div>
                <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                    <label class="text-gray-600 font-light text-sm">Expiration date</label>
                    <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                </div>
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Credential date" />
                </div>
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='url' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Credential URL" />
                </div>
                <button type="submit" class="w-full p-3 text-sm font-light text-white bg-theme-color rounded-lg shadow-md hover:bg-ensias-red mb-3">Submit</button>
            </form>
        </div>
    </div>
</div>
<!--===========End Modal Add Certification ==============-->

<!--===========Start Modal delete Certification ==============-->
<div class="bg-black bg-opacity-70 absolute inset-0 hidden justify-center items-center overlay">
    <div class="bg-gray-200 text-center max-w-sm max-h-lg py-2 px-3 rounded-xl shadow-xl text-gray-800" >
        <div class="justify-center items-center">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 -m-1 flex items-center text-red-500 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" class="w-11 h-11 flex items-center text-red-500 mx-auto" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd"></path>
            </svg>
            <h4 class="text-lg font-bold">Are you sure?</h4>
        </div>
        <div class="mt-2 text-sm">
            <p>
                Do you really want to delete it? This process
                cannot be undone
            </p>
        </div>
        <div class="mt-3 flex justify-center space-x-3">
            <button class="px-3 py-1 rounded hover:bg-ensias-red hover:text-white border-2 border-gray-300 close-modal">
                Cancel
            </button>
            <button class="px-3 py-1 bg-red-800 text-gray-200 hover:bg-ensias-red rounded">
                Delete
            </button>
        </div>
    </div>
</div>
<!--===========End Modal delete Certification ==============-->

<!--===========Start Modal Add Language ==============-->
<div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay ">
    <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl mt-140 px-3 rounded-xl shadow-xl text-gray-800">
        <div class="flex items-center justify-between space-x-2 font-semibold text-zinc-900 text-2xl">
            <div class="flex items-center mt-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                <span class="text-theme-color relative inline-block ">
                    <img src="assets/img/language_icon.svg" class="h-7 w-7 " alt="">
                </span>
                <span class="tracking-wide ">Add Language</span>
            </div>
            <a href="#" class="flex justify-between mt-2 p-1 text-sm text-theme-color duration-15 border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white close-modal" aria-label="Edit">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                </svg>
            </a>
        </div>
        <div class="mt-2 text-sm text-left">
            <form action="">
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Language name" />
                </div>
                <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                    <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Level (Advanced,Intermediate or Beginner)" />
                </div>
                <button type="submit" class="w-full p-3 text-sm font-light text-white bg-theme-color rounded-lg shadow-md hover:bg-ensias-red mb-3">Add</button>
            </form>
        </div>
    </div>
</div>
<!--===========End Modal Add Language ==============-->

<!--===========Start Modal delete Language ==============-->
<div class="bg-black bg-opacity-70 absolute inset-0 hidden justify-center items-center overlay">
    <div class="bg-gray-200 text-center max-w-sm max-h-lg py-2 px-3 rounded-xl shadow-xl text-gray-800" >
        <div class="justify-center items-center">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 -m-1 flex items-center text-red-500 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" class="w-11 h-11 flex items-center text-red-500 mx-auto" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd"></path>
            </svg>
            <h4 class="text-lg font-bold">Are you sure?</h4>
        </div>
        <div class="mt-2 text-sm">
            <p>
                Do you really want to delete it? This process
                cannot be undone
            </p>
        </div>
        <div class="mt-3 flex justify-center space-x-3">
            <button class="px-3 py-1 rounded hover:bg-ensias-red hover:text-white border-2 border-gray-300 close-modal">
                Cancel
            </button>
            <button class="px-3 py-1 bg-red-800 text-gray-200 hover:bg-ensias-red rounded">
                Delete
            </button>
        </div>
    </div>
</div>
<!--===========End Modal delete Language ==============-->