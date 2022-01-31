<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp"/>

<!-- Title -->
<title> ${ sessionScope.student.firstName }'s Profile</title>
</head>
<body>
<%--Preloader--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp"/>

<%--Navbar--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/navbar.jsp"/>

<!--====== JOB POSTS PART STARTS ======-->
<section class="pt-120 pb-120">
    <div class="">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Modify Student Profile</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left w-12/12">
            <!-- ========== GRID START ============-->
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
                <div class="grid_offer mt-8 mx-3">
                    <!-- General elements -->
                    <form method="post" action="/modify-student-profile">
                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Firstname</label>
                                    <input name="first-name" type='text' value="${ sessionScope.student.firstName }"
                                           class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                           placeholder="Enter your firstname"/>
                                </div>
                            </div>
                            <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-gray-600">Lastname</label>
                                    <input name="last-name" type='text' value="${ sessionScope.student.lastName }"
                                           class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input "
                                           placeholder="Enter your lastname"/>
                                </div>
                            </div>
                        </div>

                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">CIN</label>
                                    <input name="cin" type='text' value="${ sessionScope.student.CIN }"
                                           class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                           placeholder="Enter your CIN"/>
                                </div>
                            </div>
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">CNE</label>
                                    <input name="cne" type='text' value="${ sessionScope.student.CNE }"
                                           class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                           placeholder="Enter your CNE"/>
                                </div>
                            </div>
                        </div>

                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Gender</label>
                                    <select name="gender" value="${ sessionScope.student.gender }"
                                            class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input">
                                        <option>Male</option>
                                        <option>Female</option>
                                    </select>
                                </div>
                            </div>
                            <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-gray-600 ">Birthdate</label>
                                    <input name="birthdate" type='date' value="${ sessionScope.student.birthdate }"
                                           class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input  "
                                           placeholder="Enter your company email address"/>
                                </div>
                            </div>
                        </div>
                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Phone number</label>
                                    <input name="phone" type='tel' value="${ sessionScope.student.phone }"
                                           class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                           placeholder="Enter your phone number"/>
                                </div>
                            </div>
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">City</label>
                                    <input name="city" type='text' value="${ sessionScope.member.city }"
                                           class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                           placeholder="Enter your location"/>
                                </div>
                            </div>
                        </div>
                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Promotion</label>
                                    <input name="promo" type='number' value="${ sessionScope.student.promo }"
                                           class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input"
                                           min="1995" placeholder="Enter your promotion"/>
                                </div>
                            </div>
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Study year</label>
                                    <select name="year-studies" value="${ sessionScope.student.yearStudies }"
                                            class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input">
                                        <option value="1A">First Year</option>
                                        <option value="2A">Second Year</option>
                                        <option value="3A">Third Year</option>
                                        <option value="Alumni">Alumni</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="block mt-4 -mx-1 text-left">
                            <div class="px-1">
                                <label class="text-gray-600 ">Speciality</label>
                                <select name="specialty" value="${ sessionScope.student.specialty }"
                                        class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input">
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
                        <div class="text-left pt-3 pb-2">
                            <label class="block mt-4">
                                <span class="text-gray-700">Summary</span>
                                <textarea name="summary"
                                          class="block w-full mt-1 text-sm focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input p-2 pb-5"
                                          rows="8"
                                          placeholder="Write summary about you, your experiences, motivations ....">${ sessionScope.profile_student.summary }</textarea>
                            </label>
                        </div>
                        <a class="grid justify-center p-4 mb-4 text-sm text-white hover:bg-ensias-red bg-red-700 rounded-lg shadow-md focus:outline-none mt-3">
                            <button type="submit" class="font-bold">Submit</button>
                        </a>
                    </form>
                </div>

            </div>
            <!-- ========== GRID END ============-->
        </div>
    </div>
</section>
<!--====== JOB POSTS PART END ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp"/>
