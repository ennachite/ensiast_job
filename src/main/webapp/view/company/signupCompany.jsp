<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp"/>

<!-- Title -->
<title>ENSIAST JOB: Sign Up For Company</title>
</head>
<body>

<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp"/>

<!--====== PRELOADER PART ENDS ======-->
<section id="signupCompany" class="login_area">
    <div class="bg-red-50 h-screen flex flex-col justify-center items-center">

        <!-- logo -->
        <div class=" flex w-96 ">
            <a href="<c:url value="/" />"><img src="assets/img/logo.png" alt="logo"></a>
        </div>

        <!-- Layout  -->
        <div class="bg-white w-96 shadow-xl rounded-xl lg:w-1/3 lg:rounded-l-lg mx-0 px-6 lg:mx-0 lg:px-4">

            <div class="text-3xl text-gray-700 py-4 text-center">Company Registration Form</div>
            <hr class="-mx-2">
            <form method="post" action="/signup-company">
                <div class="pt-3 pb-1 ">

                    <!-- ============ Start add picture ==============-->
                    <div class="text-center mx-auto w-20 border rounded-full relative mb-5 shadow-inset">
                        <img id="image" class="object-cover w-full rounded-full" src="assets/img/company.svg"
                             alt="company">
                    </div>
                    <!-- ============ End add picture ==============-->
                    <c:if test="${ requestScope.error != null }">
                        <c:out value="${ requestScope.error }"/>
                    </c:if>
                    <div class="lg:flex mb-3 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Company Name</label>
                                <input name="company-name" type='text'
                                       class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                       placeholder="Enter company name"/>
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Company CEO</label>
                                <input name="ceo-name" type='text'
                                       class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                       placeholder="Enter CEO name"/>
                            </div>
                        </div>
                    </div>

                    <div class="lg:flex mb-3 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Tax Identification Number</label>
                                <input name="company-tif" type='text'
                                       class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                       placeholder="Enter TIN"/>
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">City</label>
                                <input name="city" type='text'
                                       class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                       placeholder="Enter company location"/>
                            </div>
                        </div>
                    </div>

                    <div class="lg:flex mb-3 -mx-1">
                        <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Number of employees</label>
                                <input name="company-size" type='number'
                                       class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                       placeholder="Enter number of employees"/>
                            </div>
                        </div>
                        <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Founded</label>
                                <input name="founded" type='number'
                                       class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                       placeholder="Enter date of foundation"/>
                            </div>
                        </div>
                    </div>

                    <div class="lg:flex mb-32-mx-1">
                        <div class="lg:w-1/2 mb-5 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Phone number</label>
                                <input name="fix" type='tel'
                                       class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                       placeholder="Enter the phone number"/>
                            </div>
                        </div>
                        <div class="lg:w-1/2 mb-5 lg:mb-2 mx-1">
                            <div class="px-1">
                                <label class="text-gray-600 font-light">Email address</label>
                                <input name="email" type='email'
                                       class="w-full mb-2 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                       placeholder="Enter email address"/>
                            </div>
                        </div>
                    </div>

                    <div class=" mb-3 -mx-1 ">
                        <div class="lg:w-2/2  mb-3 lg:mb-2 mx-1">
                            <label class="text-gray-600 font-light" for="password">
                                Password
                            </label>
                            <div class="relative w-full password_field">
                                <div class="absolute inset-y-0 right-0 flex items-center px-2">
                                    <input class="hidden js-password-toggle" id="toggle" type="checkbox"/>
                                    <label class=" hover:text-ensias-red rounded px-2 py-1 js-password-label"
                                           for="toggle">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none"
                                             viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                  d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21"></path>
                                        </svg>
                                    </label>
                                </div>
                                <input name="password"
                                       class="appearance-none w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red js-password"
                                       id="password" type="password" autocomplete="off"
                                       placeholder="Enter your password"/>
                            </div>

                        </div>
                    </div>

                    <div class="lg:w-2/2 mt-6 lg:mb-2 mx-1">
                        <label class="block ">
                            <span class="text-gray-600 font-light">Description about company</span>
                            <textarea name="description"
                                      class="w-full mt-1 px-2 py-1 border rounded-lg text-gray-700 hover:border-ensias-red"
                                      rows="5" placeholder="Enter the description of the offer"></textarea>
                        </label>
                    </div>

                </div>
                <div class="flex justify-center py-6">
                    <button type="submit"
                            class="flex items-center bg-red-700 text-white rounded hover:bg-ensias-red px-6 py-2 focus:outline-none">
                        <span class="material-icons pr-1" style="font-size: 18px;">Register</span>
                    </button>
                </div>
            </form>
        </div>

        <!-- Footer -->
        <p class="pt-4 pb-1">You already have an account ? <a href="<c:url value="/login" />"
                                                              class="text-the font-medium hover:text-white hover:bg-ensias-red">Login</a>
        </p>
    </div>
</section>


<!--====== Main js ======-->
<script src="assets/js/main.js"></script>

</body>

</html>