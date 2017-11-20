<?php
/**
 * Application level View Helper
 *
 * This file is application-wide helper file. You can put all
 * application-wide helper-related methods here.
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
 * @package       app.View.Helper
 * @since         CakePHP(tm) v 0.2.9
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Helper', 'View');

/**
 * Application helper
 *
 * Add your application-wide methods in the class below, your helpers
 * will inherit them.
 *
 * @package       app.View.Helper
 */
class AppHelper extends Helper {
    function get_http() 
	{
		return 'http'.(empty($_SERVER['HTTPS'])?'':'s').'://';
    }
	
	function get_host_name()
	{
		return $this->get_http().$_SERVER['SERVER_NAME'].$this->get_linkpath();
	}
	
	function get_slug($value)
	{
		return get_slug($value); // using bootstrap function ...
	}
	
	function get_linkpath()
	{
		$test = str_replace('/', DS, getcwd() ); // beware of Linux OS ...
        $test2 = explode(DS , $test);
        $result = $test2[count($test2)-3];  // get word before /app/webroot
        
        $imagePath = "";
        if(empty($result) || !isLocalhost())
        {
            $imagePath = '/';
        }
        else
        {
            $imagePath = '/'.$result.'/';
        }
        
        return $imagePath;
	}
}
