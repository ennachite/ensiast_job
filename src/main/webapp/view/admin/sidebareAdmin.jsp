<%--
  Created by IntelliJ IDEA.
  User: Soumya KADDOURI
  Date: 1/27/2022
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/taglibs.jsp" />
<body>
<%-- Side bare--%>
<div class="flex bg-gray-50 ">
<aside class=" z-20 w-64 overflow-y-auto bg-white md:block flex-shrink-0 h-screen">
    <div class="py-4 text-black ">
        <a href="<c:url value="/home-admin" />" class="navbar-brand mr-5 text-center">
            <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo" />
        </a>

        <ul class="mt-6">
            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                        <span class="absolute inset-y-0 left-0 w-1 bg-red-900 rounded-tr-lg rounded-br-lg"
                              aria-hidden="true"></span>
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 "
                   href="<c:url value="/home-admin"/>">
                    <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round"
                         stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path
                                d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6">
                        </path>
                    </svg>
                    <span class="ml-4">Dashboard</span>
                </a>
            </li>

            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 "
                   href="<c:url value="/companies-list"/>">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" ></path>
                    </svg>
                    <span class="ml-4">Companies list</span>
                </a>
            </li>
            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150  "
                   href="<c:url value="/students-list"/>">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path d="M12 14l9-5-9-5-9 5 9 5z" ></path>
                        <path
                                d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z" ></path>
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M12 14l9-5-9-5-9 5 9 5zm0 0l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14zm-4 6v-7.5l4-2.222" ></path>
                    </svg>
                    <span class="ml-4">Students list </span>
                </a>
            </li>
            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150  "
                   href="<c:url value="/admins-list"/>">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" ></path>
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" ></path>
                    </svg>
                    <span class="ml-4">Admins list</span>
                </a>
            </li>

            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 "
                   href="<c:url value="/profile" />">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H5a2 2 0 00-2 2v9a2 2 0 002 2h14a2 2 0 002-2V8a2 2 0 00-2-2h-5m-4 0V5a2 2 0 114 0v1m-4 0a2 2 0 104 0m-5 8a2 2 0 100-4 2 2 0 000 4zm0 0c1.306 0 2.417.835 2.83 2M9 14a3.001 3.001 0 00-2.83 2M15 11h3m-3 4h2" >
                        </path>
                    </svg>
                    <span class="ml-4">Profile</span>
                </a>
            </li>
            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 "
                   href="<c:url value="/add-admin" />">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z" ></path>
                    </svg>
                    <span class="ml-4">Add admin</span>
                </a>
            </li>
            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 "
                   href="<c:url value="/not-approved-accounts" />">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M20.618 5.984A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016zM12 9v2m0 4h.01" ></path>
                    </svg>
                    <span class="ml-4">Not approved Accounts</span>
                </a>
            </li>
            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 "
                   href="<c:url value="/not-approved-offers" />">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M8 7v8a2 2 0 002 2h6M8 7V5a2 2 0 012-2h4.586a1 1 0 01.707.293l4.414 4.414a1 1 0 01.293.707V15a2 2 0 01-2 2h-2M8 7H6a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2v-2" ></path>
                    </svg>
                    <span class="ml-4">Not approved Offers</span>
                </a>
            </li>
            <li class="relative px-6 py-3 hover:bg-red-800 hover:text-white">
                <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150  "
                   href="<c:url value="/logout" />">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" ></path>
                    </svg>
                    <span class="ml-4">Log out</span>
                </a>
            </li>
        </ul>
    </div>
</aside>
<div class="w-full">
    <header class="z-10 py-4 bg-white shadow-md ">
        <div class="container flex items-center justify-between h-full px-6 mx-auto text-red-600 ">
            <!-- Search input -->
            <div class="flex justify-center flex-1 lg:mr-32">
                <div class="relative w-full max-w-xl mr-6 focus-within:text-ensias-red">
                    <div class="absolute inset-y-0 flex items-center pl-2">
                        <svg class="w-4 h-4" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd"
                                  d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                                  clip-rule="evenodd"></path>
                        </svg>
                    </div>
                    <input
                            class="w-full pl-8 pr-2 h-8 text-sm text-gray-800 placeholder-gray-300 bg-gray-100 border-0 rounded-md focus:placeholder-gray-300 focus:bg-white"
                            type="text" placeholder="Search for profiles" aria-label="Search" />
                </div>
            </div>
        </div>
    </header>