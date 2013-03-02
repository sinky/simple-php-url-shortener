<?php 
// db options
define('DB_NAME', 'XXXXXX');
define('DB_USER', 'XXXXXX');
define('DB_PASSWORD', 'XXXXXX');
define('DB_HOST', 'localhost');
define('DB_TABLE', 'urlshort');

// connect to database
mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);
mysql_select_db(DB_NAME);

// base location of script (include trailing slash)
define('BASE_HREF', 'http://' . $_SERVER['HTTP_HOST'] . '/' );