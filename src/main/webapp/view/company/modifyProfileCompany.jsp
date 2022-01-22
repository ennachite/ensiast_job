<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title> ${ sessionScope.company.companyName } </title>
</head>
<body>
<%--Preloader--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp" />

<%--Navbar--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/navbar.jsp" />

<!--====== JOB POSTS PART STARTS ======-->
<section class="pt-120 pb-120">
    <div class="">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Modify Company Profile</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left w-12/12">
            <!-- ========== GRID START ============-->
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
                <div class="grid_offer mt-8 mx-3">
                    <form method="post" action="/modify-company-profile">
                        <c:if test="${ requestScope.error != null }">
                            <c:out value="${ requestScope.error }" />
                        </c:if>
                        <!-- General elements -->
                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Company Name</label>
                                    <input name="company-name" value="${ sessionScope.company.companyName }" type='text' class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Enter your company name"/>
                                </div>
                            </div>
                            <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-gray-600">CEO</label>
                                    <input name="ceo-name" value="${ sessionScope.company.ceoName }" type='text' class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input " placeholder="Enter your CEO Name" />
                                </div>
                            </div>
                        </div>

                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Tax Identification Number</label>
                                    <input name="company-tif" value="${ sessionScope.company.companyTif }" type='text' class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Enter your company TIN"/>
                                </div>
                            </div>
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1 px-1">
                                <label class="text-black">Company Size</label>
                                <select class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input">
                                    <option value="">Microentreprise: 1 to 9 employees</option>
                                    <option value="">Small enterprise: 10 to 49 employees</option>
                                    <option value="">Medium-sized enterprise: 50 to 249 employees</option>
                                    <option value="">Large enterprise: 250 employees or more</option>
                                </select>
                            </div>
                        </div>

                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Phone number</label>
                                    <input name="fix" value="${ sessionScope.company.companyFix }" type='tel' class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Enter your company phone number"/>
                                </div>
                            </div>
                            <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-gray-600">City</label>
                                    <input name="city" value="${ sessionScope.member.city }" type='text' class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input " placeholder="Enter your company email address" />
                                </div>
                            </div>
                        </div>

                        <div class="lg:flex mt-4 -mx-1 text-left">
                            <div class="lg:w-1/2 mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-black">Number of employees</label>
                                    <input name="company-size" value="${ sessionScope.company.companySize }" type='number' class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Enter number of employees"/>
                                </div>
                            </div>
                            <div class="lg:w-1/2  mb-3 lg:mb-2 mx-1">
                                <div class="px-1">
                                    <label class="text-gray-600 ">Founding date</label>
                                    <input name="founded" value="${ sessionScope.company.founded }" type='number' class="block w-full mt-1 h-8 text-sm pl-2 hover:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input  " placeholder="Enter your company email address" />
                                </div>
                            </div>
                        </div>

                        <div class="text-left pt-3 pb-2">
                            <label class="block mt-4">
                                <span class="text-gray-700">Description about the company</span>
                                <textarea name="description" class="block w-full mt-1 text-sm focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input p-2 h-260 pb-5" rows="3" placeholder="Enter description here ....">${ sessionScope.company.description }</textarea>
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
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />