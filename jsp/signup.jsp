<%@ page import="java.util.List" %>
<%@ page import="com.zuora.api.*" %>
<%@ page import="com.zuora.api.SignUp.*" %>
<%@ page import="com.zuora.api.axis2.ZuoraServiceStub.*" %>

<%

String foo = "foox";
SignUp su = new SignUp(request, response);

%> 

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head id="Head1"><title> 
	Sign Up
</title></head> 
<body> 
 
    <span id="status"><%=su.getStatus()%></span> 
 
    <form name="Form1" method="post" action="signup.jsp" id="Form1"> 
    <h2> 
        Select a Product</h2> 
    <table> 
        <tr> 
            <td> 
                <td> 
                    <label for="Products">  
                        Product *</label> 
                </td> 
            </td> 
            <td> 
                <select name="Products" onchange="document.Form1.submit()" id="Products" maxlength="32" name="Products">
				<%
				    for (SelectItem item : su.getProductsSelect()){
				    	%><option value="<%=item.getValue()%>" <%=item.getSelected()%>><%=item.getName()%></option><%
				    }
				%>
				</select> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <td> 
                    <label for="RatePlans"> 
                        Rate Plan *</label> 
                </td> 
            </td> 
            <td> 
                <select name="RatePlans" onchange="document.Form1.submit()" id="RatePlans" maxlength="32" name="RatePlans"> 
				<%
				    for (SelectItem item : su.getRatePlansSelect()){
				    	%><option value="<%=item.getValue()%>" <%=item.getSelected()%>><%=item.getName()%></option><%
				    }
				%>
				</select> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <td> 
                    <label for="Charges"> 
                        Charges *</label> 
                </td> 
            </td> 
            <td> 
                <select size="4" name="Charges" multiple="multiple" id="Charges" maxlength="32" name="Charges"> 
				<%
				    for (SelectItem item : su.getChargesSelect()){
				    	%><option value="<%=item.getValue()%>" <%=item.getSelected()%>><%=item.getName()%></option><%
				    }
				%>
				</select> 
            </td> 
        </tr> 
    </table> 
    <h2> 
        Company Information</h2> 
    <table> 
        <tr> 
            <td> 
                <label for="Name"> 
                    Account Name *</label> 
            </td> 
            <td> 
                <input name="Name" type="text" id="Name" maxlength="40" size="40" value="Test Company" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="FirstName"> 
                    First Name *</label> 
            </td> 
            <td> 
                <input name="FirstName" type="text" id="FirstName" maxlength="40" size="40" value="Clement" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="LastName"> 
                    Last Name *</label> 
            </td> 
            <td> 
                <input name="LastName" type="text" id="LastName" maxlength="80" size="40" value="Banks" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="WorkEmail"> 
                    Email *</label> 
            </td> 
            <td> 
                <input name="WorkEmail" type="text" id="WorkEmail" maxlength="80" size="40" value="cbanks@gmail.com" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="WorkPhone"> 
                    Phone</label> 
            </td> 
            <td> 
                <input name="WorkPhone" type="text" id="WorkPhone" maxlength="40" size="40" value="415 555 1212" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="Address1"> 
                    Address 1</label> 
            </td> 
            <td> 
                <input name="Address1" type="text" id="Address1" maxlength="40" size="40" value="517 Country Lane" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="Address2"> 
                    Address 2</label> 
            </td> 
            <td> 
                <input name="Address2" type="text" id="Address2" maxlength="40" size="40" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="City"> 
                    City</label> 
            </td> 
            <td> 
                <input name="City" type="text" id="City" maxlength="40" size="40" value="Anaheim" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="State"> 
                    State</label> 
            </td> 
            <td> 
                <input name="State" type="text" id="State" maxlength="40" size="40" value="CA" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="Country"> 
                    Country</label> 
            </td> 
            <td> 
                <select name="Country" id="Country" maxlength="32"> 
	<option value="USA">USA</option> 
	<option value="CAN">CAN</option> 
</select> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="PostalCode"> 
                    ZIP/Postal Code</label> 
            </td> 
            <td> 
                <input name="PostalCode" type="text" id="PostalCode" maxlength="40" size="40" value="92808" /> 
            </td> 
            </td> 
        </tr> 
    </table> 
    <h2> 
        Billing Information</h2> 
    <table> 
        <tr> 
            <td> 
                <label for="CreditCardType"> 
                    Card Type *</label> 
            </td> 
            <td> 
                <select name="CreditCardType" id="CreditCardType" maxlength="32"> 
	<option value="Visa">Visa</option> 
	<option value="MasterCard">MasterCard</option> 
	<option value="AmericanExpress">AmericanExpress</option> 
</select> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="CreditCardNumber"> 
                    Card Number *</label> 
            </td> 
            <td> 
                <input name="CreditCardNumber" type="text" id="CreditCardNumber" maxlength="40" size="40" value="4111111111111111" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="CreditCardHolderName"> 
                    Name on Card *</label> 
            </td> 
            <td> 
                <input name="CreditCardHolderName" type="text" id="CreditCardHolderName" maxlength="40" size="40" value="Clement Banks" /> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="CreditCardExpirationMonth"> 
                    Expiration (MM/YYYY) *</label> 
            </td> 
            <td> 
                <select name="CreditCardExpirationMonth" id="CreditCardExpirationMonth" maxlength="2"> 
	<option value="01">01</option> 
	<option value="02">02</option> 
	<option value="03">03</option> 
	<option value="04">04</option> 
	<option value="05">05</option> 
	<option value="06">06</option> 
	<option value="07">07</option> 
	<option value="08">08</option> 
	<option value="09">09</option> 
	<option value="10">10</option> 
	<option value="11">11</option> 
	<option value="12">12</option> 
</select> 
                <select name="CreditCardExpirationYear" id="CreditCardExpirationYear" maxlength="4"> 
	<option value="2014">2014</option> 
	<option value="2013">2013</option> 
	<option value="2012">2012</option> 
	<option value="2011">2011</option> 
	<option value="2010">2010</option> 
</select> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                <label for="CreditCardPostalCode"> 
                    ZIP/Postal Code *</label> 
            </td> 
            <td> 
                <input name="CreditCardPostalCode" type="text" id="CreditCardPostalCode" maxlength="40" size="40" value="92808" /> 
            </td> 
        </tr> 
    </table> 
    <br /> 
    <input name="Submit" type="submit" id="Submit" value="Submit" /> 
    </form> 
</body> 
</html> 