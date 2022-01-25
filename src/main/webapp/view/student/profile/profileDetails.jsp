<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  ======= Start Experiences =========-->
<div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
    <div class="flex items-center justify-between mb-4 space-x-2 font-semibold text-zinc-900 text-2xl">
        <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
            <span class="text-theme-color relative inline-block ">
                <i class="lni lni-list"></i>
            </span>
            <span class="tracking-wide ">Experience</span>
        </div>
        <a href="#" class="main-modal flex justify-between p-2 text-sm text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
            </svg>
        </a>
    </div>
    <div class="text-zinc-700">
        <ul class="list-inside text-xl">
            <c:forEach items="${ requestScope.experiences }" var="experience">
                <!-- ========== Start Experience =========== -->
                <li class="mb-3 border-b-2">
                    <div class="flex justify-between">
                        <div class="text-teal-600">${ experience.experienceTitle }</div>
                        <div class="flex items-center ">
                            <a href="${pageContext.request.contextPath}/profile/delete-experience?experienceIdDeleted=${ experience.experienceId }" class="main-modal p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </a>
                            <a href="" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="text-zinc-500 text-sm">${ experience.companyName }, ${ experience.jobType }</div>
                    <div class="text-zinc-500 text-sm">${ experience.startDate } - ${ experience.endDate }, 2 months</div>
                    <div class="text-zinc-500 text-sm">${ experience.companyLocation }</div>
                    <div class="text-zinc-500 text-sm pb-3">${ experience.experienceDescription }</div>
                </li>
                <!-- ========== End Experience =========== -->
            </c:forEach>
        </ul>
    </div>
</div>
<!-- ========= End Experiences ========= -->

<!--  ======= Start Educations =========-->
<div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
    <div class="flex items-center justify-between mb-4 space-x-2 font-semibold text-zinc-900 text-2xl">
        <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
            <span class="text-theme-color relative inline-block ">
                <i class="lni lni-graduation"></i>
            </span>
            <span class="tracking-wide ">Education</span>
        </div>
        <a href="#" class="main-modal flex justify-between p-2 text-sm text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
            </svg>
        </a>
    </div>
    <div class="text-zinc-700">
        <ul class="list-inside text-xl">
            <c:forEach items="${ requestScope.educations }" var="education">
                <!-- ========== Start Education =========== -->
                <li class="mb-3 border-b-2 pb-3">
                    <div class="flex justify-between">
                        <div class="text-teal-600">${ education.schoolName }</div>
                        <div class="flex items-center ">
                            <a href="${pageContext.request.contextPath}/profile/delete-education?educationIdDeleted=${ education.educationId }" class="main-modal p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Delete">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </a>
                            <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="text-zinc-500 text-sm">${ education.fieldStudies }</div>
                    <div class="text-zinc-500 text-sm">${ education.startDate } - ${ education.endDate }</div>
                    <div class="text-zinc-500 text-sm">${ education.eductionDescription }</div>
                </li>
                <!-- ========== End Education =========== -->
            </c:forEach>
        </ul>
    </div>
</div>
<!-- ========= End Educations ========= -->

<!--  ======= Start Certifications =========-->
<div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
    <div class="flex items-center justify-between mb-4 space-x-2 font-semibold text-zinc-900 text-2xl">
        <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
            <span class="text-theme-color relative inline-block ">
                <svg class="h-8 w-8" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                    <path d="M13 19.95V22h12.998C26.55 22 27 21.551 27 20.993V8.007A.999.999 0 0 0 25.998 7H6.002C5.45 7 5 7.449 5 8.007v12.986A.999.999 0 0 0 6.002 22H8v-2.05a3.5 3.5 0 1 1 5 0Zm-4 .713V24.6l1.5-1.5 1.5 1.5v-3.937a3.486 3.486 0 0 1-1.5.337c-.537 0-1.045-.12-1.5-.337ZM8 23H6.005A2.002 2.002 0 0 1 4 21V8a2 2 0 0 1 2.005-2h19.99C27.103 6 28 6.895 28 8v13a2 2 0 0 1-2.005 2H13v4l-2.5-2.5L8 27v-4ZM7 11v1h18v-1H7Zm9 3v1h9v-1h-9Zm3 3v1h6v-1h-6Zm-8.5 3a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z" fill="#cc2426" fill-rule="evenodd" class="fill-929292"></path>
                </svg>
            </span>
            <span class="tracking-wide ">Certification</span>
        </div>
        <a href="#" class="main-modal flex justify-between p-2 text-sm text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
            </svg>
        </a>
    </div>
    <div class="text-zinc-700">
        <ul class="list-inside text-xl">
            <c:forEach items="${ requestScope.certifications }" var="certification">
                <!-- ========== Start Certification =========== -->
                <li class="mb-3 border-b-2 pb-3">
                    <div class="flex justify-between">
                        <div class="text-teal-600">${ certification.certificationName }</div>
                        <div class="flex items-center ">
                            <a href="${pageContext.request.contextPath}/profile/delete-certification?certificationIdDeleted=${ certification.certificationId }" class="main-modal p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Delete">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </a>
                            <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="text-zinc-500 text-sm">${ certification.issuingOrganization }</div>
                    <div class="text-zinc-500 text-sm">Issued ${ certification.issueDate } - ${ certification.expirationDate }</div>
                    <div class="text-zinc-500 text-sm">${ certification.credentialId }</div>
                    <div class="text-zinc-500 text-sm underline"><a href="${ certification.credentialUrl }" target="_blank"> See Credential URL</a></div>
                </li>
                <!-- ========== End Certification =========== -->
            </c:forEach>
        </ul>
    </div>
</div>
<!-- ========= End Certifications ========= -->

<!--  ======= Start Languages =========-->
<div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
    <div class="flex items-center justify-between mb-4 space-x-2 font-semibold text-zinc-900 text-2xl">
        <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
            <span class="text-theme-color relative inline-block ">
                <svg class="h-7 w-7" fill="none" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path d="m9.34 6.372.05.105 5.56 14.5a.755.755 0 0 1-.418.971.73.73 0 0 1-.91-.333l-.043-.092-1.433-3.737H5.06l-.094-.006-1.546 3.76a.73.73 0 0 1-.963.401.754.754 0 0 1-.427-.885l.033-.096 5.964-14.5a.73.73 0 0 1 1.314-.088Zm9.406-4.37a.75.75 0 0 1 .743.65l.007.1V7.5h1.75a.75.75 0 0 1 .743.649l.007.102a.75.75 0 0 1-.648.743L21.245 9l-1.75-.001v7.25a.75.75 0 0 1-.648.744l-.102.007a.75.75 0 0 1-.743-.648l-.007-.102V2.753a.75.75 0 0 1 .75-.75ZM8.81 8.748 5.65 16.286h6.11L8.81 8.747Zm1.937-6.744h5.498a.75.75 0 0 1 .743.648l.006.102v3.004c0 2.344-1.9 4.245-4.245 4.245a.75.75 0 0 1 0-1.5c1.46 0 2.654-1.14 2.74-2.578l.005-.167V3.503h-4.747a.75.75 0 0 1-.102-1.493l.102-.007h5.498-5.498Z" fill="#cc2426" class="fill-212121"></path>
                </svg>
            </span>
            <span class="tracking-wide ">Languages</span>
        </div>
        <a href="#" class="main-modal flex justify-between p-2 text-sm text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
            </svg>
        </a>
    </div>
    <div class="text-zinc-700">
        <ul class="list-inside text-xl">
            <c:forEach items="${ requestScope.languages }" var="language">
                <!-- ========== Start Language =========== -->
                <li class="mb-3 border-b-2 pb-3">
                    <div class="flex justify-between">
                        <div class="text-teal-600">${ language.languageName }</div>
                        <div class="flex items-center ">
                            <a href="${pageContext.request.contextPath}/profile/delete-language?languageIdDeleted=${ language.languageId }" class="main-modal p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Delete">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </a>
                            <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                </svg>
                            </a>
                        </div>

                    </div>
                    <div class="text-zinc-500 text-sm">${ language.level }</div>
                </li>
                <!-- ========== End Language =========== -->
            </c:forEach>
        </ul>
    </div>
</div>
<!-- ========= End Certifications ========= -->