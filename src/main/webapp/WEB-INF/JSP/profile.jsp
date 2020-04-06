<%--
  Created by IntelliJ IDEA.
  User: Yukitteru
  Date: 06.04.2020
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>

<div class="container" style="font-family: 'Comic Neue', cursive;">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">MyResume</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active" ><a  href="#">My Profile <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">Properties</a></li>
                </ul>
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>

            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-body">
                    <img class="img-responsive; img-rounded" style="width: 100%; padding-top: 0;"
                         src="/media/avatar/1e9b951b-046f-497e-b518-abb1d76f7f6c.jpg">
                    <h1 style="font-weight: bold; text-align: center">Arseny Varyagin</h1>
                    <h6 style="font-weight: bold;text-align: center">Chelyabinsk, Russia</h6>
                    <h6 style="text-align: center">
                        <span style="font-weight: bold">Age:</span> 23,
                        <span style="font-weight: bold"> Birthday:</span>
                        <span> 14 January 1997</span></h6>
                    <table class="table">

                        <tr>
                            <th scope="row"></th>
                            <td><i class="fab fa-phone"></i>&nbsp; +79995884331</td>
                        </tr>
                        <tr>
                            <th scope="row"></th>
                            <td><i class="fa fa-github"></i><a href="https://github.com/yukitteru">&nbsp;
                                https://github.com/yukitteru</a>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"></th>
                            <td><i class="fa fa-vk"></i><a href="https://vk.com/id69952339">&nbsp;
                                https://vk.com/id69952339</a>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"></th>
                            <td><i class="fa fa-stack-overflow"></i><a
                                    href="https://stackoverflow.com/users/13235141/yukitteru">&nbsp;
                                https://stackoverflow.com/yukitteru</a>&nbsp;
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div class="panel panel-primary">
                <div class="panel-heading"><i class="fa fa-language"></i> Foreign Languages</div>
                <div class="panel-body">
                    <p><span style="font-weight: bold">English: </span>Profiency(Writing)</p>
                    <p><span style="font-weight: bold">English: </span>Upper-intermediate(Spoken)</p>
                    <p><span style="font-weight: bold">Spanish: </span>Pre-intermediate(Spoken)</p>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading">Hobbies</div>
                <div class="panel-body">
                    <table class="table table-bordered">
                        <tr>
                            <th scope="col" style="text-align: center"><i class="fa fa-futbol-o" style="font-size: large;"></i></th>
                            <th scope="col" style="text-align: center">Footbal</th>
                        </tr>
                        <tr>
                            <th scope="col" style="text-align: center"><i class="fa fa-bicycle" style="font-size: large;"></i></th>
                            <th scope="col" style="text-align: center">Bike rides</th>
                        </tr>
                        <tr>
                            <th scope="col" style="text-align: center"><i class="fa fa-plane" style="font-size: large;"></i></th>
                            <th scope="col" style="text-align: center">Travels</th>
                        </tr>
                        <tr>
                            <th scope="col" style="text-align: center"><i class="fa fa-gamepad"
                                                                          style="font-size: large;"></i></th>
                            <th scope="col" style="text-align: center">Computer games</th>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="panel panel-primary">
                <div class="panel-heading">Additional info</div>
                <div class="panel-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                    ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                    laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                    velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                    sunt in culpa qui officia deserunt mollit anim id est laborum.
                </div>

            </div>
        </div>

        <div class="col-md-8">
            <div class="panel panel-primary">
                <div class="panel-heading"><i class="fa fa-bullseye"></i> Objective</div>
                <div class="panel-body">
                    <div class="info-block1" style="font-weight: bold; font-size: large">Junior java development
                        position<br><br>
                        <h5 style="font-weight: bold">Summary of Qualifications:</h5>
                        <h5 style>Two Java Professional cources with developing two web applications: blog and resume
                            (Links to demo are provided)</h5>
                    </div>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading"><i class="fa fa-code"></i> Techical skills</div>
                <div class="panel-body">
                    <table class="table table-bordered ">
                        <thead>
                        <tr class="info">
                            <th scope="col">Category</th>
                            <th scope="col">Frameworks and Technologies</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row" style="font-weight: normal">Languages</th>
                            <td>Java, SQL, PLSQL</td>
                        </tr>
                        <tr>
                            <th scope="row" style="font-weight: normal">Java</th>
                            <td>Spring MVC, Logback, JSP, JSTL, Spring Data JPA, Apache Commons, Spring Security,
                                Hibernate JPA, Facebook Social API, Servlets JDBC, Google+ Social API
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" style="font-weight: normal">IDE</th>
                            <td colspan="2">Intelij IDEA, Eclipse for JEE Developers</td>
                        </tr>
                        <tr>
                            <th scope="row" style="font-weight: normal">VCS</th>
                            <td>Git, Github</td>
                        </tr>
                        <tr>
                            <th scope="row" style="font-weight: normal">Web Servers</th>
                            <td>Tomcat, Jetty, Glassfish</td>
                        </tr>
                        <tr>
                            <th scope="row" style="font-weight: normal">Build system</th>
                            <td>Maven, Gradle</td>
                        </tr>
                        <tr>
                            <th scope="row" style="font-weight: normal">Cloud</th>
                            <td>AWS, OpenShift</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading"><i class="glyphicon glyphicon-briefcase"></i> Practice Expierince</div>
                <div class="panel-body">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-badge danger"><i class="glyphicon glyphicon-briefcase"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title" style="font-weight: bold">Java Base Cource at
                                        DevStudy.net</h4>
                                </div>
                                <div class="timeline-body">
                                    <p><i class="fa fa-calendar"></i> Marh-April 2016</p>
                                    <p><span style="font-weight: bold">Responsibilities included:</span>
                                        Developing the web application 'blog' using free HTML template,
                                        downloading from interntet. Populating database by test data and
                                        uploading web project to OpenShift free hosting.</p>
                                    <p>
                                        <span style="font-weight: bold">Demo:</span>
                                        <a href="http://devstudy.com">http://devstudy.com</a></p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading"><i class="fa fa-certificate"></i> Certificates</div>
                <div class="panel-body">
                    <img src="/media/certificates/2c3a01a9-a725-4d8c-b364-3b58897f8aff-sm.jpg" style="padding-left: 45%">
                </div>
                <a href="#" style="padding-left: 44%; padding-bottom: 3%">Mongo_Certificate</a>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading"><i class="fa fa-book"></i> Cources</div>
                <div class="panel-body">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-badge success"><i class="fa fa-book"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title" style="font-weight: bold">Java Advanced cource at
                                        DevStudy.net</h4>
                                </div>
                                <div class="timeline-body">
                                    <p><i class="fa fa-calendar"></i><span
                                            style="font-weight: bolder; color: #555555; font-size: 11pt">  Finish date:</span>
                                        Not finished yet</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading"><i class="glyphicon glyphicon-education"></i> Education</div>
                <div class="panel-body">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-badge warning"><i class="glyphicon glyphicon-education"></i></div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4 class="timeline-title" style="font-weight: bold">The specialist degree in
                                        Electronic Engineering</h4>
                                </div>
                                <div class="timeline-body">
                                    <p><i class="fa fa-calendar"></i><span
                                            style="font-weight: bolder; color: #555555; font-size: 8pt">  2004-2009</span>
                                    </p>
                                    <p>Computer Science. Moscow National University, Russia</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="panel-footer col-md-12">
        <div class="panel-body">
            Panel content
        </div>
        <div class="panel-footer">Panel footer</div>
    </div>
</div>
