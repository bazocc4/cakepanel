<?php
/**
 * Application model for CakePHP.
 *
 * This file is application-wide model file. You can put all
 * application-wide model-related methods here.
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
 * @package       app.Model
 * @since         CakePHP(tm) v 0.2.9
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Model', 'Model');

/**
 * Application model for Cake.
 *
 * Add your application-wide methods in the class below, your models
 * will inherit them.
 *
 * @package       app.Model
 */
class AppModel extends Model {
    function getCurrentUser()
	{
		$this_user = CakeSession::read('Auth.User');
		if(!empty($this_user))
		{
			$User = ClassRegistry::init('User');
			$this_user['UserMeta'] = array();
			$myUser = $User->findById($this_user['user_id']);
			foreach ($myUser['UserMeta'] as $key => $value) $this_user['UserMeta'][ $value['key'] ] = $value['value'];
		}
		return $this_user;
	}
	
	public function get_slug($value)
	{
		return get_slug($value);
	}
	
	/** 
     * checks is the field value is unqiue in the table 
     * note: we are overriding the default cakephp isUnique test as the 
	 * original appears to be broken 
     * 
     * @param string $data Unused ($this->data is used instead) 
     * @param mixed $fields field name (or array of field names) to 
	 * validate 
     * @return boolean true if combination of fields is unique 
     */ 
     function checkUnique($data, $fields) 
     { 
        if (!is_array($fields)) { 
                $fields = array($fields); 
        } 
        foreach($fields as $key) { 
                $tmp[$key] = $this->data[$this->name][$key]; 
        } 
        if (isset($this->data[$this->name][$this->primaryKey])) { 
                $tmp[$this->primaryKey] = "<>".$this->data[$this->name][$this->primaryKey]; 

        } 
        return $this->isUnique($tmp, false); 
     } 
}
