﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html>

<html>
<head>
       <title></title>
    <script language='javascript' type="text/javascript">
        //EGOVWEB-72 - Change MaxLength from 10 to 13 on textboxes for currency fields
        var arrSchdC1Err = new Array();
        var xSecScTblC1 = 'BPT_TBL_C1 ';
        var xFldScC1TbLi1CoA = xSecScTblC1 + 'INVENTORIES_PHILA';
        var xFldScC1TbLi1CoB = xSecScTblC1 + 'INVENTORIES_ALL';
        var xFldScC1TbLi2CoA = xSecScTblC1 + 'LAND_BLDGS_PHILA';
        var xFldScC1TbLi2CoB = xSecScTblC1 + 'LAND_BLDGS_ALL';
        var xFldScC1TbLi3CoA = xSecScTblC1 + 'MACHINERY_PHILA';
        var xFldScC1TbLi3CoB = xSecScTblC1 + 'MACHINERY_ALL';
        var xFldScC1TbLi4CoA = xSecScTblC1 + 'OTHER_ASSESTS_PHILA';
        var xFldScC1TbLi4CoB = xSecScTblC1 + 'OTHER_ASSESTS_ALL';
        var xFldScC1TbLi5CoA = xSecScTblC1 + 'RENTED_PROPERTY_PHILA';
        var xFldScC1TbLi5CoB = xSecScTblC1 + 'RENTED_PROPERTY_ALL';
        var xFldScC1TbLi6CoA = xSecScTblC1 + 'TOTAL_AVG_PHILA';
        var xFldScC1TbLi7CoB = xSecScTblC1 + 'TOTAL_AVG_ALL';

        var xSecScC1 = 'BPT_SCH_C1 ';
        var xFldScCLi8a = xSecScC1 + 'TOTAL_AVG_PHILA';
        var xFldScCLi8b = xSecScC1 + 'TOTAL_AVG_ALL';
        var xFldScCLi8c = xSecScC1 + 'PROPERTY_FACTOR_PHILA';
        var xFldScCLi9a = xSecScC1 + 'PAYROLL_PHILA';
        var xFldScCLi9b = xSecScC1 + 'PAYROLL_ALL';
        var xFldScCLi9c = xSecScC1 + 'PAYROLL_FACTOR_PHILA';
        var xFldScCLi10a = xSecScC1 + 'RECEIPTS_PHILA';
        var xFldScCLi10b = xSecScC1 + 'RECEIPTS_ALL';
        var xFldScCLi10c = xSecScC1 + 'RECEIPTS_FACTOR_PHILA';
        var xFldScCLi11 = xSecScC1 + 'TOTAL_FACTORS';
        var xFldScCLi12 = xSecScC1 + 'AVERAGE_FACTORS';


        function LoadErrorBPTlfSchdC1() {
            var i = 0;
            arrSchdC1Err[i++] = [txtBPT_SchC1_1A, 'txtBPT_SchC1_1A.value == ""', 'Answer Question 1, Column A'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_1A, 'ispValue(txtBPT_SchC1_1A.value) == false', 'Value for Question 1, Column A must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_1A, 'ispNegativeNumber(txtBPT_SchC1_1A.value) == false', 'Value for Question 1, Column A must NOT be negative'];;
            arrSchdC1Err[i++] = [txtBPT_SchC1_1B, 'txtBPT_SchC1_1B.value == ""', 'Answer Question 1, Column B'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_1B, 'ispValue(txtBPT_SchC1_1B.value) == false', 'Value for Question 1, Column B must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_1B, 'ispNegativeNumber(txtBPT_SchC1_1B.value) == false', 'Value for Question 1, Column B must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_1B, '(PrepForMath(txtBPT_SchC1_1B.value) < PrepForMath(txtBPT_SchC1_1A.value)) == true', 'Value for Question 1b must be equal to or greater than Question 1a'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_2A, 'txtBPT_SchC1_2A.value == ""', 'Answer Question 2, Column A'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_2A, 'ispValue(txtBPT_SchC1_2A.value) == false', 'Value for Question 2, Column A must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_2A, 'ispNegativeNumber(txtBPT_SchC1_2A.value) == false', 'Value for Question 2, Column A must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_2B, 'txtBPT_SchC1_2B.value == ""', 'Answer Question 2, Column B'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_2B, 'ispValue(txtBPT_SchC1_2B.value) == false', 'Value for Question 2, Column B must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_2B, 'ispNegativeNumber(txtBPT_SchC1_2B.value) == false', 'Value for Question 2, Column B must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_2B, '(PrepForMath(txtBPT_SchC1_2B.value) < PrepForMath(txtBPT_SchC1_2A.value)) == true', 'Value for Question 2b must be equal to or greater than Question 2a'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_3A, 'txtBPT_SchC1_3A.value == ""', 'Answer Question 3, Column A'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_3A, 'ispValue(txtBPT_SchC1_3A.value) == false', 'Value for Question 3, Column A must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_3A, 'ispNegativeNumber(txtBPT_SchC1_3A.value) == false', 'Value for Question 3, Column A must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_3B, 'txtBPT_SchC1_3B.value == ""', 'Answer Question 3, Column B'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_3B, 'ispValue(txtBPT_SchC1_3B.value) == false', 'Value for Question 3, Column B must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_3B, 'ispNegativeNumber(txtBPT_SchC1_3B.value) == false', 'Value for Question 3, Column B must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_3B, '(PrepForMath(txtBPT_SchC1_3B.value) < PrepForMath(txtBPT_SchC1_3A.value)) == true', 'Value for Question 3b must be equal to or greater than Question 3a'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_4A, 'txtBPT_SchC1_4A.value == ""', 'Answer Question 4, Column A'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_4A, 'ispValue(txtBPT_SchC1_4A.value) == false', 'Value for Question 4, Column A must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_4A, 'ispNegativeNumber(txtBPT_SchC1_4A.value) == false', 'Value for Question 4, Column A must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_4B, 'txtBPT_SchC1_4B.value == ""', 'Answer Question 4, Column B'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_4B, 'ispValue(txtBPT_SchC1_4B.value) == false', 'Value for Question 4, Column B must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_4B, 'ispNegativeNumber(txtBPT_SchC1_4B.value) == false', 'Value for Question 4, Column B must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_4B, '(PrepForMath(txtBPT_SchC1_4B.value) < PrepForMath(txtBPT_SchC1_4A.value)) == true', 'Value for Question 4b must be equal to or greater than Question 4a'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_5A, 'txtBPT_SchC1_5A.value == ""', 'Answer Question 5, Column A'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_5A, 'ispValue(txtBPT_SchC1_5A.value) == false', 'Value for Question 5, Column A must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_5A, 'ispNegativeNumber(txtBPT_SchC1_5A.value) == false', 'Value for Question 5, Column A must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_5B, 'txtBPT_SchC1_5B.value == ""', 'Answer Question 5, Column B'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_5B, 'ispValue(txtBPT_SchC1_5B.value) == false', 'Value for Question 5, Column B must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_5B, 'ispNegativeNumber(txtBPT_SchC1_5B.value) == false', 'Value for Question 5, Column B must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_5B, '(PrepForMath(txtBPT_SchC1_5B.value) < PrepForMath(txtBPT_SchC1_5A.value)) == true', 'Value for Question 5b must be equal to or greater than Question 5a'];
            //arrSchdC1Err[i++] = [lblBPT_SchC1_8B, '(PrepForMath($(lblBPT_SchC1_8B).text()) < PrepForMath($(lblBPT_SchC1_8A).text())) == true', 'Value 8b must be equal to or greater than the value of 8a'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_9A, 'txtBPT_SchC1_9A.value == ""', 'Answer Question 9a'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_9A, 'ispValue(txtBPT_SchC1_9A.value) == false', 'Value for Question 9a must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_9A, 'ispNegativeNumber(txtBPT_SchC1_9A.value) == false', 'Value for Question 9a must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_9B, 'txtBPT_SchC1_9B.value == ""', 'Answer Question 9b'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_9B, 'ispValue(txtBPT_SchC1_9B.value) == false', 'Value for Question 9b must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_9B, 'ispNegativeNumber(txtBPT_SchC1_9B.value) == false', 'Value for Question 9b must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_9B, '(PrepForMath(txtBPT_SchC1_9B.value) < PrepForMath(txtBPT_SchC1_9A.value)) == true', 'Value for Question 9b must be equal to or greater than Question 9a'];

            arrSchdC1Err[i++] = [txtBPT_SchC1_10A, 'txtBPT_SchC1_10A.value == ""', 'Answer Question 10a'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_10A, 'ispValue(txtBPT_SchC1_10A.value) == false', 'Value for Question 10a must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_10A, 'ispNegativeNumber(txtBPT_SchC1_10A.value) == false', 'Value for Question 10a must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_10B, 'txtBPT_SchC1_10B.value == ""', 'Answer Question 10b'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_10B, 'ispValue(txtBPT_SchC1_10B.value) == false', 'Value for Question 10b must be numeric'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_10B, 'ispNegativeNumber(txtBPT_SchC1_10B.value) == false', 'Value for Question 10b must NOT be negative'];
            arrSchdC1Err[i++] = [txtBPT_SchC1_10B, '(PrepForMath(txtBPT_SchC1_10B.value) < PrepForMath(txtBPT_SchC1_10A.value)) == true', 'Value for Question 10b must be equal to or greater than Question 10a'];
        }		//LoadErrorBPTlfSchdC1

        function ClearBPTlfSchdC1() {
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi1CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi1CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi2CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi2CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi3CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi3CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi4CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi4CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi5CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi5CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi6CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScC1TbLi7CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi8a, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi8b, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi8c, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi9a, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi9b, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi9c, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi10a, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi10b, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi10c, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi11, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi12, '', 0);
        }		//ClearBPTlfSchdC1

        function PopulateXmlBPTlfSchdC1() {

            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_1A.value), xFldScC1TbLi1CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_1B.value), xFldScC1TbLi1CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_2A.value), xFldScC1TbLi2CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_2B.value), xFldScC1TbLi2CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_3A.value), xFldScC1TbLi3CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_3B.value), xFldScC1TbLi3CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_4A.value), xFldScC1TbLi4CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_4B.value), xFldScC1TbLi4CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_5A.value), xFldScC1TbLi5CoA, '', 0)
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_5B.value), xFldScC1TbLi5CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency($('#lblBPT_SchC1_6A').text()), xFldScC1TbLi6CoA, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency($('#lblBPT_SchC1_7B').text()), xFldScC1TbLi7CoB, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency($('#lblBPT_SchC1_8A').text()), xFldScCLi8a, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency($('#lblBPT_SchC1_8B').text()), xFldScCLi8b, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, $('#lblBPT_SchC1_8C').text(), xFldScCLi8c, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_9A.value), xFldScCLi9a, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_9B.value), xFldScCLi9b, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, $('#lblBPT_SchC1_9C').text(), xFldScCLi9c, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_10A.value), xFldScCLi10a, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, stripCurrency(txtBPT_SchC1_10B.value), xFldScCLi10b, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, $('#lblBPT_SchC1_10C').text(), xFldScCLi10c, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, $('#lblBPT_SchC1_11').text(), xFldScCLi11, '', 0);
            parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, $('#lblBPT_SchC1_12').text(), xFldScCLi12, '', 0);
        }		//PopulateXmlBPTlfSchdC1

        function PopulateBPTlfSchdC1() {
            txtBPT_SchC1_1A.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi1CoA, '', 0), 0);
            txtBPT_SchC1_1B.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi1CoB, '', 0), 0);
            txtBPT_SchC1_2A.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi2CoA, '', 0), 0);
            txtBPT_SchC1_2B.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi2CoB, '', 0), 0);
            txtBPT_SchC1_3A.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi3CoA, '', 0), 0);
            txtBPT_SchC1_3B.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi3CoB, '', 0), 0);
            txtBPT_SchC1_4A.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi4CoA, '', 0), 0);
            txtBPT_SchC1_4B.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi4CoB, '', 0), 0);
            txtBPT_SchC1_5A.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi5CoA, '', 0), 0);
            txtBPT_SchC1_5B.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi5CoB, '', 0), 0);
            $('#lblBPT_SchC1_6A').text(ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi6CoA, '', 0), 0));
            $('#lblBPT_SchC1_7B').text(ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScC1TbLi7CoB, '', 0), 0));
            $('#lblBPT_SchC1_8A').text(ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi8a, '', 0), 0));
            $('#lblBPT_SchC1_8B').text(ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi8b, '', 0), 0));
            $('#lblBPT_SchC1_8C').text(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi8c, '', 0));
            txtBPT_SchC1_9A.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi9a, '', 0), 0);
            txtBPT_SchC1_9B.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi9b, '', 0), 0);
            $('#lblBPT_SchC1_9C').text(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi9c, '', 0));
            txtBPT_SchC1_10A.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi10a, '', 0), 0);
            txtBPT_SchC1_10B.value = ispFormatMoney(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi10b, '', 0), 0);
            $('#lblBPT_SchC1_10C').text(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi10c, '', 0));
            $('#lblBPT_SchC1_10D').text($('#lblBPT_SchC1_10C').text());
            $('#lblBPT_SchC1_11').text(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi11, '', 0));
            //EGOVWEB-63
            if (PrepForMath($('#lblBPT_SchC1_11').text()) == 0) {
                parent.$x.ispXmlSetFieldVal(parent.$g.xmlBPTlf, 0, xFldScCLi12, '', 0);
            }		//if
            $('#lblBPT_SchC1_12').text(parent.$x.ispXmlGetFieldVal(parent.$g.xmlBPTlf, xFldScCLi12, '', 0));

            if ($('#lblBPT_SchC1_8C').text() == '') {
                $('#lblBPT_SchC1_8C').text(parseFloat(0).toFixed(6));
            }
            else {
                $('#lblBPT_SchC1_8C').text(parseFloat($('#lblBPT_SchC1_8C').text()).toFixed(6));
            }
            if ($('#lblBPT_SchC1_9C').text() == '') { $('#lblBPT_SchC1_9C').text(parseFloat(0).toFixed(6)); }
            else { $('#lblBPT_SchC1_9C').text(parseFloat($('#lblBPT_SchC1_9C').text()).toFixed(6)); }
            if ($('#lblBPT_SchC1_10C').text() == '') { $('#lblBPT_SchC1_10C').text(parseFloat(0).toFixed(6)); }
            else { $('#lblBPT_SchC1_10C').text(parseFloat($('#lblBPT_SchC1_10C').text()).toFixed(6)); }
            if ($('#lblBPT_SchC1_10D').text() == '') { $('#lblBPT_SchC1_10D').text(parseFloat(0).toFixed(6)); }
            else { $('#lblBPT_SchC1_10D').text(parseFloat($('#lblBPT_SchC1_10D').text()).toFixed(6)); }
            if ($('#lblBPT_SchC1_11').text() == '') { $('#lblBPT_SchC1_11').text(parseFloat(0).toFixed(6)); }
            else { $('#lblBPT_SchC1_11').text(parseFloat($('#lblBPT_SchC1_11').text()).toFixed(6)); }
            if ($('#lblBPT_SchC1_12').text() == '') { $('#lblBPT_SchC1_12').text(parseFloat(0).toFixed(6)); }
            else { $('#lblBPT_SchC1_12').text(parseFloat($('#lblBPT_SchC1_12').text()).toFixed(6)); }
        }		//PopulateBPTlfSchdC1

        function FieldLockBPTlfSchdC1(bDisabled) {
            $('#txtBPT_SchC1_1A').attr('disabled', bDisabled);
            $('#txtBPT_SchC1_1B').attr('disabled', bDisabled);//.disabled = bDisabled;
            $('#txtBPT_SchC1_2A').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_2B').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_3A').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_3B').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_4A').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_4B').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_5A').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_5B').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_6A').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_7B').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_8A').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_8B').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_8C').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_9A').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_9B').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_9C').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_10A').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#txtBPT_SchC1_10B').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_10C').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_10D').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_11').attr('disabled', bDisabled);//.disabled = bDisabled
            $('#lblBPT_SchC1_12').attr('disabled', bDisabled);//.disabled = bDisabled
        }		//FieldLockBPTlfSchdC1

        function PerformCalcsBPTlfSchdC1() {
            CalcSchdC1Line7b();		//Calculate lines 6a and 7a
            CalcSchdC1Line8c();
            CalcSchdC1Line9c();
            CalcSchdC1Line10c();
            CalcSchdC1Line12();		//Calculate lines 11 and 12
        }		//PerformCalcsBPTlfSchdC1

        function CalcSchdC1Line7b() {
            //20100415 EHD - Removed the averaging for line 6A and 7B it is just a sum of the fields
            //	var temp = 0
            //Column A
            if (txtBPT_SchC1_1A.value != '' && txtBPT_SchC1_2A.value != '' && txtBPT_SchC1_3A.value != '' &&
                    txtBPT_SchC1_4A.value != '' && txtBPT_SchC1_5A.value != '') {
                /*		if (PrepForMath(txtBPT_SchC1_1A.value) > 0){temp = temp + 1}
                        if (PrepForMath(txtBPT_SchC1_2A.value) > 0){temp = temp + 1}
                        if (PrepForMath(txtBPT_SchC1_3A.value) > 0){temp = temp + 1}
                        if (PrepForMath(txtBPT_SchC1_4A.value) > 0){temp = temp + 1}
                        if (PrepForMath(txtBPT_SchC1_5A.value) > 0){temp = temp + 1}
                        if (temp == 0) {
                            lblBPT_SchC1_6A.innerText = ispFormatMoney(0, 0)
                        } else {	*/
                var total_6a = PrepForMath(txtBPT_SchC1_1A.value) +
                            PrepForMath(txtBPT_SchC1_2A.value) + PrepForMath(txtBPT_SchC1_3A.value) +
                            PrepForMath(txtBPT_SchC1_4A.value) + PrepForMath(txtBPT_SchC1_5A.value);

                $('#lblBPT_SchC1_6A').html(ispFormatMoney(total_6a, 0));

                //		}		//if
            }		//if
            //Column B
            //	temp = 0
            if (txtBPT_SchC1_1B.value != '' && txtBPT_SchC1_2B.value != '' && txtBPT_SchC1_3B.value != '' &&
                    txtBPT_SchC1_4B.value != '' && txtBPT_SchC1_5B.value != '') {
                /*		if (PrepForMath(txtBPT_SchC1_1B.value) > 0){temp = temp + 1}
                        if (PrepForMath(txtBPT_SchC1_2B.value) > 0){temp = temp + 1}
                        if (PrepForMath(txtBPT_SchC1_3B.value) > 0){temp = temp + 1}
                        if (PrepForMath(txtBPT_SchC1_4B.value) > 0){temp = temp + 1}
                        if (PrepForMath(txtBPT_SchC1_5B.value) > 0){temp = temp + 1}
                        if (temp == 0) {
                            lblBPT_SchC1_7B.innerText = ispFormatMoney(0, 0)
                        } else {	*/
                var total_7b = PrepForMath(txtBPT_SchC1_1B.value) +
                            PrepForMath(txtBPT_SchC1_2B.value) + PrepForMath(txtBPT_SchC1_3B.value) +
                            PrepForMath(txtBPT_SchC1_4B.value) + PrepForMath(txtBPT_SchC1_5B.value);

                $('#lblBPT_SchC1_7B').html(ispFormatMoney(total_7b, 0));
                //		}		//if
            }		//if
        }		//CalcSchdC1Line7b

        function CalcSchdC1Line8c() {
            if ($('#lblBPT_SchC1_6A').text() != '' && $('#lblBPT_SchC1_7B').text() != '') {
                $('#lblBPT_SchC1_8A').text($('#lblBPT_SchC1_6A').text());
                $('#lblBPT_SchC1_8B').text($('#lblBPT_SchC1_7B').text());
                if (PrepForMath($('#lblBPT_SchC1_8A').text()) == 0 && PrepForMath($('#lblBPT_SchC1_8B').text()) == 0 || PrepForMath($('#lblBPT_SchC1_8B').text()) == 0) {
                    $('#lblBPT_SchC1_8C').text(parseFloat(0).toFixed(6));
                } else {
                    $('#lblBPT_SchC1_8C').text(parseFloat(PrepForMath($('#lblBPT_SchC1_8A').text()) /
                            PrepForMath($('#lblBPT_SchC1_8B').text())).toFixed(6));
                }		//if
            }		//if
        }		//CalcSchdC1Line8c

        function CalcSchdC1Line9c() {
            if (txtBPT_SchC1_9A.value != '' && txtBPT_SchC1_9B.value != '') {
                if (PrepForMath(txtBPT_SchC1_9A.value) == 0 && PrepForMath(txtBPT_SchC1_9B.value) == 0 || PrepForMath(txtBPT_SchC1_9B.value) == 0) {
                    $('#lblBPT_SchC1_9C').text(parseFloat(0).toFixed(6));
                }
                else if (PrepForMath(txtBPT_SchC1_9B.value) >= PrepForMath(txtBPT_SchC1_9A.value)) {
                    $('#lblBPT_SchC1_9C').text(parseFloat(PrepForMath(txtBPT_SchC1_9A.value) /
                            PrepForMath(txtBPT_SchC1_9B.value)).toFixed(6));
                }
                else {
                    /*			AppError.innerText = 'The line 9b must be equal or greater than line 9a'
                                txtBPT_SchC1_9B.className = 'inpError'
                                txtBPT_SchC1_9B.focus()*/
                }		//if
            }		//if
        }		//CalcSchdC1Line9c

        function CalcSchdC1Line10c() {
            if (txtBPT_SchC1_10A.value != '' && txtBPT_SchC1_10B.value != '') {
                if (PrepForMath(txtBPT_SchC1_10A.value) == 0 && PrepForMath(txtBPT_SchC1_10B.value) == 0 || PrepForMath(txtBPT_SchC1_10B.value) == 0) {
                    $('#lblBPT_SchC1_10C').text(parseFloat(0).toFixed(6));
                } else if (PrepForMath(txtBPT_SchC1_10B.value) >= PrepForMath(txtBPT_SchC1_10A.value)) {
                    $('#lblBPT_SchC1_10C').text(parseFloat(PrepForMath(txtBPT_SchC1_10A.value) /
                            PrepForMath(txtBPT_SchC1_10B.value)).toFixed(6));
                    $('#lblBPT_SchC1_10D').text($('#lblBPT_SchC1_10C').text());
                } else {
                    /*			AppError.innerText = 'The line 10b must be equal or greater than line 10a'
                                txtBPT_SchC1_10B.className = 'inpError'
                                txtBPT_SchC1_10B.focus()*/

                }		//if
            }		//if
        }		//CalcSchdC1Line10c

        function CalcSchdC1Line12() {
            var temp = 0;
            if ($('#lblBPT_SchC1_8C').text() != '' && $('#lblBPT_SchC1_9C').text() != '' &&
                    $('#lblBPT_SchC1_10C').text() != '' && $('#lblBPT_SchC1_10D').text()) {
                if (PrepForMath($('#lblBPT_SchC1_8C').text()) == 0 && PrepForMath($('#lblBPT_SchC1_9C').text()) == 0 &&
                        PrepForMath($('#lblBPT_SchC1_10C').text()) == 0 && PrepForMath($('#lblBPT_SchC1_10D').text()) == 0) {
                    $('#lblBPT_SchC1_11').text(parseFloat(0).toFixed(6));
                    $('#lblBPT_SchC1_12').text(parseFloat(0).toFixed(6));
                } else {
                    $('#lblBPT_SchC1_11').text(parseFloat(PrepForMath($('#lblBPT_SchC1_8C').text()) +
                            PrepForMath($('#lblBPT_SchC1_9C').text()) + PrepForMath($('#lblBPT_SchC1_10C').text()) +
                            PrepForMath($('#lblBPT_SchC1_10D').text())).toFixed(6));
                    //20100415 EHD - Changed the method to calc factors
                    /*			if (PrepForMath(lblBPT_SchC1_8C.innerText) > 0){temp = temp + 1}
                                if (PrepForMath(lblBPT_SchC1_9C.innerText) > 0){temp = temp + 1}
                                if (PrepForMath(lblBPT_SchC1_10C.innerText) > 0){temp = temp + 1}
                                if (PrepForMath(lblBPT_SchC1_10D.innerText) > 0){temp = temp + 1}	*/

                    if (PrepForMath($('#lblBPT_SchC1_8A').text()) + PrepForMath($('#lblBPT_SchC1_8B').text()) > 0) { temp = temp + 1 }
                    if (PrepForMath(txtBPT_SchC1_9A.value) + PrepForMath(txtBPT_SchC1_9B.value) > 0) { temp = temp + 1 }
                    //if (PrepForMath($('#lblBPT_SchC1_10C').text()) > 0){temp = temp + 1;}
                    //if (PrepForMath($('#lblBPT_SchC1_10D').text()) > 0){temp = temp + 1;}
                    if (PrepForMath(txtBPT_SchC1_10B.value) > 0) { temp = temp + 2; }

                    $('#lblBPT_SchC1_12').text(parseFloat($('#lblBPT_SchC1_11').text() / temp).toFixed(6));	//temp
                }		//if
                if (sPrevWrkSht == 'SCHDA') {
                    $('#lblBPT_SchA_6').text(parseFloat($('#lblBPT_SchC1_12').text()).toFixed(6));
                    PerformCalcsBPTlfSchdA();
                } else if (sPrevWrkSht == 'SCHDB') {
                    $('#lblBPT_SchB_6').text(parseFloat($('#lblBPT_SchC1_12').text()).toFixed(6));
                    PerformCalcsBPTlfSchdB();
                }		//if
            }		//if
        }		//CalcSchdC1Line10c
</script>

</head>
<body>
    <div class="form_segment" id="NPT_WrkNR_3" style="DISPLAY: none;">
     <div class="clear"></div>
        <table id="hor-zebra" summary="Employee Pay Sheet" class="no_magin_bothside">
                   
                    <tbody>
                        
                        <tr class="even">
                        	<td colspan="2"><strong>Calculations of Average Values of Real and Tangible Property Used in Business</strong></td>
                            <td width="20%" align="center"><strong>Column A<br />
                            Within Philadelphia</strong></td>
                            <td width="20%" align="center"><strong>Column B<br />
							Total Everywhere</strong></td>
                        </tr>
                        
                        
                        <tr class="odd">
                        	<td width="4%">1.</td>
                            <td width="56%">Inventories of Raw Materials, Work in Process and Finished Goods </td>
                            <td width="20%" align="center"><INPUT class="" id=txtNPT_NR_3_1A style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                            <td width="20%" class="no_border_right" align="center"><INPUT class="" id=txtNPT_NR_3_1B style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                        	
                        </tr>
                        <tr class="even">
                            <td width="4%">2.</td>
                            <td width="56%">Land and Buildings Owned (at average orginal cost)  </td>
                            <td width="20%" align="center"><INPUT class="" id=txtNPT_NR_3_2A style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                            <td width="20%" class="no_border_right" align="center"><INPUT class="" id=txtNPT_NR_3_2B style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                        </tr>
                        <tr class="odd">
                          <td>3.</td>
                          <td>Machinery and Equipment Owned (at average orginal cost) Finished Goods</td>
                          <td width="20%" align="center"><INPUT class="" id=txtNPT_NR_3_3A style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                          <td width="20%" class="no_border_right" align="center"><INPUT class="" id=txtNPT_NR_3_3B style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                        </tr>
                        <tr class="even">
                          <td>4.</td>
                          <td>Other Tangiable Assets Owned (at average orginal cost) </td>
                          <td width="20%" align="center"><INPUT class="" id=txtNPT_NR_3_4A style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                          <td width="20%" class="no_border_right" align="center"><INPUT class="" id=txtNPT_NR_3_4B style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                        </tr>
                        <tr class="odd">
                          <td>5.</td>
                          <td>Rented Property (at 8 times the net annual rental)</td>
                          <td width="20%" align="center"><INPUT class="" id=txtNPT_NR_3_5A style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                          <td width="20%" class="no_border_right" align="center"><INPUT class="" id=txtNPT_NR_3_5B style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")></td>
                        </tr>
                        <tr class="even">
                          <td>6.</td>
                          <td>Total average value of Property used WITHIN PHILADELPHIA</td>
                          <td width="20%" align="center"><LABEL id=lblNPT_NR_3_6A style="WIDTH: 100%"></LABEL></td>
                          <td width="20%" class="no_border_right" align="center"></td>
                        </tr>
                        <tr class="odd">
                          <td>7.</td>
                          <td>Total average value of Property used EVERYWHERE</td>
                          <td width="20%" align="center"></td>
                          <td width="20%" class="no_border_right" align="center"><LABEL id=lblNPT_NR_3_7B style="WIDTH: 100%"></LABEL></td>
                        </tr>
                        
                         <tr class="even">
                        	<td colspan="4"><strong>Computation of Apportionment Factors: </strong></td>
                        </tr>
                        
                        <tr class="odd">
                          <td>8a.</td>
                          <td colspan="2"> Total Average Value of Philadelphia Property from Column A, Line 6 above <span class="text_right"></span></td>
                          <td width="20%" class="no_border_right" align="center"><LABEL id=lblNPT_NR_3_8A style="WIDTH: 100%"></LABEL>
                          <div class="clear"></div></td>
                   
                        </tr>
                        <tr class="even">
                          <td>8b.</td>
                          <td colspan="2">Total Average Value of Property Everywhere from Column B, Line 7 above<span class="text_right">&nbsp;</span></td>
                          <td width="20%" class="no_border_right" align="center"><LABEL id=lblNPT_NR_3_8B style="WIDTH: 100%"></LABEL>
                          <div class="clear"></div></td>
                        </tr>
                        <tr class="odd">
                          <td>8c.</td>
                          <td colspan="2">Philadelphia Property Factor <span class="text_right">[Calculated - Line 8a Divided by Line 8b]</span></td>
                          <td width="20%" class="no_border_right" align="center"><LABEL id=lblNPT_NR_3_8C style="WIDTH: 100%"></LABEL>
                          <div class="clear"></div></td>
                        </tr>
                        <tr class="even">
                          <td>9a.</td>
                          <td colspan="2">Philadelphia Payroll <span class="text_right">&nbsp;</span></td>
                          <td width="20%" class="no_border_right" align="center"><INPUT class="" id=txtNPT_NR_3_9A style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")>
                          <div class="clear"></div></td>
                        </tr>
                        <tr class="odd">
                          <td>9b.</td>
                          <td colspan="2">Payroll Everywhere <span class="text_right">&nbsp;</span></td>
                          <td width="20%" class="no_border_right" align="center"><INPUT class="" id=txtNPT_NR_3_9B style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")>
                          <div class="clear"></div></td>
                        </tr>
                      <tr class="even">
                          <td>9c.</td>
                          <td colspan="2">Philadelphia Payroll Factor  <span class="text_right">[Calculated - Line 9a Divided by Line 9b]</span></td>
                          <td width="20%" class="no_border_right" align="center"><LABEL id=lblNPT_NR_3_9C style="WIDTH: 100%"></LABEL>
                          <div class="clear"></div></td>
                        </tr>
                      <tr class="odd">
                        <td>10a.</td>
                        <td colspan="2">Philadelphia receipts before BIR Statutory Exclusion </td>
                        <td class="no_border_right" align="center">     <INPUT class="" id=txtNPT_NR_3_10A style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")>    </td>        
                      </tr>
                      <tr class="even">
                        <td>10b.</td>
                        <td colspan="2">Gross Receipts Everywhere</td>
                        <td class="no_border_right" align="center">    <INPUT class="" id=txtNPT_NR_3_10B style="WIDTH: 100%" 
				onfocus=SetFocus() maxLength=13 onchange=ValidateWorksheet("NPT_NR_3")>  </td>            
                      </tr>
                      <tr class="odd">
                        <td>10c.</td>
                        <td colspan="2">Philadelphia Receipts Factor <span class="text_right">[Calculated - Line 10a Divided by Line 10b]</span></td>
                        <td class="no_border_right" align="center">  <LABEL id=lblNPT_NR_3_10C style="WIDTH: 100%"></LABEL>   </td>               
                      </tr>
                      
                      <tr class="even">
                        <td>11.</td>
                        <td colspan="2">TOTAL FACTORS <span class="text_right">[Calculated - Sum Lines 8c, 9c and 10c]</span></td>
                        <td width="20%" class="no_border_right" align="center"><LABEL id=lblNPT_NR_3_11 style="WIDTH: 100%"></LABEL>
                          <div class="clear"></div></td>          
                      </tr>
                      <tr class="odd">
                        <td>12.</td>
                        <td colspan="2">Philadelphia apportionment factor <span class="text_right">[Calculated - Line 11 Divided by applicable number of factors] </span></td>
                        <td width="20%" class="no_border_right" align="center"><LABEL id=lblNPT_NR_3_12 style="WIDTH: 100%"></LABEL>
                          <div class="clear"></div></td>              
                      </tr>
                      <tr class="even">
                          <tr >
                                            <td></td>
                                            <td colspan="3" align="right" class="no_border_right">
                                              
                               
                                 <input type="button" value="Return to Worksheet B," class="submit_button2" id="btnC1GoTo" onclick=ShowPage("Page1", "WrkB") />
                       
                                             </td>
                                        </tr>

                    </tbody>
                </table>
     <div class="clear"></div>
    </div>
</body>
</html>
