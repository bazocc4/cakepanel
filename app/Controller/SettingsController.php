<?php
class SettingsController extends AppController {
	public $name = 'Settings';
    public $components = array('RequestHandler','Validation','Session');
	public $helpers = array('Form', 'Html', 'Js', 'Time', 'Get');

	public function beforeFilter(){
        parent::beforeFilter();
		$this->Auth->allow('error404');
    }

	function index() {
		$this->setTitle('Setting');
	}

	function error404()
	{
		throw new NotFoundException('Error 404 - Not Found');
	}
	
	function admin_index() 
	{
        // ===================
        // TEST AREA here ...
        // ===================
        
        // ===================
        // END OF TEST AREA !!
        // ===================
        $this->setTitle('Setting');
        
        // for image input type reason...
        $this->set('myImageTypeList', $this->EntryMeta->embedded_img_meta('type') );
        
		// if form submit is taken...
		if(!empty($this->request->data))
		{
            // SPECIAL CASE FOR CHECKBOX CROPPING IMAGE DATA...
			$this->request->data['Setting'][11]['value'] = (empty($this->request->data['Setting'][11]['value'])?0:$this->request->data['Setting'][11]['value']);
			$this->request->data['Setting'][14]['value'] = (empty($this->request->data['Setting'][14]['value'])?0:$this->request->data['Setting'][14]['value']);
			
			// VALIDATION BEGINSSS...
			$errMsg = "";
			$myDetails = $this->request->data['Setting'];
			foreach ($myDetails as $key => $value) 
			{
				// checking validation from view layout !!!
				if(!empty($value['validation']))
                {
                    $myValid = explode('|', $value['validation']);
                    foreach ($myValid as $key10 => $value10) 
                    {
                        $tempMsg = $this->Validation->blazeValidate($value['value'],$value10 , $value['key']);
                        $errMsg .= (!empty($tempMsg) && strpos($errMsg, $tempMsg) === FALSE ?$tempMsg:"");
                    }
                }
			}
            // LAST CHECK ERROR MESSAGE !!
            if(!empty($errMsg))
            {
                $this->Session->setFlash($errMsg,'failed');
                return;
            }
            
			// UPDATE LANGUAGE SETTING FIRST !!
			if( !empty($myDetails[15]['multilanguage']) && !empty($myDetails[15]['optlang']) )
			{
                // if default language changed, migrate single language content to their new default language !!
                $old_def_code = strtolower(substr($this->mySetting['language'][0], 0,2));                
                $new_def_code = substr($myDetails[15]['value'], 0, 2);
                if($old_def_code != $new_def_code )
                {
                    // process OLD default language content !!
                    $old_content = $this->Entry->find('all', [
                        'conditions' => [
                            'Entry.lang_code LIKE' => $old_def_code.'-%',
                        ],
                        'fields' => ['lang_code'],
                        'recursive' => -1,
                    ]);
                    $old_content = array_map(function($el){ return substr($el, 3); }, array_column(array_column($old_content, 'Entry'), 'lang_code') );
                    
                    // process NEW default language content !!
                    $new_content = $this->Entry->find('all', [
                        'conditions' => [
                            'Entry.lang_code LIKE' => $new_def_code.'-%',
                        ],
                        'fields' => ['lang_code'],
                        'recursive' => -1,
                    ]);
                    $new_content = array_map(function($el){ return substr($el, 3); }, array_column(array_column($new_content, 'Entry'), 'lang_code') );
                    
                    // search for non-existing OLD language content in NEW language content !!
                    $diff_content = array_diff($old_content, $new_content);
                    if(!empty($diff_content))
                    {
                        $this->Entry->updateAll(
                            ['Entry.lang_code' => 'REPLACE(Entry.lang_code, "'.$old_def_code.'-", "'.$new_def_code.'-")' ],
                            ['Entry.lang_code' => array_map(function($el) use($old_def_code) { return $old_def_code.'-'.$el; }, $diff_content) ]
                        );
                    }
                }
                // END OF MIGRATION PROCESS !!
                
                $myDetails[15]['value'] = implode(chr(13).chr(10), array_unique(array_merge( array($myDetails[15]['value']), array_keys($myDetails[15]['optlang']) )));
			}
            
			// NOW SAVE THE SETTINGS ...
			foreach ($myDetails as $key => $value)
			{
				$this->Setting->id = $key+1;
				$this->Setting->saveField('value' , is_array($value['value'])?implode('|' , $value['value']):$value['value'] );
			}
			$this->Session->setFlash('Settings has been updated.','success');			
			$this->redirect('/admin/settings');
		}
        else
        {
            // clean to refresh tmp logs file !!
            clearLogs();
        }
	}
    
	function add() 
	{
		$this->autoRender = FALSE;
		$nameKey = strtolower(Inflector::slug($this->request->data['key']));
		$this->request->data['Setting']['key'] = "custom-".$nameKey;
		$this->request->data['Setting']['value'] = '';
		$this->Setting->create();
		$this->Setting->save($this->request->data);
		
		// prepare data for js callback...
		$this->request->data['Setting']['counter'] = $this->Setting->id - 1;
		$this->request->data['Setting']['slug_key'] = string_unslug($nameKey);
		echo json_encode($this->request->data['Setting']);
	}

	function delete($id) 
	{
		$this->autoRender = FALSE;
		$this->Setting->delete($id);
	}
}
