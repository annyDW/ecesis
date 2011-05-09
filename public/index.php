<?php
$rootPath = dirname(dirname(__FILE__));
set_include_path(get_include_path() . PATH_SEPARATOR . $rootPath . '/application/controllers' . PATH_SEPARATOR);
include_once 'IndexController.php';
$action = new IndexController();
$action->indexAction();