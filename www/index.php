
<!-- This is the project specific website template -->
<!-- It can be changed as liked or replaced by other content -->

<?php

$domain=ereg_replace('[^\.]*\.(.*)$','\1',$_SERVER['HTTP_HOST']);
$group_name=ereg_replace('([^\.]*)\..*$','\1',$_SERVER['HTTP_HOST']);
$themeroot='r-forge.r-project.org/themes/rforge/';

echo '<?xml version="1.0" encoding="UTF-8"?>';
?>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en   ">

  <head>


		<meta name="author" content="Chel Hee Lee" />
		<meta name="keywords" content="R, Statistical Computing with R in Korean, Korean language support in R, Introduction to R, 한국어 지원, 통계학, 통계, 튜토리얼, 수치해석, R 교육, Chel Hee Lee, 이철희, gnustats, gnustats@gmail.com, chl948, chl948@mail.usask.ca, Biostatistics, 의학통계, Statistical methodology, imprecise probability theory" />


	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title><?php echo $group_name; ?></title>
	<link href="http://<?php echo $themeroot; ?>styles/estilo1.css" rel="stylesheet" type="text/css" />
  </head>

<body>

<!-- R-Forge Logo -->
<!-- 
<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr><td>
<a href="http://r-forge.r-project.org/"><img src="http://<?php echo $themeroot; ?>/imagesrf/logo.png" border="0" alt="R-Forge Logo" /> </a> </td> </tr>
</table>
-->

<!-- get project title  -->
<!-- own website starts here, the following may be changed as you like -->

<?php if ($handle=fopen('http://'.$domain.'/export/projtitl.php?group_name='.$group_name,'r')){
$contents = '';
while (!feof($handle)) {
	$contents .= fread($handle, 8192);
}
fclose($handle);
echo $contents; } ?>

<!-- end of project description -->

<p> R (>=2.1.0) 을 사용하는 한국어 사용자님들에게 도움이 되기를 바랍니다.  </p>

<p> 업데이트 일시: 2013-FEB-13 부터 매일 밤 자정 </p>

<ul>
<li> 데이터 조작 및 관리 </li>
<li>  </li>
<li>  </li>
<li>  </li>
</ul>

<p> 현재 R-3.0.0 한국어 지원 작업중입니다 (2013-FEB-13) </p>

<p> Contact info: gnustats at gmail dot com </p>

<p> The <strong>project summary page</strong> you can find <a href="http://<?php echo $domain; ?>/projects/<?php echo $group_name; ?>/"><strong>here</strong></a>. </p>
</body>
</html>
