<?php 
require_once('config.php');
require_once('alphaID.inc.php');

$shortID = mysql_real_escape_string(trim($_REQUEST['id'])); 
$referer = mysql_real_escape_string($_SERVER['HTTP_REFERER']);

$id = alphaID($shortID, true);

$sql_result = mysql_query("SELECT longurl FROM ".DB_TABLE." WHERE id='".$id."' LIMIT 0,1");
if(is_resource($sql_result) && mysql_num_rows($sql_result) > 0 ){
  $sql_result = mysql_fetch_assoc($sql_result);
  $longURL = $sql_result["longurl"];
  
  mysql_query("UPDATE ".DB_TABLE." SET hits=hits+1 WHERE id='".$id."'");
  mysql_query("UPDATE ".DB_TABLE." SET lastused=NOW() WHERE id='".$id."'");
  
  //mysql_query("UPDATE ".DB_TABLE." SET referer='".$referer."' WHERE id='".$id."'");
   
  //header('HTTP/1.1 301 Moved Permanently');
  header('HTTP/1.1 302 Moved Temporarily');
  header('Location: ' .  $longURL);
  exit;
}else{
  return false;
}




