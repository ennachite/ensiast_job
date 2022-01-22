<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/taglibs.jsp" />
<!--====== NAVBAR PART START ======-->
<div class="navbar-area bg-white">
    <div class="container relative">
        <div class="row items-center">
            <div class="w-full">
                <nav class="flex items-center justify-between pt-2 navbar navbar-expand-lg">
                    <a href="<c:url value="/profile" />" class="navbar-brand mr-5">
                        <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="Logo" />
                    </a>

                    <div class="flex justify-center flex-1 lg:mr-32">
                        <div class="relative w-full max-w-xl mr-6 focus-within:text-ensias-red">
                            <div class="absolute inset-y-0 flex items-center pl-2">
                                <svg class="w-4 h-4" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd"></path>
                                </svg>
                            </div>
                            <input class="w-full pl-8 pr-2 h-8 text-sm text-gray-800 placeholder-gray-300 bg-gray-100 border-0 rounded-md focus:placeholder-gray-300 focus:bg-white" type="text" placeholder="Search for profiles" aria-label="Search" />
                        </div>
                    </div>
                    <div class="flex items-center justify-center">
                        <c:if test="${ sessionScope.role.equals('STUDENT') }">
                            <a href="#">
                                <img class=" mx-3 object-cover w-8 h-8" src="${pageContext.request.contextPath}/assets/img/favourite.jpg" style=" width: 30px; height: 30px; object-fit: cover" alt="Fav offer"/>
                            </a>
                        </c:if>
                        <div class="absolute left-0 z-20 hidden w-full  py-1 duration-300 bg-white lg:w-auto collapse navbar-collapse lg:block top-full mt-full lg:static lg:bg-transparent shadow lg:shadow-none" id="navbarOne">
                            <div class="relative">
                                <input type="checkbox" id="sortbox" class="hidden absolute" />
                                <label for="sortbox" class="flex items-center cursor-pointer justify-center">
                                    <img class="inline rounded-full mr-3 object-cover w-8 h-8" src="${pageContext.request.contextPath}/assets/img/person.jpg" style="width: 30px; height: 30px; object-fit: cover"  alt="pdp"/>
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                                    </svg>
                                </label>

                                <div id="sortboxmenu" class="absolute m-1 right-1 top-full min-w-max shadow rounded opacity-0 bg-gray border border-red-200 transition delay-75 ease-in-out z-10">
                                    <ul class="block text-right absolute right-0 w-56 mt-2 text-gray-600 bg-white border border-red-200 rounded-md shadow-md">
                                        <li class="flex">
                                            <a class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-ensias-red hover:text-white" href="<c:url value="/profile" />">
                                                <svg class="w-4 h-4 mr-3" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                                                </svg>
                                                <span>Profile</span>
                                            </a>
                                        </li>

                                        <li class="flex">
                                            <c:choose>
                                                <c:when test="${ sessionScope.role.equals('STUDENT') }">
                                                    <a class="inline-flex items-center w-full px-1 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-ensias-red hover:text-white" href="#">
                                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                                                        </svg>
                                                        <span>Candidacies</span>
                                                    </a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a class="inline-flex items-center w-full px-1 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-ensias-red hover:text-white" href="<c:url value="/add-offer" />">
                                                        <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 mr-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 13h6m-3-3v6m5 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"></path>
                                                        </svg>
                                                        <span>New offer</span>
                                                    </a>
                                                </c:otherwise>
                                            </c:choose>
                                        </li>

                                        <li class="flex">
                                            <a class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-ensias-red hover:text-white" href="<c:url value="/modify-password" />">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 mr-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 7a2 2 0 012 2m4 0a6 6 0 01-7.743 5.743L11 17H9v2H7v2H4a1 1 0 01-1-1v-2.586a1 1 0 01.293-.707l5.964-5.964A6 6 0 1121 9z"></path>
                                                </svg>
                                                <span>Password</span>
                                            </a>
                                        </li>

                                        <li class="flex">
                                            <a class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-ensias-red hover:text-white" href="<c:url value="/logout" />">
                                                <svg class="w-4 h-4 mr-3" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1"></path>
                                                </svg>
                                                <span>Log out</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- navbar collapse -->
                    <!-- nav-item ml-5 lg:ml-11 -->
                </nav>
                <!-- navbar -->
            </div>
        </div>
        <!-- row -->
    </div>
    <!-- container -->
</div>
<!--====== NAVBAR PART ENDS ======-->
