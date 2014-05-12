<?php
class Setting extends AppModel {
	var $name = 'Setting';
	var $validate = array(
		'key' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
	
	// DATABASE MODEL...
	var $User = NULL;
	var $UserMeta = NULL;
	var $Entry = NULL;
	var $EntryMeta = NULL;
	var $Account = NULL;
	
	public function __construct( $id = false, $table = NULL, $ds = NULL )
	{
		parent::__construct($id, $table, $ds);
		
		// set needed database model ...
		$this->User = ClassRegistry::init('User');
		$this->UserMeta = ClassRegistry::init('UserMeta');
		$this->Entry = ClassRegistry::init('Entry');
		$this->EntryMeta = ClassRegistry::init('EntryMeta');
		$this->Account = ClassRegistry::init('Account');
	}
	
	/**
	 * retrieve all template settings based on name and key in indexing array
	 * @return array $mySetting contains array of indexing settings
	 * @public
	 **/
	public function get_settings()
	{			
		$mySetting = $this->find('all',array('order' => array('Setting.id')));
		foreach ($mySetting as $key => $value) 
		{
			$mySetting[$value['Setting']['key']] = $value['Setting']['value'];
		}
		$mySetting['language'] = parse_lang($mySetting['language']);
		return $mySetting;
	}
	
	// ----------------------------------------------------------------------------------- >>>
	// -------------------- DATABASE BACKUP & RESTORE FUNCTION --------------------------- >>>
	// ----------------------------------------------------------------------------------- >>>
	/* backup the db OR just a table */
	function backup_tables($host,$user,$pass,$name,$tables = '*')
	{ 
	  $link = mysql_connect($host,$user,$pass);
	  mysql_select_db($name,$link);
	  
	  //get all of the tables
	  if($tables == '*')
	  {
	    $tables = array();
	    $result = mysql_query('SHOW TABLES');
	    while($row = mysql_fetch_row($result))
	    {
	      $tables[] = $row[0];
	    }
	  }
	  else
	  {
	    $tables = is_array($tables) ? $tables : explode(',',$tables);
	  }
	  
	  //cycle through
	  foreach($tables as $table)
	  {
	    $result = mysql_query('SELECT * FROM '.$table);
	    $num_fields = mysql_num_fields($result);
	    
	    $return.= 'DROP TABLE IF EXISTS '.$table.';';
	    $row2 = mysql_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
	    $return.= "\n\n".$row2[1].";\n\n";
	    
	    for ($i = 0; $i < $num_fields; $i++) 
	    {
	      while($row = mysql_fetch_row($result))
	      {
	        $return.= 'INSERT INTO '.$table.' VALUES(';
	        for($j=0; $j<$num_fields; $j++) 
	        {
	          $row[$j] = addslashes($row[$j]);
	          $row[$j] = ereg_replace("\n","\\n",$row[$j]);
	          if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
	          if ($j<($num_fields-1)) { $return.= ','; }
	        }
	        $return.= ");\n";
	      }
	    }
	    $return.="\n\n\n";
	  }
	  return $return;
	}

	function executeSql($hostname,$db_user,$db_password,$database_name,$sqlFileToExecute)
	{
		$message = "success";
		$link = mysql_connect($hostname, $db_user, $db_password);
		if (!$link) 
		{
		    $message = "MySQL Connection error!";
		    return $message;
		}
		
		$db_selected = mysql_select_db($database_name, $link);
		if(!$db_selected)
		{
			$message = "Wrong MySQL Database!";
			return $message;
		}
		
		// clean database first !!
		$this->cleanDatabase();
		
		// read the sql file
		$f = fopen($sqlFileToExecute,"r+");
		$sqlFile = fread($f, filesize($sqlFileToExecute));
		$sqlArray = explode(';',$sqlFile);
		foreach ($sqlArray as $stmt)
		{
			if (strlen($stmt)>3 && substr(ltrim($stmt),0,2)!='/*')
			{
				mysql_query($stmt);
			}
		}
		unlink($sqlFileToExecute);
		return $message;
	}
	
	function cleanDatabase()
	{
		// delete User , sisakan 1 user (super admin) ...
/*		$super = $this->Account->findByRoleId("1");
		
		// delete USER DATA...
		$this->User->deleteAll(array('User.id !=' => $super['User']['id']));		
		$this->UserMeta->deleteAll(array('UserMeta.user_id !=' => $super['User']['id']));		
		$this->Account->deleteAll(array('Account.user_id !=' => $super['User']['id']));
*/		// delete ENTRY DATA...
		$this->Entry->deleteAll(array('1 = 1'));
		$this->EntryMeta->deleteAll(array('1 = 1'));
	}
}
