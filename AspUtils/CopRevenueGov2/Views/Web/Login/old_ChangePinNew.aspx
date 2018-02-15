﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html>

<html>
<head>
    <script  type="text/javascript" language="javascript" >
        var arrChangePinErr = new Array()

        function DisplayChangePin() {
            $('#LogChangePin').css("display", "block");
            $('#AppHeaderChangePwd').html(txtHeader + '<Font class=hdrMedium>|change pin</Font>');
            $('#txtPcOldPin').val('');
            $('#txtPcNewPin1').val('');
            $('#txtPcNewPin2').val('');
            LoadChangePinError();
            $('#txtPcOldPin').focus();
        }


        function LoadChangePinError() {
            var i = 0;

            arrChangePinErr[i++] = [txtPcOldPin, 'txtPcOldPin.value == ""', 'Enter Old PIN'];
            arrChangePinErr[i++] = [txtPcOldPin, 'regInteger.exec(txtPcOldPin.value) != txtPcOldPin.value', 'Old PIN must be an Integer'];
            arrChangePinErr[i++] = [txtPcOldPin, 'regInteger.exec(txtPcOldPin.value) == 0', 'Old PIN must not be zero'];
            arrChangePinErr[i++] = [txtPcOldPin, 'txtPcOldPin.value != parent.$x.ispXmlGetFieldVal(parent.$g.xmlAccount, "ENTITY_INFO PIN", "", 0)', 'Old PIN does not match Current PIN'];

            arrChangePinErr[i++] = [txtPcNewPin1, 'txtPcNewPin1.value == ""', 'Enter New PIN'];
            arrChangePinErr[i++] = [txtPcNewPin1, 'regInteger.exec(txtPcNewPin1.value) != txtPcNewPin1.value', 'New PIN must be an Integer'];
            arrChangePinErr[i++] = [txtPcNewPin1, 'regInteger.exec(txtPcNewPin1.value) == 0', 'New PIN must not be zero'];

            arrChangePinErr[i++] = [txtPcNewPin2, 'txtPcNewPin2.value == ""', 'Enter Confirm PIN'];
            arrChangePinErr[i++] = [txtPcNewPin2, 'regInteger.exec(txtPcNewPin2.value) != txtPcNewPin2.value', 'Confirm PIN must be an Integer'];
            arrChangePinErr[i++] = [txtPcNewPin2, 'regInteger.exec(txtPcNewPin2.value) == 0', 'Confirm PIN must not be zero'];
            arrChangePinErr[i++] = [txtPcNewPin2, 'txtPcNewPin1.value != txtPcNewPin2.value', 'Confirm PIN does not match New PIN'];

        }


        function ValidateChangePin() {
            var changepin = ispSetInputErr(arrChangePinErr);
            $(parent.AppError).text(changepin);
        }


        var oAcctInfo = parent.$g.getXmlDocObj();

        function DoChangePin() {

            ValidateChangePin();

            if ($(parent.AppError).text() == '') {
                parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, '3', "ENTITY_INFO FUNCTION_CODE", '', 0);
                parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, txtPcNewPin1.value, "ENTITY_INFO PIN", '', 0);
                parent.$x.ispXmlSetFieldVal(parent.$g.xmlAccount, 'Y', "ENTITY_INFO FORCEPINCHG", '', 0);

                ispCallXMLForm(parent.$g.xmlAccount, oAcctInfo, "AccountInfo");

                parent.$g.xmlAccount.loadXML(oAcctInfo.xml);

                if (parent.$x.ispXmlGetFieldVal(parent.$g.xmlAccount, 'ERROR_INFO MESSAGE', "", 0) == "") {
                   
                   parent.setFrameUrl('Acct/ApplyMain');
                    // parent.DocWin.location.href = '../Acct/ApplyMain';
                } else {
                    var errmsg = parent.$x.ispXmlGetFieldVal(parent.$g.xmlAccount, 'ERROR_INFO MESSAGE', "", 0);
                    $(parent.AppError).text(errmsg);
                    $(parent.AppError).focus();

                }
            } else {
                var apperr = $(parent.AppError).text();
                if ((apperr.indexOf("New") != -1) && (apperr.indexOf("Confirm") != -1)) {
                    $('#txtPcNewPin1').focus();
                } else {
                    if (apperr.indexOf("Confirm") != -1) {
                        $('#txtPcNewPin2').focus();

                    } else {
                        $('#txtPcOldPin').focus();
                    }
                }
            }
        }
</script>
    <title></title>
</head>
<body>
    <div class="tab_container">
        <div style="display: none;" id="LogChangePin" name="LogChangePin" class="tab_content">
            <h2 id="AppHeaderChangePwd"></h2>
           	
            <div class="thankyou">
           
             <h4>Your PIN was generated by the Philadelphia Department of Revenue. For security purposes
                        we are requiring you to change your PIN.<br>
                        <font>* </font>Required Field</h4>
            
            
            
            <div class="login_form">
            	
                  <div class="form_segment">
                        
                        <label> Old PIN* : </label>
                        
                        <div class="here_input">
                            
                            <input type="PASSWORD" id="txtPcOldPin" name="txtPcOldPin" maxlength="13" 
                        onchange="ValidateChangePin()" />
                            <div class="clear"></div>
                        </div>
                                                
                        <div class="clear"></div>
              
              </div>
              
              
             		 <div class="form_segment">
                        
                        <label>New PIN* : </label>
                        
                        <div class="here_input">
                        <input type="PASSWORD" id="txtPcNewPin1" name="txtPcNewPin1" maxlength="13" 
                        onchange="ValidateChangePin()">
                           

                            <div class="clear"></div>
                        </div>
                        
                       
                        
                        <div class="clear"></div>
              
              </div>
                <div class="form_segment">
                        
                        <label> Confirm PIN* : </label>
                        
                        <div class="here_input">
                        
                            <input type="PASSWORD" id="txtPcNewPin2" name="txtPcNewPin2" maxlength="13" 
                        onchange="ValidateChangePin()">

                            <div class="clear"></div>
                        </div>
                        
                       
                        
                        <div class="clear"></div>
              
              </div>
              

              
              
              <div class="form_segment">
                        
                        <label>&nbsp;</label>
                        
                        <div class="here_input">
                        	
                             <input id="btnApply" name="btnApply" type="button" onclick="DoChangePin()" class="submit_button"
                            size="48" value="Submit">
                        </div>
                        
                        <div class="clear"></div>
              
              </div>
              
            	
               
                <div class="clear"></div>
            </div>
<br />
<br />

            </div>
            
            
            
            <div class="quicklink_btm_gen"></div>
        </div>
     	
    </div>
</body>
</html>