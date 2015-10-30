<?php
class EntryMetasController extends AppController {
	var $name = 'EntryMetas';
	public function beforeFilter(){
        parent::beforeFilter();
        $this->Auth->allow('cron');
    }
    
    /*
        Cron Jobs Function ( run daily @ 03.00 AM ) !!
    */
    public function cron($fakeauth)
    {
        if($fakeauth == 'test') // test cron jobs function !!
		{
            $sql = $this->Setting->findByKey('custom-pagination');
			$this->Setting->id = $sql['Setting']['id'];
			$this->Setting->saveField('value' , $sql['Setting']['value'] + 1);
		}
		else
		{
			throw new NotFoundException('Error 404 - Not Found');
		}
        
        // end of cron jobs !!
        dpr("Cron Jobs SUCCESS! (".date('Y-m-d H:i:s').")");
        exit;
    }

    function deleteTempThumbnails()
    {
    	$this->autoRender = FALSE;
    	$files = glob('img/upload/thumbnails/*'); // get all file names
		foreach($files as $file){ // iterate files
		  if(is_file($file) && strtolower(basename($file)) != 'empty')
		    unlink($file); // delete file
		}
    }
}
