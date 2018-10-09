<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>

<html>
<head>
    <title></title>

<script type="text/javascript" language="javascript" src="Content/Scripts/global.js"></script>
<script type="text/javascript" language="javascript" src="Content/Scripts/ispXmlProc.js"></script>
<!-- Bootstrap Core CSS -->
<link type="text/css" href="../Content/Styles/bootstrap.css" rel="stylesheet" />

<!-- Custom CSS -->
<link type="text/css" href="../Content/Styles/copegov.css" rel="stylesheet" />
<link type="text/css" href="../Content/Styles/style.css" rel="stylesheet" />
<link href="../Content/Styles/Font.css" rel="stylesheet" />
<link type="text/css" href="Content/Styles/jPushMenu.css" rel="stylesheet" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="Content/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script type="text/javascript" src="Content/js/bootstrap.min.js"></script>
<script type="text/javascript" src="Content/js/jPushMenu.js"></script>
   <script id="clientEventHandlersJS" language="javascript" type="text/javascript">

       var arrOBLoginErr = new Array();

       function DisplayOBLogin() {

           parent.sNew = false;
           $('#divOBLogin').css('display', 'block');
           $('#LogOBLogin').css('display', 'block');


           $('#AppHeader').html(txtHeader + '<Font >|Outstanding Balance </Font>');

           try {

               $('#txtOBAccountNumber').text('');
               $('#txtOBPIN').text('');
           }
           catch (ex) {

           }
           LoadOBLoginError();


           $('#txtOBAccountNumber').focus();
       }

       function LoadOBLoginError() {
           var i = 0;

           arrOBLoginErr[i++] = [$('#txtOBAccountNumber'), '$(\'#txtOBAccountNumber\').val() == ""', 'Enter ID number'];
           arrOBLoginErr[i++] = [$('#txtOBAccountNumber'), '($(\'#txtOBAccountNumber\').val().length > 9)',
                   'Invalid account number'];

           arrOBLoginErr[i++] = [$('txtOBPIN'), ' $(\'#txtOBPIN\').val() == ""', 'Enter PIN number'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), 'regInteger.exec($(\'#txtOBPIN\').val()) != $(\'#txtOBPIN\').val()', 'PIN number must be an integer'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "0"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "00"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "0000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "00000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "000000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "0000000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "00000000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "000000000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "0000000000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "00000000000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "000000000000"', 'PIN number must be greater than zero'];
           arrOBLoginErr[i++] = [$('txtOBPIN'), '$(\'#txtOBPIN\').val() == "0000000000000"', 'PIN number must be greater than zero'];
       }

       function ValidateOBLogin() {
           debugger;
           $(AppError).text('');
           $('#txtOBAccountNumber').removeClass("inpError");
           $('#txtOBPIN').removeClass("inpErrorPwd");
           var err_text = ispSetInputErr(arrOBLoginErr);
           $(AppOBError).text(err_text);
           // resolvedIframeheight();
       }

       $(function () {
           $('#txtOBPIN').keypress(function (evt) {
               if (evt.charCode > 31 && (evt.charCode < 48 || evt.charCode > 57)) {
                   return false;
               }
           });
       });

       $(function () {
           $('#txtOBAccountNumber').keypress(function (evt) {
               if (evt.charCode > 31 && (evt.charCode < 48 || evt.charCode > 57)) {
                   return false;
               }
           });
       });

       //function DoOBLogin() {
       //    debugger;
       //    var dobj = parent.$g.getXmlDocObj();

       //    $(AppOBError).text('');
       //    $('#txtOBAccountNumber').removeClass("inpError");
       //    $('#txtOBPIN').removeClass("inpErrorPwd");

       //    if ($('#txtOBAccountNumber').val() == null || $('#txtOBAccountNumber').val() == '') {

       //        $(AppOBError).text('Account ID can not be blank');
       //        $('#txtOBAccountNumber').attr('class', 'form-control inpError');
       //        $('#txtOBAccountNumber').focus();
       //        resolvedIframeheight();
       //        return false;

       //    }
       //    else {

       //        if ($('#txtOBPIN').val() == null || $('#txtOBPIN').val() == '') {
       //            $(AppOBError).text('PIN number can not be blank');
       //            $('#txtOBPIN').attr('class', 'form-control inpErrorPwd');
       //            $('#txtOBPIN').focus();
       //            resolvedIframeheight();
       //            return false;
       //        } else {
       //            ValidateOBLogin();

       //            if ($(AppOBError).text() == '') {

       //                parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, "I", "ENTITY_INFO FUNCTION_CODE", '', 0);
       //                parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, $('#txtOBAccountNumber').val(), "ENTITY_INFO ENTITY_ID", '', 0);
       //                parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, $('#txtOBPIN').val(), "ENTITY_INFO PIN", '', 0);
       //                debugger;

       //                //'''''''Sudipta'''''''''
       //                var acctNumber = $('#txtOBAccountNumber').val();
       //                var pin = $('#txtOBPIN').val();

       //                localStorage.setItem("AccountNumber", acctNumber);
       //                localStorage.setItem("Pin", pin);
       //                //'''''''''''''''''''

       //                var ReqXML = parent.$g.xmlAccount;

       //                $.ajax({
       //                    type: 'POST',
       //                    url: '../Returns/Log',
       //                    data: '{ "OriginationFom" : "Login","ServiceName" : "RTTIE010","RequestXML" : "' + btoa(ReqXML.toString()) + '"}',
       //                    contentType: 'application/json; charset=utf-8',
       //                    dataType: 'json',
       //                    success: function (msg) {

       //                    }
       //                });


       //                ispCallXMLForm(parent.$g.xmlAccount, dobj, "AccountInfo");
       //                parent.$g.xmlAccount.loadXML(dobj.xml);

       //                var ResXML = parent.$g.xmlAccount;

       //                $.ajax({
       //                    type: 'POST',
       //                    url: '../Returns/Log',
       //                    data: '{ "OriginationFom" : "Login","ServiceName" : "RTTIE010","ResponseXML" : "' + btoa(ResXML.toString()) + '"}',
       //                    contentType: 'application/json; charset=utf-8',
       //                    dataType: 'json',
       //                    success: function (msg) {

       //                    }
       //                });

       //                if (parent.$x.ispXmlGetFieldVal(dobj, 'ERROR_INFO MESSAGE', "", 0) == "") {

       //                    if (parent.$x.ispXmlGetFieldVal(dobj, 'ENTITY_INFO FORCEPINCHG', "", 0) == "Y") {

       //                        //parent.$g.xmlAccount.loadXML(dobj.xml)
       //                        ShowForm('LogChangePin');

       //                    } else {

       //                        //parent.$g.xmlAccount.loadXML(dobj.xml);
                              
       //                        $(parent.mnuPayBalances).trigger('click');
       //                        getLoginName();
                                       
       //                    }
       //                }
       //            } else {


       //                $(AppOBError).text(parent.$x.ispXmlGetFieldVal(dobj, 'ERROR_INFO MESSAGE', "", 0));


       //                $('#txtOBAccountNumber').focus();
       //            }
               
           


                    

                   

       //        }
       //    }
       //}


       function DoOBLogin() {
           debugger;
           var dobj = parent.$g.getXmlDocObj();

           $(AppOBError).text('');
           $('#txtOBAccountNumber').removeClass("inpError");
           $('#txtOBPIN').removeClass("inpErrorPwd");

           if ($('#txtOBAccountNumber').val() == null || $('#txtOBAccountNumber').val() == '') {

               $(AppOBError).text('Account ID can not be blank');
               $('#txtOBAccountNumber').attr('class', 'form-control inpError');
               $('#txtOBAccountNumber').focus();
               resolvedIframeheight();
               return false;

           }
           else {

               if ($('#txtOBPIN').val() == null || $('#txtOBPIN').val() == '') {
                   $(AppOBError).text('PIN number can not be blank');
                   $('#txtOBPIN').attr('class', 'form-control inpErrorPwd');
                   $('#txtOBPIN').focus();
                   resolvedIframeheight();
                   return false;
               } else {
                   ValidateOBLogin();

                   if ($(AppOBError).text() == '') {
                       gsLoginPage = 'DELPAY';
                       parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, "I", "ENTITY_INFO FUNCTION_CODE", '', 0);
                       parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, $('#txtOBAccountNumber').val(), "ENTITY_INFO ENTITY_ID", '', 0);
                       parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, $('#txtOBPIN').val(), "ENTITY_INFO PIN", '', 0);
                       debugger;

                       //'''''''Sudipta'''''''''
                       var acctNumber = $('#txtOBAccountNumber').val();
                       var pin = $('#txtOBPIN').val();

                       localStorage.setItem("AccountNumber", acctNumber);
                       localStorage.setItem("Pin", pin);
                       //'''''''''''''''''''

                       var ReqXML = parent.$g.xmlAccount;

                       $.ajax({
                           type: 'POST',
                           url: '../Returns/Log',
                           data: '{ "OriginationFom" : "Login","ServiceName" : "TT010E00","RequestXML" : "' + btoa(ReqXML.toString()) + '"}',
                           contentType: 'application/json; charset=utf-8',
                           dataType: 'json',
                           success: function (msg) {

                           }
                       });


                       ispCallXMLForm(parent.$g.xmlAccount, dobj, "AccountInfo");
                       parent.$g.xmlAccount.loadXML(dobj.xml);

                       var ResXML = parent.$g.xmlAccount;

                       $.ajax({
                           type: 'POST',
                           url: '../Returns/Log',
                           data: '{ "OriginationFom" : "Login","ServiceName" : "TT010E00","ResponseXML" : "' + btoa(ResXML.toString()) + '"}',
                           contentType: 'application/json; charset=utf-8',
                           dataType: 'json',
                           success: function (msg) {

                           }
                       });

                       if (parent.$x.ispXmlGetFieldVal(dobj, 'ERROR_INFO MESSAGE', "", 0) == "") {

                           if (parent.$x.ispXmlGetFieldVal(dobj, 'ENTITY_INFO FORCEPINCHG', "", 0) == "Y") {

                               //parent.$g.xmlAccount.loadXML(dobj.xml)
                               ShowForm('LogChangePin');

                           } else {

                               //parent.$g.xmlAccount.loadXML(dobj.xml);
                               debugger;
                               switch (gsLoginPage) {                                   
                                   case 'DELPAY':
                                       $(parent.mnuPayBalances).trigger('click');
                                       getLoginName();
                                       break
                               }
                           }
                       } else {


                           $(AppOBError).text(parent.$x.ispXmlGetFieldVal(dobj, 'ERROR_INFO MESSAGE', "", 0));


                           $('#txtOBAccountNumber').focus();
                       }


                   } else {

                       if ($(AppOBError).text() == 'Enter ID number' || $(AppOBError).text() == 'Invalid account number') {
                           $(AppOBError).text("Please enter valid account number");
                           $('#txtOBAccountNumber').attr('class', 'form-control inpError');
                           $('#txtOBAccountNumber').focus();
                       } else {
                           $(AppOBError).text("Please enter valid PIN number");
                           $('#txtOBPIN').attr('class', 'form-control inpErrorPwd');
                           $('#txtOBPIN').focus();

                       }

                   }

               }
           }
       }

       $(function (e) {
           $('#txtOBAccountNumber').keyup(function (e) {
               if ((e.which == 13) || (e.keyCode == 13)) {
                   DoOBLogin();
                   $("#btnOBLogin").click();
               }

           });
           $("#txtOBPIN").keyup(function (e) {
               if ((e.which == 13) || (e.keyCode == 13)) {
                   DoOBLogin();
                   $("#btnOBLogin").click();
               }

           });
           $("#btnOBLogin").keyup(function (e) {
               if ((e.which == 13) || (e.keyCode == 13)) {
                   DoOBLogin();
                   $("#btnOBLogin").click();
               }

           });

       });
       function LocatePrimaryAddr(AddType, AddNewRow) {

           var iMaxIdx = parent.$x.ispXmlGetRecCount(parent.$g.xmlAccount, 'NAME_ADDRESS', '');

           var iFirstEmptyRow = -1;

           for (idx = 0; idx < iMaxIdx; idx++) {
               if (iFirstEmptyRow == -1 &&
                       parent.$x.ispXmlGetFieldVal(parent.$g.xmlAccount, 'NAME_ADDRESS ADDRESS_TYPE', '', idx) == '0') {
                   iFirstEmptyRow = idx;
               }		//if

               if (parent.$x.ispXmlGetFieldVal(parent.$g.xmlAccount, 'NAME_ADDRESS ADDRESS_TYPE', '', idx) == AddType) {

                   if (parent.$x.ispXmlGetFieldVal(parent.$g.xmlAccount, 'NAME_ADDRESS RELATIONSHIP_CODE', '', idx) == '0') {

                       return idx;
                   }

                   //if
               }		//if
           }		//for

           if (iFirstEmptyRow == -1 && AddNewRow == true) {
               iFirstEmptyRow = iMaxIdx;


               var xmlTemp = parent.$g.getXmlDocObj();
               xmlTemp.xml = parent.$x.ispXmlGetRecordXml(parent.$g.xmlTemplate, "NAME_ADDRESS", 0);

               parent.$x.ispAppendNodeXml(parent.$g.xmlAccount, 'ACCTTEMPLATE', 0, xmlTemp, 'NAME_ADDRESS', 0);


           }		//if
           return iFirstEmptyRow;
       }		//locatePrimaryAddr
       function getLoginName() {
           addrIdx = LocatePrimaryAddr('60');

           var uName = parent.$x.ispXmlGetFieldVal(parent.$g.xmlAccount, 'NAME', '', addrIdx);
           if (uName.indexOf("*") >= 0) {
               uName = uName.replace(/\*/g, " ");
           }
           parent.fillUserAfterLogin(true, uName);
       }

       function ClickHelp(sLink) {
           window.open(sLink)
       }
    </script>

</head>
<body>

    <div class="container-fluid no-padding">
        <div id="divOBLogin" style="display: none;" class="block3">
            <%--<div class="col-lg-8">--%>
                 <%--<p style="font: 14px/18px Verdana;font-weight:bold;">Use & Occupancy tax returns prior to 2014 must be obtained via customer service <br />at 215 686-6600 or <a style="cursor:pointer;font-weight:normal" href="mailto:revenue@phila.gov"><u>revenue@phila.gov</u></a>. All other tax returns, prior to 2012, can be <br />obtained via our <a style="cursor:pointer" onclick="ClickHelp('https://beta.phila.gov/services/payments-assistance-taxes/tax-forms-instructions/ ')">Tax Forms</a> page or by contacting customer service. <span style="color:#FF0000">These returns <br />cannot be filed online</span></p>--%>
           <%-- </div>--%>
         <div class="smaller-container">
          <div class="row">
             
            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2" style="display: none;" id="LogOBLogin">
                
                <div class="blue_base_box" style="margin-top:10px !important">
                    <h2>Taxpayer Information  |   <span>Outstanding Balance</span>  </h2>

                    <div class="inner_white-panel">
                        <div class="row">
                            <div class="col-lg-12 col-lg-offset-0">
                                <div id="AppOBError" class="errormsg no-padding" style="display: block;"></div>
                            </div>
                        </div>
                        <div class="contentsection">


                            <h4>Please enter your Philadelphia Tax Account Number, Employer Identification Number (EIN)or Social Security Number (SSN) as your Tax Account Id.</h4>

                            <div class="clearfix"></div>

                            <div class="row">

                                <div class="col-lg-12">

                                    <form class="form-horizontal login_form">
                                        <div class="form-group text-left-custom">
                                            <label for="inputEmail3" class="col-sm-3 control-label text-left-custom">Tax account ID : </label>
                                            <div class="col-sm-9">
                                               
                                                <input type="text" name="txtOBAccountNumber" class="form-control input-sm" id="txtOBAccountNumber" onchange="ValidateOBLogin()" maxlength="9" size="14" value="" />

                                            </div>
                                        </div>
                                        <div class="form-group text-left-custom">
                                            <label for="inputPassword3" class="col-sm-3 control-label text-left-custom">PIN :</label>
                                            <div class="col-sm-6">
                                              
                                                <input type="password" id="txtOBPIN" class="form-control input-sm" maxlength="13" size="15" value="" onchange="ValidateOBLogin()" style="border: Red; width:100% !important;" />
                                               </div>
                                           
                                            
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-4 col-sm-6">
                                              
                                                <input type="button" class="btn btn-default submit_button" value="Submit" id="btnOBLogin" onclick="return DoOBLogin();" />
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
          </div>
        </div>
    </div>

</body>
</html>