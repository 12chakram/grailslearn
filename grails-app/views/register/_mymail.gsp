<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>A simple, announcement-style HTML e-mail template</title>
</head>

<!--You can swap out the hex code for the background color in the body tag, the outermost table tag, and the header graphic containing the UT wordmark with one of the palette colors found at http://communications.utk.edu/branding/palette.php. Make sure the header image with the UT wordmark has the same color background. We have provided images for all allowable color instances. This example is Legacy. Please note that you should not use one of the primary colors for the background color. This includes white, Smokey, and UT Orange.-->

<body style="margin-top:0;margin-bottom:0;margin-right:0;margin-left:0;padding-top:0;padding-bottom:0;padding-right:0;padding-left:0; background-color:#579584;" >

<!--This next table is the outermost table.  Each section of the newsletter will be a single table nested within it.  The outermost table only has one row and one cell, and a width of 100%. Make sure border, cellpadding, and cellspacing are set to 0 in all structural tables. Make sure the background color matches the background color for the body as well as the image containing the UT wordmark.-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-color:#579584;">
  <tr>
    <td align="center">
    
<!--This next table supplies the link to view the e-mail in a web browser rather than an e-mail client. Here's where you'll supply the link to a copy of your newsletter that you've stored online in your webspace.  It, too, only has one row and one cell.-->
      
      <table width="600" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td style="padding-top:8px;padding-bottom:8px;padding-right:0;padding-left:0;" ><p style="font-family:Cambria, Georgia, 'Times New Roman', Times, serif;font-size:11px;font-style:italic;color:#F0EDE4;text-align:center;" >Having trouble viewing this e-mail? <a href="#" style="color:#B9E1E2;">View it in your browser.</a></p></td>
        </tr>
      </table>
      
<!--This next table contains the wordmark header graphic for the e-mail template. This is a required element of this template. Be sure to use an image with the same color background as you set for the background color of the body and the outermost table. Please be aware that gmail will add a gap between rows of vertically stacked images. To avoid this, include style="display:block" on images that fill a single cell in a single row and are vertically stacked. -->

      <table width="600" border="0" cellspacing="0" cellpadding="0" style="background-color:#579584;">
        <tr>
          <td><a href="http://www.utk.edu"><img src="http://communications.utk.edu/resources/web/email_samples/images/header_legacy-wdmk.gif" alt="The University of Tennessee, Knoxville" width="600" height="120" border="0" style="display:block"></a></td>
        </tr>
      </table>
      
<!--This next table contains the header graphic for your newsletter. If you identify your unit in this space, be sure to adhere to typography guidelines. It should be exactly 600 pixels wide.-->  
      <table width="600" border="0" cellspacing="0" cellpadding="0" style="background-color:#ffffff;">
        <tr>
          <td><a href="#"><img src="http://communications.utk.edu/resources/web/email_samples/images/header-dept_summitt.jpg" alt="This is an example of a departmental identifier" width="600" height="160" border="0" style="display:block"></a></td>
        </tr>
      </table>
      
<!--This next table encompasses the subtables that contain the bulk of your e-mail's content-->     
      <table width="600" border="0" cellspacing="0" cellpadding="0" style="background-color:#ffffff;" >
        <tr>
          <td width="100%" style="background-color:#ffffff; border-bottom:5px solid #f77f00;"><img src="http://communications.utk.edu/resources/web/email_samples/images/image-feature_600x300.jpg" width="600" height="300" alt="Full-width graphic or photo" style="display:block"></td>
        </tr>
        <tr>
          <td>
          <!--This next table is inset slightly from the wider content table. You can assign it a different background color or border to play with that, or just leave it white. Mind your math! If you add a one pixel border to this table, be sure to remember to subtract two pixels from the table's total width-->
			<table width="560" border="0" cellspacing="0" cellpadding="0" style="margin-left:20px; margin-top:20px;margin-right:20px;margin-bottom:20px; background-color:#ffffff;">
              <tr>
                <td style="padding-left:20px; padding-right:20px;padding-top:20px;padding-bottom:20px;"><h3 style="color:#00746F;font-family:Arial, Helvetica, sans-serif; font-weight:100; font-size:20px; line-height:24px; text-align:left;"><a href="#" style="color:#006C93; text-decoration:none;">EVENT NAME GOES HERE, AND THIS IS A LINK TO MORE INFO ON YOUR WEBSITE</a></h3>
                  <p style="color:#4C4D4F; font-family:Cambria, Georgia, 'Times New Roman', Times, serif;font-size:16px; line-height:24px; text-align:left;">If you included specifics about your event in the image, you'll need to be sure to repeat them down here in the text of the email. Images may not come through for everyone, but text will. Remember that e-mail clients do not all deliver content in exactly the same way, because there are no agreed-upon standards for displaying HTML e-mails.</p>
                  <p style="color:#4C4D4F; font-family:Cambria, Georgia, 'Times New Roman', Times, serif;font-size:16px; line-height:24px; text-align:left;">If there is more information about your event on your website, be sure to <a href="#" style="color:#006C93">include a link</a> in the text as well!</p></td>
              </tr>
            </table></td>
        </tr>
      </table>
      
<!-- This next table is the bottommost grey footer table that provides the lower boundary of the e-mail. It should contain contact information and a link to unsubscribe if possible.-->
      <table width="600" height="108" border="0" cellspacing="0" cellpadding="0" style="background-color:#4C4D4F; margin-bottom:50px;" >
        <tr>
          <td align="center">
          
<!--This next table is the innermost footer table that contains the contact information for your unit.-->
            <table width="600" height="88" border="0" cellspacing="0" cellpadding="0" >
              <tr>
                <td style="text-align:left;padding-left:40px;padding-top:40px;padding-bottom:40px;padding-right:40px;"><p style="font-family:Helvetica, Arial;font-size:12px;color:#fefefe;line-height:18px; text-align:left;"><a href="http://www.utk.edu/" style="color:#fefefe; text-decoration:none;">CONTACT US<br>
                    </a><a href="http://chancellor.utk.edu/" style="color:#fefefe; text-decoration:none;">Your Department Name Here</a><br>
                    Departmental Address | Knoxville, TN 37996-0184<br>
                    E-mail: <a href="mailto:xxx@utk.edu" style="color:#ffffff; text-decoration:none;">xxx@utk.edu</a><br>
                    Phone: 865.974.xxxx | Fax: 865.974.xxxx<br>
                    <span style="color:#f77f00;"><em>Big Orange. Big Ideas.</em></span></p></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>