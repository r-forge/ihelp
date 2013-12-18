<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en   ">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="mystyle.css">

</head>


<body>
<!-- START OF BODY -->	
<div id="setpage">
<header>
	<table>
		<tr>
			<td valign="bottom"> <a href="index.html"> <img src="logo.png"> </a> </td>
			<td valign="bottom"> <a href="lang.html">  Language Support  </a></td>
			<td valign="bottom"> | <a href="shared.html"> We Share  </a></td>
			<td valign="bottom"> | <a href="contributeddocs.html"> Contributed 
Docs  </a></td>
			<td valign="bottom"> | <a href="members.html"> Members &amp; Donors </a></td>
<td valign="bottom"> | <a href="conf2014.html"> TBA 2014 </a></td>
		</tr>
	</table>
</header>

<aside>
<table>
<tr> <td> <a href="conf2014.html"> 소개 </a></td> </tr>
<tr> <td> <a href="conf2014-abstracts.html"> 초록모집  </a></td> </tr>
<tr> <td> <a href="conf2014-registration.html"> 등록하기 </a></td> </tr>
<tr> <td> <a href="conf2014-dates.html"> 중요 확인날짜 </a></td> </tr>
<tr> <td> <a href="conf2014-list.html"> 연사목록 </a></td> </tr>
<tr> <td> <a href="conf2014-supports.html"> 후원 및 자원봉사</a></td> </tr>
<tr> <td> <a href="conf2014-recruit.html"> 홍보 및 채용</a></td> </tr>
<tr> <td> <a href="conf2014-schedule.html"> 일정 </a></td> </tr>
<tr> <td> <a href="conf2014-location.html"> 찾아오시는 길</a></td> </tr>
<tr> <td> <a href="conf2014-survey.html"> 설문조사</a></td> </tr>
<tr> <td> <a href="conf2014-contact.php"> 문의 및 연락 </a></td> </tr>
</table>

<p>
<font size="5"> <b> 주최 </b> </font> <br>
정우준 <br> 
글로벌 오픈프론티어랩
</p>
<li></li>


<p>
<font size="5"> <b> 후원  </b></font>
</p>
<p>
<a href="http://www.naver.com" target="_blank"> <img src="img/naver-logo.jpg" alt="naver.2013.12.10" height="50" width="150"> </a>
</p>
<p>
&nbsp <a href="http://www.nipa.kr" target="_blank"> <img src="img/nipa-logo.jpg" alt="nipa.2013.12.13" height="50" width="100"> </a>
</p>

<p>
<font size="5"> <b> 협찬 </b></font>
</p>
<p>
<a href="http://korea.gnu.org" target="_blank" style="text-decoration:none;"> <font size="6" color="darkblue"> <b> GNU KOREA </b> </font> </a></p>

<p>
<big> BANNER <br> RESERVED </big> 
</p>
<p>
<big> BANNER <br> Available </big> 
</p>
<p>
<big> BANNER <br> Available </big> 
</p>
<p>
<big> BANNER <br> Available </big> 
</p>
<p>
<big> BANNER <br> Available </big> 
</p>


</aside>


<article>
	
<h1> <big> 페이지가 복구중입니다 - TBA  (2013.12.16) </big> </h1>

<p> <font size="4"> <b> 사용에 불편을 드려 죄송합니다. 본 페이지는 2014.01.15까지 임시적이며 변동의 내용이 크며, 어떠한 정보도 정확하지 않습니다.</b> </font> </p>

<h3> 문의 및 연락 </h3>

<p>
다음의 내용을 포함하여 행사 전반에 대한 문의를 받습니다.
<ul>
	<li> [장소] 장소 추천 </li>
	<li> [업데이트] 페이지 업데이트 </li>
	<li> [추천] 발표자 추천 </li>
	<li> [문의] 후원 / 협찬 / 자원봉사 문의 </li>
	<li> [초록] 초록 제출 </li>
	<li> [설문지] 설문지 등록 </li>
	<li> [기타] 기타 관련 사항 </li>
	<li> [등록] 등록하기 </li>
	<li> [입금] 입금확인 </li>
</ul>
</p>

<p>
    <div id="contact_form">
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" enctype="multipart/form-data" name="form1" id="contactForm">
    <div class="one_third">
    <p>
    <label for="name">이름:</label><br> 
    <input id="name" name="name" type="text">
    </p>
    <p>
    <label for="email">이메일:</label>
    <br>
    <input id="email" name="email" type="text">
    </p>
    <p>
    <label for="tele">파일첨부:</label>
    <br>
    <input id="tele" name="filename" type="file">
    </p>
    <p>
    <label for="message">문의사항:<br>
    </label>
    <textarea cols="71" rows="5" name="message"></textarea>
    </p>
    <input class="formbtn" value="Send Message" type="submit">
    </div></form>
    </div> 
</p>
<?php
    if ($_SERVER['REQUEST_METHOD']=="POST"){
    // Set the "To" email address
    $to="gnustats@gmail.com";
    //Subject of the mail
    $subject="컨퍼런스 2014 관련 문의사항 메일 도착";
    // Get the sender's name and email address plug them a variable to be used later
    $from = stripslashes($_POST['name'])."<".stripslashes($_POST['email']).">";
    // Check for empty fields
    if(empty($_POST['name']) || empty($_POST['email']) || empty($_POST['message']))
    {
    $errors .= "\n Error: all fields are required";
    }
    // Get all the values from input
    $name = $_POST['name'];
    $email_address = $_POST['email'];
    $message = $_POST['message'];
    // Check the email address
    if (!eregi( "^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$", $email_address))
    {
    $errors .= "\n Error: Invalid email address";
    }
    // Now Generate a random string to be used as the boundary marker
    $mime_boundary="==Multipart_Boundary_x".md5(mt_rand())."x";
    // Now Store the file information to a variables for easier access
    $tmp_name = $_FILES['filename']['tmp_name'];
    $type = $_FILES['filename']['type'];
    $file_name = $_FILES['filename']['name'];
    $size = $_FILES['filename']['size'];
    // Now here we setting up the message of the mail
    $message = "\n\n Name: $name \n\n Email: $email_address \n\nMessage: \n\n $message \n\nHere is your file: $file_name";
    // Check if the upload succeded, the file will exist
    if (file_exists($tmp_name)){
    // Check to make sure that it is an uploaded file and not a system file
    if(is_uploaded_file($tmp_name)){
    // Now Open the file for a binary read
    $file = fopen($tmp_name,'rb');
    // Now read the file content into a variable
    $data = fread($file,filesize($tmp_name));
    // close the file
    fclose($file);
    // Now we need to encode it and split it into acceptable length lines
    $data = chunk_split(base64_encode($data));
    }
    // Now we'll build the message headers
    $headers = "From: $from\r\n" .
    "MIME-Version: 1.0\r\n" .
    "Content-Type: multipart/mixed;\r\n" .
    " boundary=\"{$mime_boundary}\"";
    // Next, we'll build the message body note that we insert two dashes in front of the MIME boundary when we use it
    $message = "This is a multi-part message in MIME format.\n\n" .
    "--{$mime_boundary}\n" .
    "Content-Type: text/plain; charset=\"iso-8859-1\"\n" .
    "Content-Transfer-Encoding: 7bit\n\n" .
    $message . "\n\n";
    // Now we'll insert a boundary to indicate we're starting the attachment we have to specify the content type, file name, and disposition as an attachment, then add the file content and set another boundary to indicate that the end of the file has been reached
    $message .= "--{$mime_boundary}\n" .
    "Content-Type: {$type};\n" .
    " name=\"{$file_name}\"\n" .
    //"Content-Disposition: attachment;\n" .
    //" filename=\"{$fileatt_name}\"\n" .
    "Content-Transfer-Encoding: base64\n\n" .
    $data . "\n\n" .
    "--{$mime_boundary}--\n";
    // Thats all.. Now we need to send this mail... :)
    if (@mail($to, $subject, $message, $headers))
    {
    echo '<div><center><h1> 메일을 성공적으로 발송하였습니다.  빠른 시간내에 답변드리겠습니다.</h1></center></div>';
    }else
    {
    echo '<div><center><h1> 에러!  메일을 발송하지 못했습니다..</h1></center></div>';
    }
    }
    } 
?>
</article>

<footer>
	@ 2008-2013 ihelp.r-forge.r-project.org. Copyright of individual papers resides with the authors
</footer>

</div>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-43388960-1', 'r-project.org');
  ga('send', 'pageview');

</script>
</body>

</html>
