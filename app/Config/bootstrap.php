<?php
/**
 * This file is loaded automatically by the app/webroot/index.php file after core.php
 *
 * This file should load/create any application wide configuration settings, such as
 * Caching, Logging, loading additional configuration files.
 *
 * You should also use this file to include any files that provide global functions/constants
 * that your application uses.
 *
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @package       app.Config
 * @since         CakePHP(tm) v 0.10.8.2117
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */

// Setup a 'default' cache configuration for use in the application.
Cache::config('default', array('engine' => 'File'));

/**
 * The settings below can be used to set additional paths to models, views and controllers.
 *
 * App::build(array(
 *     'Model'                     => array('/path/to/models/', '/next/path/to/models/'),
 *     'Model/Behavior'            => array('/path/to/behaviors/', '/next/path/to/behaviors/'),
 *     'Model/Datasource'          => array('/path/to/datasources/', '/next/path/to/datasources/'),
 *     'Model/Datasource/Database' => array('/path/to/databases/', '/next/path/to/database/'),
 *     'Model/Datasource/Session'  => array('/path/to/sessions/', '/next/path/to/sessions/'),
 *     'Controller'                => array('/path/to/controllers/', '/next/path/to/controllers/'),
 *     'Controller/Component'      => array('/path/to/components/', '/next/path/to/components/'),
 *     'Controller/Component/Auth' => array('/path/to/auths/', '/next/path/to/auths/'),
 *     'Controller/Component/Acl'  => array('/path/to/acls/', '/next/path/to/acls/'),
 *     'View'                      => array('/path/to/views/', '/next/path/to/views/'),
 *     'View/Helper'               => array('/path/to/helpers/', '/next/path/to/helpers/'),
 *     'Console'                   => array('/path/to/consoles/', '/next/path/to/consoles/'),
 *     'Console/Command'           => array('/path/to/commands/', '/next/path/to/commands/'),
 *     'Console/Command/Task'      => array('/path/to/tasks/', '/next/path/to/tasks/'),
 *     'Lib'                       => array('/path/to/libs/', '/next/path/to/libs/'),
 *     'Locale'                    => array('/path/to/locales/', '/next/path/to/locales/'),
 *     'Vendor'                    => array('/path/to/vendors/', '/next/path/to/vendors/'),
 *     'Plugin'                    => array('/path/to/plugins/', '/next/path/to/plugins/'),
 * ));
 */

/**
 * Custom Inflector rules can be set to correctly pluralize or singularize table, model, controller names or whatever other
 * string is passed to the inflection functions
 *
 * Inflector::rules('singular', array('rules' => array(), 'irregular' => array(), 'uninflected' => array()));
 * Inflector::rules('plural', array('rules' => array(), 'irregular' => array(), 'uninflected' => array()));
 */

/**
 * Plugins need to be loaded manually, you can either load them one by one or all of them in a single call
 * Uncomment one of the lines below, as you need. Make sure you read the documentation on CakePlugin to use more
 * advanced ways of loading plugins
 *
 * CakePlugin::loadAll(); // Loads all plugins at once
 * CakePlugin::load('DebugKit'); // Loads a single plugin named DebugKit
 */

/**
 * To prefer app translation over plugin translation, you can set
 *
 * Configure::write('I18n.preferApp', true);
 */

/**
 * You can attach event listeners to the request lifecycle as Dispatcher Filter. By default CakePHP bundles two filters:
 *
 * - AssetDispatcher filter will serve your asset files (css, images, js, etc) from your themes and plugins
 * - CacheDispatcher filter will read the Cache.check configure variable and try to serve cached content generated from controllers
 *
 * Feel free to remove or add filters as you see fit for your application. A few examples:
 *
 * Configure::write('Dispatcher.filters', array(
 *		'MyCacheFilter', //  will use MyCacheFilter class from the Routing/Filter package in your app.
 *		'MyCacheFilter' => array('prefix' => 'my_cache_'), //  will use MyCacheFilter class from the Routing/Filter package in your app with settings array.
 *		'MyPlugin.MyFilter', // will use MyFilter class from the Routing/Filter package in MyPlugin plugin.
 *		array('callable' => $aFunction, 'on' => 'before', 'priority' => 9), // A valid PHP callback type to be called on beforeDispatch
 *		array('callable' => $anotherMethod, 'on' => 'after'), // A valid PHP callback type to be called on afterDispatch
 *
 * ));
 */
Configure::write('Dispatcher.filters', array(
	'AssetDispatcher',
	'CacheDispatcher'
));

/**
 * Configures default file logging options
 */
App::uses('CakeLog', 'Log');
CakeLog::config('debug', array(
	'engine' => 'File',
	'types' => array('notice', 'info', 'debug'),
	'file' => 'debug',
));
CakeLog::config('error', array(
	'engine' => 'File',
	'types' => array('warning', 'error', 'critical', 'alert', 'emergency'),
	'file' => 'error',
));

/**
 * Namespaces in vendor files and Cake2.x
 */
spl_autoload_register(function($class) {
    foreach(App::path('Vendor') as $base) {
        $path = $base . str_replace('\\', DS, $class) . '.php';
        if (file_exists($path)) {
            return include $path;
        }
    }
});

function barcodeGenerator()
{
    App::import('Vendor', 'BarcodeGenerator', array('file' => 'BarcodeGenerator/BarcodeGenerator.php'));
    App::import('Vendor', 'BarcodeGeneratorPNG', array('file' => 'BarcodeGenerator/BarcodeGeneratorPNG.php'));
    App::import('Vendor', 'BarcodeGeneratorHTML', array('file' => 'BarcodeGenerator/BarcodeGeneratorHTML.php'));
    return [
        'PNG' => new Picqer\Barcode\BarcodeGeneratorPNG(),
        'HTML' => new Picqer\Barcode\BarcodeGeneratorHTML(),
    ];
}

/**
	 * print_r text with pre html tag
	 * @param mixed $text all kind of text want to be printed
	 * @return true
	 * @public
	 **/
function dpr($text)
{
	echo '<pre>';
	print_r($text);
	echo '</pre>';
}

function redirectUsingScript($url)
{
    echo '<script type="text/javascript">window.location.href="'.$url.'";</script>';
    echo '<noscript><meta http-equiv="refresh" content="0;url='.$url.'" /></noscript>';
    exit;
}

/**
	* convert formated string to display string
	* @param string $str contains string want to be converted
	* @return string $result contains string that can be published
	* @public
	**/
function string_unslug($str)
{
	return Inflector::humanize(  str_replace('-','_', $str )  );
}

function get_slug($value)
{
    return Inflector::slug( strtolower($value) , '-');
}

/**
	* convert date text to selected date format from template settings
	* @param date $value contains source date
	* @param string $date contains date format selected
 	* @param string $time contains time format selected
	* @return string new date format
	* @public
	**/
function date_converter($value , $date , $time=NULL)
{
	$value = strtotime($value);
	$newDate = date($date , $value);
	$newTime = date($time , $value);
	return $newDate.(empty($time)?'':' @ '.$newTime);
}

function ordinalSuffix( $n )
{
  return $n.date('S',mktime(1,1,1,1,( (($n>=10)+($n>=20)+($n==0))*10 + $n%10) ));
}
/**
	* retrieve certain value attribute of selected input validation
	* @param string $str contains source of validation value, separated by "|"
	* @param string $value contains selected validation
	* @return string $result contain attribute of selected validation
	* @public
	**/
function get_input_attrib($src , $value)
{
	$temp = stripos($src, $value);
	if($temp === FALSE)
	{
		$result = "";
	}
	else
	{
		$src = substr($src, $temp); //  ???|??|MIN_LENGTH_5|???|??  => MIN_LENGTH_5|???|???
		$pos = strpos($src, '|');
		$src = ($pos === FALSE?$src:substr($src, 0 , $pos));
		$result = substr($src, strrpos($src, '_')+1);
	}
	return $result;
}
/**
	* convert formated language to display language
	* @param string $str contains source language want to be converted
	* @return string $result contains language that can be published
	* @public
	**/
function lang_unslug($str)
{
	$temp = explode('_', $str);
	$result = strtoupper($temp[0]).' - '. strtoupper(substr($temp[1], 0 , 1)).substr($temp[1], 1);
	return $result;
}
/**
	* retrieve list of language option used in settings form
	* @param string $src contains group of used language in settings
	* @return array $langlist contains array of language that will be displayed as language option
	* @public
	**/
function get_list_lang($src = NULL)
{
    $langlist = array('en_english', 'id_indonesia', 'zh_chinese');
	$existlang = array_map('trim' , explode(chr(10), $src) );
    return array_unique( array_merge( $langlist , $existlang ) );
}
function parse_lang($src = NULL)
{
	return array_map(function($value){ return strtoupper(substr($value, 0,2))." - ".strtoupper(substr($value, 3,1)).substr($value, 4); }, explode(chr(13).chr(10), $src));
}
function get_more_extension($url)
{
	$moreExtension = "";
	$start = 0;
	foreach ($url as $key => $value)
	{
		if($key != "url")
		{
			if($start == 0)
			{
				$moreExtension .= $key."=".$value;
				$start = 1;
			}
			else
			{
				$moreExtension .= "&".$key."=".$value;
			}
		}
	}
	if($start == 1)
	{
		$moreExtension = "?".$moreExtension;
	}
	return $moreExtension;
}

function isLocalhost()
{
	$test = str_replace('/', DS, getcwd() ); // beware of Linux OS ...

	if(stripos($test, DS."htdocs".DS) !== FALSE || stripos($test, DS."sandbox".DS) !== FALSE || stripos($test, DS."creazidigital".DS) !== FALSE)
    {
        return true;
    }
    else
    {
        return false;
    }
}

function redirectSessionNow($url)
{
	return substr($url, strpos($url, '/',(isLocalhost()?1:0)));
}
function gmt_adjustment()
{
    return time();
}
function getAppRootPath()
{
	$str = substr(WWW_ROOT, 0 , strlen(WWW_ROOT)-1); // buang DS trakhir...
	$str = substr($str, 0 , strripos($str, DS)+1); // buang webroot...
	return $str;
}
function calcNumberWidth($value)
{
	$result = 36 + strlen(strval($value)) * 6;
	return $result;
}

function file_get_contents_curl($url) {
    $ch = curl_init();

    curl_setopt($ch, CURLOPT_AUTOREFERER, TRUE);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);

    $data = curl_exec($ch);
    curl_close($ch);

    return $data;
}

function swap_value(&$a , &$b)
{
	$temp = $a;
	$a = $b;
	$b = $temp;
}

function orderby_metavalue($data = array() , $metatable = NULL , $metakey , $sortorder = NULL , $input_type = NULL)
{
    $sortorder = ( empty($sortorder) ? "ASC" : strtoupper($sortorder) );
    if($input_type == 'gallery')    $metakey = 'count-form-'.$metakey;

    $keysort = array_keys($data);
    $valuesort = array_map(function($value) use ($metatable, $metakey){
        return trim(empty($metatable)?$value[$metakey]:$value[$metatable][$metakey]);
    } , $data);

    if(strpos($input_type, 'date') !== FALSE)
    {
        $valuesort = array_map( function($value){ return date('Y-m-d H:i:s' , strtotime( strstr($value.'|', '|', TRUE) )); } , $valuesort);
    }

	array_multisort($valuesort , ($sortorder == "DESC"? SORT_DESC : SORT_ASC ) , $keysort);
    return array_map(function($value) use ($data){ return $data[$value]; } , $keysort);
}

function parseTime($s)
{
    $c = explode(':' , $s);
    return $c[0] * 60 + $c[1];
}

function toMoney($amount,$separator=true,$simple=false,$dec_point='.',$thousands_sep=','){
    $broken_number = ( false===$simple ? explode('.',$amount) : '' );
    return
        (false===$simple?
            number_format($broken_number[0],0,$dec_point,(true===$separator?$thousands_sep:'')).(isset($broken_number[1])?$dec_point.$broken_number[1]:''):
            str_replace($dec_point.'00','',toMoney($amount,$separator,false,$dec_point,$thousands_sep))
        );
}

function getTempFolderPath()
{
	return WWW_ROOT.'files'.DS;
}

/**
	* convert older excel version to newer Excel 2007 version
	* @param string $inputPath contains location path of file excel to be converted
	* @param string $outputPath contains RESULT location path file excel
	* @return true
	* @public
	**/
function convertExcelVersion($inputPath,$outputPath, $insertLogo = false, $password = null, $hideGridlines = null, $freezePane = null)
{
	App::import('Vendor', 'phpexcel');

    $inputFileType = PHPExcel_IOFactory::identify($inputPath);
    $objReader = PHPExcel_IOFactory::createReader($inputFileType);

    $objExcel = $objReader->load($inputPath);
	$objExcel->setActiveSheetIndex(0); // set first sheet as active (default) ...

    // draw logo image ...
    if($insertLogo)
    {
        $objDrawing = new PHPExcel_Worksheet_Drawing();
        $objDrawing->setName('Logo');
        $objDrawing->setDescription('Logo');
        $objDrawing->setPath(WWW_ROOT.'images'.DS.'logo.png');
        $objDrawing->setCoordinates('A1');
        $objDrawing->setHeight(80);
        $objDrawing->setWorksheet($objExcel->getActiveSheet());
    }

    // Set password for readonly activesheet
    if(!empty($password))
    {
        $objExcel->getActiveSheet()->getProtection()->setSheet(true)->setPassword($password);
    }

    if(!empty($hideGridlines))
    {
        $objExcel->getActiveSheet()->setShowGridlines(false);
    }

    if(!empty($freezePane))
    {
        $objExcel->getActiveSheet()->freezePane($freezePane);
    }

    $outputFileType = 'Excel2007';
    $objWriter = PHPExcel_IOFactory::createWriter($objExcel,$outputFileType);
    $objWriter->setPreCalculateFormulas(false);
    $objWriter->save($outputPath);
}

/**
	* Displaying excel file in a browser. PHPExcel
	* @param string $inputPath contains location path of file excel to be displayed
	* @return true
	* @public
	**/
function excelViewer($inputPath)
{
	App::import('Vendor', 'phpexcel');
	$inputFileType = PHPExcel_IOFactory::identify($inputPath);
	$objReader = PHPExcel_IOFactory::createReader($inputFileType);
  $objPHPExcel = $objReader->load($inputPath);
  $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'HTML');
  $objWriter->save('php://output');
  exit;
}

/**
	* convert Excel Date to PHP Date Timestamp
    * @public
	**/
function excelDateToDate($readDate, &$result = NULL){
    $phpExcelDate = floor($readDate)-25569; //to offset to Unix epoch
    $result = ($phpExcelDate > 0? strtotime("+$phpExcelDate days", mktime(0,0,0,1,1,1970)) : false );
    return $result;
}

/**
	* parse PHP Date to Excel Date Timestamp
    * @public
	**/
function parseExcelDate($inputDate){
    // number of seconds in a day
    $seconds_in_a_day = 86400;
    // Unix timestamp to Excel date difference in seconds
    $ut_to_ed_diff = ($seconds_in_a_day * 25570) - 61200;

    $result = ( strtotime($inputDate) + $ut_to_ed_diff) / $seconds_in_a_day;
    return $result;
}

function getSizeFile($url) {
    if (substr($url,0,4)=='http') {
        $x = array_change_key_case(get_headers($url, 1),CASE_LOWER);
        if ( strcasecmp($x[0], 'HTTP/1.1 200 OK') != 0 ) { $x = $x['content-length'][1]; }
        else { $x = $x['content-length']; }
    }
    else { $x = filesize($url); }

    return $x;
}

function promptDownloadFile($file , $filename = NULL)
{
    if(empty($filename))
	{
		$filename = str_replace(" ", "_", basename($file) );
	}
	header('Content-Description: File Transfer');
	header('Content-Type: application/octet-stream');
	header('Content-Disposition: attachment; filename='.$filename);
	header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header("Cache-Control: no-cache, must-revalidate, post-check=0, pre-check=0");
    header('Pragma: public');
    if(file_exists($file))	header('Content-Length: ' . getSizeFile($file));
    ob_clean();
    flush();
    if(file_exists($file))	echo file_get_contents($file);
}

/*
 * Upload Single File Function >>>
 * */
function uploadFile($image, $pathFolder = 'files')
{
	$upFile = WWW_ROOT.(empty($pathFolder)?'':$pathFolder.DS).$image['name'];
	move_uploaded_file($image['tmp_name'], $upFile);
	chmod ($upFile , 0777);
}

function getValidFileName($fullname)
{
	$counter = 0;
	$path_parts = pathinfo($fullname);

	$mySlug = $slug = Inflector::slug($path_parts['filename']);

	$path = WWW_ROOT.'files'.DS;
	while(TRUE)
	{
		if(file_exists($path.$mySlug.'.'.$path_parts['extension']))
		{
			$mySlug = $slug.'_'.(++$counter);
		}
		else {
			break;
		}
	}
	return $mySlug.'.'.$path_parts['extension'];
}

function deleteFile($title)
{
	$upFile = WWW_ROOT.'files'.DS.$title;
	if(file_exists($upFile))
    {
        unlink($upFile);
    }
}
/*
 * End Of Upload Single File Function >>>
 * */

function makeClickableLinks($s)
{
  return preg_replace('@(https?://([-\w\.]+[-\w])+(:\d+)?(/([\w/_\.#-]*(\?\S+)?[^\.\s])?)?)@', '<a href="$1" target="_blank">$1</a>', $s);
}

// ===========================>>
// IN ARRAY RECURSIVE !!
// ===========================>>
function in_array_r($needle, $haystack, $strict = false) {
    foreach ($haystack as $item) {
        if (($strict ? $item === $needle : $item == $needle) || (is_array($item) && in_array_r($needle, $item, $strict))) {
            return true;
        }
    }

    return false;
}

/**
 * Get either a Gravatar URL or complete image tag for a specified email address.
 *
 * @param string $email The email address
 * @param string $s Size in pixels, defaults to 80px [ 1 - 2048 ]
 * @param string $d Default imageset to use [ 404 | mm | identicon | monsterid | wavatar ]
 * @param string $r Maximum rating (inclusive) [ g | pg | r | x ]
 * @param boole $img True to return a complete IMG tag False for just the URL
 * @param array $atts Optional, additional key/value attributes to include in the IMG tag
 * @return String containing either just a URL or a complete image tag
 * @source http://gravatar.com/site/implement/images/php/
 */
function get_gravatar( $email, $s = 80, $d = 'mm', $r = 'g', $img = false, $atts = array() ) {
    $url = 'http://www.gravatar.com/avatar/';
    $url .= md5( strtolower( trim( $email ) ) );
    $url .= "?s=$s&d=$d&r=$r";
    if ( $img ) {
        $url = '<img src="' . $url . '"';
        foreach ( $atts as $key => $val )
            $url .= ' ' . $key . '="' . $val . '"';
        $url .= ' />';
    }
    return $url;
}

/*
 * New Function in CakePHP 2.x
 */
function parseQueryStringUrl($url)
{
	$result = array();
	$qmark = strrpos($url , '?');

	if($qmark !== FALSE)
	{
		$potong1 = substr($url , $qmark+1);

		$pecah1 = explode('&' , $potong1);

		foreach ($pecah1 as $key => $value)
		{
			$subpecah = explode('=' , $value);
			$result[$subpecah[0]] = $subpecah[1];
		}
	}
	return $result;
}

function composeQueryStringUrl($query = array())
{
	$chainUrl = '';
	$counter = 0;
	foreach ($query as $key => $value)
	{
		$chainUrl .= ($counter==0?'?':'&').$key.'='.$value;
		$counter++;
	}
	return $chainUrl;
}

function breakEntryMetas($myEntry , $metatable = 'EntryMeta')
{
	foreach ($myEntry[$metatable] as $key => $value)
	{
        if(!empty($value['key']))
        {
            $myEntry[$metatable][ str_replace('form-', '', $value['key']) ] = $value['value']??NULL;
        }
	}
	return $myEntry;
}

function checkExpired($expired_date, $diff_days = 0)
{
	if(empty($expired_date))
	{
		return false;
	}
	else
	{
		$expired_date = new DateTime($expired_date);
	  $now = new DateTime();
		if (!empty($diff_days)) {
			if ($diff_days > 0) {
				$now->modify('+'.$diff_days.' day');
			}else {
				$now->modify($diff_days.' day');
			}
		}
	  return $expired_date < $now;
	}
}

/*
 * Convert the share url to direct download url (Google Drive) !!
 */
function parseGoogleDriveUrl($shareurl)
{
	$pecahshare = explode("/", $shareurl);
	$id_drive = $pecahshare[count($pecahshare)-2];
	return "https://docs.google.com/uc?export=download&id=".$id_drive;
}

/*
back-up project files into zip file.
*/
function Zip($source, $destination)
{
    set_time_limit(0); // unlimited time limit execution.
    ini_set('memory_limit', '-1'); // unlimited memory limit to process batch.

	if (!extension_loaded('zip') || !file_exists($source)) {
        return false;
    }

    // If the zip file exists, the file will be deleted as well.
    if (file_exists($destination)) {
        unlink ($destination);
    }

    $zip = new ZipArchive();
    if (!$zip->open($destination, ZIPARCHIVE::CREATE)) {
        return false;
    }
    $source = realpath($source);

    if (is_dir($source) === true)
    {
        $files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($source), RecursiveIteratorIterator::SELF_FIRST);
        foreach ($files as $file)
        {
            $file = str_replace('\\', '/', $file);

            // Ignore "." and ".." folders
            if( in_array(substr($file, strrpos($file, '/')+1), array('.', '..')) )
                continue;

            $file = realpath($file);

            if (is_dir($file) === true)
            {
                $zip->addEmptyDir( substr(str_replace($source , '', $file . '/'),1) );
            }
            else if (is_file($file) === true)
            {
                $zip->addFromString( substr(str_replace($source , '', $file),1) , file_get_contents($file));
            }
        }
    }
    else if (is_file($source) === true)
    {
        $zip->addFromString(basename($source), file_get_contents($source));
    }

	$zip->close();

	$file = $destination;
	if(file_exists($file))
	{
		promptDownloadFile($file);
		unlink($file); // delete temp files.
		exit;
	}
	else
	{
		return false;
	}
}

function teasering($html, $maxchar = 200)
{
    $result = strip_tags($html);

    if(strlen($result) > $maxchar)
    {
        $result = substr($result, 0,  strpos($result, ' ', $maxchar)  ).' ...';
    }

    return $result;
}

/*
clear tmp logs file !!
*/
function clearLogs()
{
    $files = glob('../tmp/logs/*'); // get all file names
    foreach($files as $file){ // iterate files
      if(is_file($file) && strtolower(basename($file)) != 'empty')
        unlink($file); // delete file
    }
}

/*
switch between any datasources for the selected models.
*/
function toggleDataSource($modelName = [], $dataSource = 'default')
{
    foreach($modelName as $key => $value)
    {
        ClassRegistry::init($value)->setDataSource($dataSource);
    }
}

/*
force NOT to cache any data source from a loaded page...
*/
function forceNoCache()
{
    header('Cache-Control: no-cache, no-store, must-revalidate');
    header('Pragma: no-cache');
    header('Expires: 0');
}
