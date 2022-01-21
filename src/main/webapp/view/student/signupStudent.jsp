<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title>ENSIAST JOB: Sign Up For ENSIASTS</title>
</head>
<body>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp" />

<section id="signupStudent" class="login_area">
    <div class="bg-red-50 h-screen flex flex-col justify-center items-center">

        <!-- logo -->
        <div class=" flex w-96 ">
            <a href="<c:url value="/" />"><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="logo"></a>
        </div>

        <!-- Layout  -->
        <div class="bg-white w-96 shadow-xl rounded-xl lg:w-1/3 lg:rounded-l-lg mx-0 px-6 lg:mx-0 lg:px-4">

            <div class="text-3xl text-gray-700 py-4 text-center">Student Registration Form</div>
            <hr class="-mx-2">
            <form method="post" action="/signup-student">
                <div class="pt-3 pb-0 ">

                    <!-- ============ Start add picture ==============-->
                    <div class="mb-3 text-center">
                        <div class="mx-auto w-20 border rounded-full relative mb-4 shadow-inset">
                            <img id="image" class="object-cover w-full rounded-full" src="${pageContext.request.contextPath}/assets/img/student.svg" alt="student icon">
                        </div>
                    </div>
                    <!-- ============ End add picture ==============-->
                    <c:if  test="${ requestScope.error != null }">
                        <c:out value="${ requestScope.error }" />
                    </c:if>
                    <div class="lg:flex mb-1 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">First Name</label>
                                <input name="first-name" type='text' class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Last Name</label>
                                <input name="last-name" type='text' class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                    </div>

                    <div class="lg:flex mb-1 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Birthdate</label>
                                <input name="birthdate" type='date' class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Sex</label>
                                <select name="gender" class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red">
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="lg:flex mb-2 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">CIN</label>
                                <input name="cin" type='text' class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">CNE</label>
                                <input name="cne" type='text' class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                    </div>

                    <div class="lg:flex mb-2 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Phone number</label>
                                <input name="phone" type='tel' class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">City</label>
                                <input name="city" type='text' class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                    </div>

                    <div class="lg:flex mb-2 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Speciality</label>
                                <select name="specialty" class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red">
                                    <option value="IDSIT (IWIM)">IDSIT (IWIM)</option>
                                    <option value="GL">GL</option>
                                    <option value="BI&A (eMBI)">BI&A (eMBI)</option>
                                    <option value="SSI">SSI</option>
                                    <option value="SSE (ISEM)">SSE (ISEM)</option>
                                    <option value="2SCL (IeL)">2SCL (IeL)</option>
                                    <option value="2IA">2IA</option>
                                    <option value="IDF">IDF</option>
                                    <option value="GD">GD</option>
                                </select>
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Study year</label>
                                <select name="year-studies" class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red">
                                    <option value="1A">First Year</option>
                                    <option value="2A">Second Year</option>
                                    <option value="3A">Third Year</option>
                                    <option value="Alumni">Alumni</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="lg:flex mb-2 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Email</label>
                                <input name="email" type='email' class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Promo</label>
                                <input name="promo" type='number' min="1995" class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red" />
                            </div>
                        </div>
                    </div>

                    <div class=" mb-2 -mx-1 ">
                        <div class="lg:w-2/2  mb-3 lg:mb-2 mx-1">
                            <label class="text-gray-600 font-light" for="password">
                                Password
                            </label>
                            <div class="relative w-full">
                                <div class="absolute inset-y-0 right-0 flex items-center px-2">
                                    <input class="hidden js-password-toggle" id="toggle" type="checkbox" />
                                    <label class="hover:text-ensias-red rounded px-2 py-1 js-password-label" for="toggle">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21"></path>
                                        </svg>
                                    </label>
                                </div>
                                <input name="password" class="appearance-none w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red js-password" id="password" type="password" autocomplete="off" />
                            </div>

                        </div>
                    </div>

                </div>
                <div class="flex justify-center pt-4 pb-3">
                    <button type="submit" class="flex items-center bg-red-700 text-white rounded hover:bg-ensias-red px-6 py-2 focus:outline-none">
                        <span class="material-icons pr-1" style="font-size: 18px;">Register</span>
                    </button>
                </div>
            </form>
        </div>

        <!-- Footer -->
        <p class="pt-2">You already have an account ? <a href="<c:url value="/login" />" class="text-the font-medium hover:text-white hover:bg-ensias-red">Login</a></p>
    </div>
</section>

<!--====== Main js ======-->
<script src="assets/js/main.js"></script>

</body>

</html>