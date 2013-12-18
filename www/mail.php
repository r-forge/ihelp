
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
<tr> <td> <a href="conf2014-contact.html"> 문의 및 연락 </a></td> </tr>
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
<a href="http://korea.gnu.org" target="_blank" style="text-decoration:none;"> <font size="6" color="darkblue"> <b> GNU KOREA </b> </font> </a></p>

<p>
<a href="http://www.naver.com" target="_blank"> <img src="img/naver-logo.jpg" alt="naver.2013.12.10" height="50" width="150"> </a>
</p>
<p>
&nbsp <a href="http://www.nipa.kr" target="_blank"> <img src="img/nipa-logo.jpg" alt="nipa.2013.12.13" height="50" width="100"> </a>
</p>

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
	<li> 장소 추천 </li>
	<li> 페이지 업데이트 </li>
	<li> 발표자 추천 </li>
	<li> 후원 / 협찬 / 자원봉사 문의 </li>
	<li> 초록 제출 </li>
	<li> 설문지 등록 </li>
	<li> 기타 관련 사항 </li>
</ul>
</p>

<?php
if(isset($_POST['email'])) {
     
    // CHANGE THE TWO LINES BELOW
    $email_to = "gnustats@gmail.com";
     
    $email_subject = "컨퍼런스 2014 문의사항 ";
     
     
    function died($error) {
        // your error code can go here
        echo "입력하신 내용에서 에러가 발견되었습니다. ";
        echo "에러는 다음과 같습니다.<br /><br />";
        echo $error."<br /><br />";
        echo "이전 단계로 돌아가셔서 위의 내용을 수정해주시길 부탁드립니다.<br /><br />";
        die();
    }
     
    // validation expected data exists
    if(!isset($_POST['first_name']) ||
//        !isset($_POST['last_name']) ||
        !isset($_POST['email']) ||
        !isset($_POST['telephone']) ||
        !isset($_POST['comments'])) {
        died('입력하신 내용중에서 에러가 발견되었습니다.');      
    }
     
    $first_name = $_POST['first_name']; // required
//    $last_name = $_POST['last_name']; // required
    $email_from = $_POST['email']; // required
    $telephone = $_POST['telephone']; // not required
    $comments = $_POST['comments']; // required
     
    $error_message = "";
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
  if(!preg_match($email_exp,$email_from)) {
    $error_message .= '이메일 주소가 올바르지 않습니다.<br />';
  }
//    $string_exp = "/^[A-Za-z .'-]+$/";
//  if(!preg_match($string_exp,$first_name)) {
//    $error_message .= '이름의 입력이 올바르지 않습니다.<br />';
//  }
//  if(!preg_match($string_exp,$last_name)) {
//    $error_message .= 'The Last Name you entered does not appear to be valid.<br />';
//  }
  if(strlen($comments) < 2) {
    $error_message .= '입력하신 문의사항의 내용 중에서 에러가 발견되었습니다<br />';
  }
  if(strlen($error_message) > 0) {
    died($error_message);
  }
    $email_message = "Form details below.\n\n";
     
    function clean_string($string) {
      $bad = array("content-type","bcc:","to:","cc:","href");
      return str_replace($bad,"",$string);
    }
     
    $email_message .= "First Name: ".clean_string($first_name)."\n";
//    $email_message .= "Last Name: ".clean_string($last_name)."\n";
    $email_message .= "Email: ".clean_string($email_from)."\n";
    $email_message .= "Telephone: ".clean_string($telephone)."\n";
    $email_message .= "Comments: ".clean_string($comments)."\n";
     
     
// create email headers
$headers = 'From: '.$email_from."\r\n".
'Reply-To: '.$email_from."\r\n" .
'X-Mailer: PHP/' . phpversion();
@mail($email_to, $email_subject, $email_message, $headers); 
?>
 
<!-- place your own success html below -->


<p>
성공적으로 관리자에게 메일을 발송하였습니다.  빠른 시간내에 찾아뵙겠습니다.
</p>


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



<?php
}
die();
?>
