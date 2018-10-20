<%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/20/18
  Time: 5:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
  <!-- Latest compiled and minified CSS -->
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
<div class="wrapper">
  <form action="calculate.jsp" method="get">
    <div class="form-group">
      <label for="inventmentamount">Inventment Amount: </label><br>
      <input type="text" name="inventmentamount" id="inventmentamount" class="form-control">
    </div>
    <div class="form-group">
      <label for="yearlyinterestrate">Yearly Interest Rate: </label><br>
      <input type="text" name="yearlyinterestrate" id="yearlyinterestrate" class="form-control">
    </div>
    <div class="form-group">
      <label for="numberofyears">Number of Years: </label><br>
      <input type="text" name="numberofyears" id="numberofyears" class="form-control">
    </div>
    <button type="submit" class="btn btn-primary">Calculate</button>
  </form>
</div>
</body>
</html>
