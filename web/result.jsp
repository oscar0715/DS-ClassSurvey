<!DOCTYPE html>

<%@page import="java.util.Map"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">

        <!--Using the viewport meta tag to control layout on mobile browsers-->
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrapValidator.min.css" rel="stylesheet">

        <title>Survey Result</title>
    </head>
    <body>       
        <div class="container">
            <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-10">
                    <header>
                        <div class="page-header">
                            <h1>Distributed System Class Clicker</h1>
                            <h1><small>The results from survey are as follows:</small></h1>
                        </div>
                    </header>


                    <%  Map<String, Integer> answerMap = (Map<String, Integer>) request.getAttribute("answerMap");
                        if (answerMap == null || answerMap.size() == 0) {
                    %>
                    <h3>There are currently no results</h3>
                    <%
                    } else {
                    %>

                    <table class="table table-striped table-hover ">
                        <caption><h1>Result List</h1></caption>
                        <thead>
                            <tr>
                                <th>Answer</th>
                                <th>Times</th>
                            </tr>

                        </thead>
                        <tbody>
                            <%
                                for (String s : answerMap.keySet()) {

                            %>
                            <tr>
                                <td><%= s%></td>

                                <td><%= answerMap.get(s)%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>


                    <% }%>
                    <br>
                    <form id="back" method="get" action="backToIndex" data-toggle="validator">
                        <button type="submit" class="btn btn-info btn-block">Back to Clicker</button>
                    </form>

                </div>

                <div class="col-xs-1"></div>
            </div>


        </div>

        <!--<footer class="footer navbar-fixed-bottom">
            <div class="container">
                <p class="text-capitalize">Produced by Jiaming NI</p>
            </div>
        </footer>-->
        <!-- jQuery -->
        <script   src="https://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <script src="js/bootstrapValidator.min.js"></script>

    </body>
</html>
