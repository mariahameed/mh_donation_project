<?php
//seesion verfication if user already login
session_start();
//            $_SESSION["user_id"] = $qry->insert_id;
if (isset($_SESSION["session_name"]) && $_SESSION["session_name"]!=""){
     
    header("Location:./portal.php");
    exit();   
}

?>

    <!DOCTYPE html>
    <html lang="">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Project</title>
        <link rel="shortcut icon" href="">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <!--    <link rel="stylesheet" href="css/bootstrap-theme.min.css">-->
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/signin.css">
        <link rel="stylesheet" href="css/master-ui.css">

        <style>
            body {
                padding-top: 70px;
            }
            
            .starter-template {
                padding: 40px 15px;
                text-align: center;
            }
        </style>

        <!--[if IE]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>

    <body ng-app="app">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Web Project</a>
                </div>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.php">Home</a></li>
                        <li><a href="about.php">About</a></li>
                    </ul>
                </div>
                <!--.nav-collapse -->
            </div>
        </nav>

        <div class="container" ng-controller="forms">
            <div class="row hidden" ng-show="attmsuccess" ng-class="{hidden:!attmsuccess}">
                <div class="col-md-6 col-md-offset-3">
                    <div class="alert alert-success">
                        <strong>Success!</strong> {{result}}
                    </div>
                </div>
            </div>
                    <div class="row hidden" ng-show="attmfailure" ng-class="{hidden:!attmfailure}">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="alert alert-danger">
                                <strong>Failure!</strong> {{result}}
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="panel panel-login">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <a id="login-form-link" ng-click="tog('login')" ng-class="{active:login}">Login</a>
                                        </div>
                                        <div class="col-xs-6">
                                            <a id="register-form-link" ng-click="tog('signup')" ng-class="{active:signup}">Register</a>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form id="login-form" method="post" role="form" style="display: block;" ng-show="login" ng-class="{fadeIn:login,fadeOut:signup}" ng-submit="submit_login()">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-user"></span>
                                                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="" ng-model="dlogin.username" ng-trim="false" ng-change="dlogin.username = dlogin.username.split(' ').join('')" ng-required>
                                                </div>
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-lock"></span>
                                                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" ng-model="dlogin.password" ng-change="dlogin.password = dlogin.password.split(' ').join('')" ng-required>
                                                </div>
                                                <div class="form-group text-center">
                                                    <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                                    <label for="remember"> Remember Me</label>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-sm-offset-3">
                                                            <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="panelb btn btn-primary" value="Log In">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
<!--
                                                        <div class="col-lg-12">
                                                            <div class="text-center">
                                                                <a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
                                                            </div>
                                                        </div>
-->
                                                    </div>
                                                </div>
                                            </form>
                                            <form id="register-form" method="post" role="form" ng-show="signup" ng-class="{fadeIn:signup,fadeOut:login}" ng-submit="submit_signup()">

                                                <div class="form-group input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-user"></span>
                                                    <input type="text" name="firstname" id="firstname" tabindex="1" class="form-control" placeholder="First Name" value="" ng-model="dsign.firstname" ng-trim="false" ng-change="dsign.firstname = dsign.firstname.split(' ').join('')"ng-required>
                                                </div>
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-user"></span>
                                                    <input type="text" name="lastname" id="lastname" tabindex="1" class="form-control" placeholder="Last Name" value="" ng-model="dsign.lastname" ng-trim="false" ng-change="dsign.lastname = dsign.lastname.split(' ').join('')" ng-required>
                                                </div>
                                                
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-envelope"></span>

                                                    <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="" ng-model="dsign.email" ng-required>
                                                </div>
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-user"></span>
                                                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="" ng-model="dsign.username" ng-trim="false" ng-change="dsign.username = dsign.username.split(' ').join('')"ng-required>
                                                </div>
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-lock"></span>
                                                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" ng-model="dsign.password" ng-change="dsign.password = dsign.password.split(' ').join('')" ng-required>
                                                </div>
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon glyphicon glyphicon-lock"></span>
                                                    <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password" ng-model="dsign.password2" ng-change="dsign.password2 = dsign.password2.split(' ').join('');" ng-class="{'glowing-border-red':notpass}" ng-required>
                                                </div>
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-sm-offset-3">
                                                            <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="panelb btn btn-success" value="Register Now">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <script src="js/angular.min.js"></script>
                <script src="js/ui-bootstrap.min.js"></script>
                <script src="js/signin.js"></script>
    </body>

    </html>