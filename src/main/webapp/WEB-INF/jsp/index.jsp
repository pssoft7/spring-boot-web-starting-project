<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title><spring:message code="com.pssoft7.web.label.hello_world" /></title>
    </head>
    <body>
        <div>
            <select id="locales">
                <option value=""></option>
                <option value="en">English</option>
                <option value="jp">日本語</option>
                <option value="cn">中文</option>
            </select>
        </div>
        <h1><spring:message code="com.pssoft7.web.message.hello_world" /></h1>
        <p>
        <spring:message code="com.pssoft7.web.message.welcome_message" />
        </p>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
            crossorigin="anonymous"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $("#locales").change(function () {
                    var selectedOption = $('#locales').val();
                    if (selectedOption != ''){
                        window.location.replace('<c:url value="/"/>?lang=' + selectedOption);
                    }
                });
            });
        </script>

    </body>
</html>
