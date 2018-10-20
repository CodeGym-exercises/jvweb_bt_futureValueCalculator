<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/20/18
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculate</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <style>
        .wrapper{
            width: 230px;
            margin: 20px auto;
        }
    </style>
</head>
<body>
<%!  NumberFormat numberFormat = new DecimalFormat("0.00");
    double amount = 0;
    double rate = 0;
    double years = 0;
    String result = "";
%>

<div class="wrapper">
    <%
        boolean isAmountEqualsNull = request.getParameter("inventmentamount")==""?true:false;
        boolean isRatesEqualsNull = request.getParameter("yearlyinterestrate")==""?true:false;
        boolean isYearsEqualsNull = request.getParameter("numberofyears")==""?true:false;
        if(isAmountEqualsNull||isRatesEqualsNull||isYearsEqualsNull){
            out.print("<h3>Can't found result, please try again later</h3>");
        }else{
            amount = Double.parseDouble(request.getParameter("inventmentamount"));
            rate = Double.parseDouble(request.getParameter("yearlyinterestrate"));
            years =  Double.parseDouble(request.getParameter("numberofyears"));
            result = numberFormat.format((amount+(amount*rate*0.01))*years);
            out.print("<h3>Inventment Amount: </h3>\n" + amount+
                    " <h3>Yearly Interest Rate: </h3>\n" + rate +
                    " <h3>Number of Years: </h3>" + years+
                    "<h3><strong>Result: "+result+"</strong></h3>");
        }
    %>
    <form action="index.jsp" method="get">
        <button type="submit" class="btn btn-primary">Go back</button>
    </form>
</div>
</body>
</html>
