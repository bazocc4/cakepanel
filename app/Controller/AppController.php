<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
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
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		https://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {
	public $active='index';
	public $uses = array('Account','User','UserMeta','Type','TypeMeta','EntryMeta','Entry','Role','Setting','InstantPaymentNotification');
	public $components = array('Auth','Session','RequestHandler');
	
	public $countListPerPage , $mediaPerPage , $mySetting , $user;

	public function __construct($request = null, $response = null) {
	    parent::__construct($request, $response);
	    // Your code here.
	}
	
	function get_db_user()
	{
		$fields = get_class_vars('DATABASE_CONFIG');
		return $fields['default']['login'];
	}
	
	function get_db_password()
	{
		$fields = get_class_vars('DATABASE_CONFIG');
		return $fields['default']['password'];
	}
	
	function get_db_name()
	{
		$fields = get_class_vars('DATABASE_CONFIG');
		return $fields['default']['database'];
	}
	
	function get_db_host()
	{
		$fields = get_class_vars('DATABASE_CONFIG');
		return $fields['default']['host'];
	}
	
	function _setInitLayout()
	{
		if(!$this->RequestHandler->isRss())
		{
			$this->layout = 'cms_default';
		}
	}
	
	function _setErrorLayout() 
	{
		if ($this->name == 'CakeError') 
		{
			$this->layout = 'error';
		}
	}

	function _setFlashInvalidFields( $errMsg = array() )
	{
		$flashMsg = "";
		foreach ($errMsg as $fieldkey => $fieldvalue) 
		{
			foreach ($fieldvalue as $key => $value) 
			{
				if(strpos($flashMsg, $value) === FALSE)
				{
					$flashMsg .= $value."<br>";
				}	
			}
		}
		$this->Session->setFlash($flashMsg,'failed');
	}
	
	/**
	* set layout title
	* @param string $title_for_layout get title
	* @return boolean
	**/
	
	public function setTitle($title_for_layout = null)
	{
        if(empty($title_for_layout))
        {
            $title_for_layout = $this->mySetting['title'];
        }
        else
        {
            $title_for_layout .= ' | '.$this->mySetting['title'];
        }
        
		$this->set(compact('title_for_layout'));
        return false;
	}
	
	/**
	* set all variable before render page / view files
	* @param string $activePage get active page
	* @return void
	**/
	
	public function beforeRender($activePage='Index')
	{
		$this->_setErrorLayout();		
		$this->set(compact('activePage'));
		$this->set('site',$this->get_host_name());
		$this->set('imagePath',$this->get_linkpath());
		$this->set('user',$this->user);
		// -------------------------------------------------------------------- >>>
		// view all the Type, but not Child !!
		$myTypes = $this->Type->find('all',array(
			'conditions' => array(
				'Type.parent_id' => 0
			),
			'order' => array('Type.modified')
		));
		$this->set('types',$myTypes);
		
		// get all the pages...
		$myPages = $this->Entry->find('all' , array(
			'conditions' => array(
				'Entry.entry_type' => 'pages'
			),
			'order' => array('Entry.id')
		));
		$this->set('pages' , $myPages);
		$this->set('mySetting' , $this->mySetting);
		parent::beforeRender();
	}
    
    function _convertEntrySlug()
    {
        if(!empty($this->request->params['entry']))
        {
            $this->request->params['entry'] = $this->Entry->_convertEntrySlug($this->request->params['entry']);
        }
        
        if(!empty($this->request->params['entry_parent']))
        {
            $this->request->params['entry_parent'] = $this->Entry->_convertEntrySlug($this->request->params['entry_parent']);
        }
    }
	
	/**
	* set all variable before load page / controller action
	* @return void
	**/	
	function beforeFilter()
	{
        parent::beforeFilter();		
		$this->_setInitLayout();
        $this->_convertEntrySlug();
        $this->Entry->query('SET SESSION group_concat_max_len = 100000');

		// url redirection for login kicked out !!
		$urlext = "";
		$is_admin = false;
		if($this->request->url != '/')
		{
			$myurl = explode('/' , $this->request->url);

			if(strtolower($myurl[0]) == 'admin')
			{
				array_shift($myurl);
				$is_admin = true;
			}

			if(!empty($myurl[0]) && strtolower($myurl[0]) != 'login')
			{
				$urlext = "?resource=%2F".implode("%2F" , $myurl);
                if(!empty($this->request->query))
                {
                    $urlext .= urlencode(get_more_extension($this->request->query));
                }
			}
		}

		/* AUTHENTICATION */
		$this->Auth->authenticate = array(
			'Form' => array(
				'fields' => array('username' => 'email', 'password' => 'password'),
				'userModel' => 'Account',
			),
		);
		$this->Auth->authError= 'Authorized access is required.';
		$this->Auth->autoRedirect = false;
		$this->Auth->logoutRedirect = $this->Auth->loginAction = array('controller'=>'login'.$urlext,'admin'=>$is_admin);

		// update $this->user variable with $this->Auth->user() if existed.
		$this->user = $this->Auth->user();
		if(!empty($this->user))
		{
			$this->user['UserMeta'] = array();
			$myUser = $this->User->findById($this->user['user_id']);
			foreach ($myUser['UserMeta'] as $key => $value) $this->user['UserMeta'][ $value['key'] ] = $value['value'];
		}
        
		// check role if admin or not...
		if( !empty($this->request->params['admin']) )
		{
            forceNoCache();
            if(!empty($this->user) && empty($this->user['Role']['privilege']) )
            {
                $this->Session->setFlash(__('Authorized access is required.'),'default',array() , 'auth');
                $this->redirect($this->Auth->logout());
            }
		}
        
        // set other general attributes ...
		$temp = $this->Setting->findByKey("custom-pagination");
		$this->countListPerPage = (empty($temp['Setting']['value'])?10:$temp['Setting']['value']);
		$this->mediaPerPage = 24;
		
		// get all the settings spec with metakey arranged !!
		$this->mySetting = $this->Setting->get_settings();
	}
	
	public function getNowDate()
	{
		return date('Y-m-d H:i:s' , gmt_adjustment());
	}
	
	public function get_slug($value)
	{
		return get_slug($value);
	}

	public function get_view_dir()
	{
		$str = substr(WWW_ROOT, 0 , strlen(WWW_ROOT)-1); // buang DS trakhir...
		$str = substr($str, 0 , strripos($str, DS)+1); // buang webroot...
		$src = $str.'View';
		return $src;
	}

// ------------------------------------------------------------------------------------------------------------ //
// ----------------------------------- HOST SETTING FUNCTION -------------------------------------------------- //
// ------------------------------------------------------------------------------------------------------------ //
	public function get_http() 
	{
		if(!empty($_SERVER['HTTPS']))
		{
			return 'https://';
		}
		else 
		{
			return 'http://';
		}
    }
	
	public function get_host_name()
	{
		return $this->get_http().$_SERVER['SERVER_NAME'].$this->get_linkpath();
	}
	
	public function get_linkpath()
	{
		$test = str_replace('/', DS, getcwd() ); // beware of Linux OS ...
		$test2 = explode(DS , $test ); 
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
// ------------------------------------------------------------------------------------------------------------ //
// ----------------------------------- END OF HOST SETTING FUNCTION ------------------------------------------- //
// ------------------------------------------------------------------------------------------------------------ //
}
