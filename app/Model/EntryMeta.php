<?php
class EntryMeta extends AppModel {
	var $name = 'EntryMeta';
    var $validate = array(
		'entry_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'key' => array(
			'notempty' => array(
				'rule' => array('notBlank'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Entry' => array(
			'className' => 'Entry',
			'foreignKey' => 'entry_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
    
	// DATABASE MODEL...
	var $Type = NULL;
	var $TypeMeta = NULL;
	var $Entry = NULL;
    var $EntryMeta = NULL;
    var $Account = NULL;
	
	public function __construct( $id = false, $table = NULL, $ds = NULL )
	{
        parent::__construct($id, $table, $ds);
        
        // set needed database model ...
		$this->Type = ClassRegistry::init('Type');
		$this->TypeMeta = ClassRegistry::init('TypeMeta');
        
		$this->Entry = ClassRegistry::init('Entry');
        $this->EntryMeta = $this; // just as alias ...
		$this->Account = ClassRegistry::init('Account');
	}
    
    /**
	 * retrieve all image types in one indexing array based on that image id as selector
	 * @param string $type contain type attribute of the image (default is image type)
	 * @return array $imgTypeList contains array of image type lists
	 * @public
	 **/
	function embedded_img_meta($type)
	{
        $imgReason = $this->find('all', array(
			'conditions' => array('EntryMeta.key' => 'image_'.$type),
            'recursive' => -1
		));
        
        $imgTypeList = array_column(array_column($imgReason, 'EntryMeta'), 'value', 'entry_id');
		$imgTypeList[0] = 'jpg';
        
		return $imgTypeList;
	}
	
	/*
	* Delete files in EntryMeta when a data is to be deleted !!
    */
	function remove_files($myType , $myEntry)
	{
		$haystack = array();
		foreach ($myType['TypeMeta'] as $key => $value) 
		{
			if($value['input_type'] == 'file')
			{
				array_push($haystack , $value['key']);
			}
		}
		
		if(!empty($haystack))
		{
			foreach ($myEntry['EntryMeta'] as $key => $value) 
			{
				if(in_array($value['key']??NULL, $haystack) && empty($this->EntryMeta->findByValue($value['value'])) )
				{
					deleteFile($value['value']);
				}
			}
		}
	}
}
