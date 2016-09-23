<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

        <!--Using the viewport meta tag to control layout on mobile browsers-->
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrapValidator.min.css" rel="stylesheet">

        <title>DS Clicker</title>
    </head>
    <body>       
        <div class="container">
            <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-10">
                    <div class="page-header">
                        <h1>Distributed System Class Clicker</h1>
                        <h1><small>Submit your answer to the current question:</small></h1>
                    </div>

                    <div class="row">
                        <form id="input" method="post" action="submit" data-toggle="validator">
                            <div class="form-group">
                                <div class="radio"> 
                                    <label><input type="radio" name="answer" value="A" required>A</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="answer" value="B" required>B</label>
                                </div>
                                <div class="radio"> 
                                    <label><input type="radio" name="answer" value="C" required>C</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="answer" value="D" required>D</label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-success btn-block">Submit</button>
                        </form>
                        <br>
                        <form id="getResult" method="get" action="getResults" data-toggle="validator">
                            <button type="submit" class="btn btn-info btn-block">Get Results</button>
                        </form>

                    </div>
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
