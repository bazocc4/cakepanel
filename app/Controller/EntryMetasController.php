<?php
class EntryMetasController extends AppController {
	var $name = 'EntryMetas';
	public function beforeFilter(){
		parent::beforeFilter();
		$this->Auth->allow('cron', 'download');
	}

	/* CKEDITOR.config.filebrowserUploadUrl target link.  */
	function cke_upload_url()
	{
		$this->autoRender = false;

		uploadFile($_FILES['upload']);

		$callback = $_GET['CKEditorFuncNum'];
		$url = $this->get_linkpath().'entry_metas/download/'.$_FILES['upload']['name'];
		$msg = 'File \\"'.$_FILES['upload']['name'].'\\" has been uploaded successfully!';

		$output = '<html><body><script type="text/javascript">window.parent.CKEDITOR.tools.callFunction('.$callback.', "'.$url.'","'.$msg.'");</script></body></html>';
		echo $output;
	}

	/* Trigger file download from frontend page. */
	function download($file)
	{
		$file = getTempFolderPath().$file;

		if(file_exists($file))
		{
			promptDownloadFile($file);
			exit;
		}
		else
		{
			throw new NotFoundException('Error 404 - Not Found');
		}
	}

	/*
	Cron Jobs Function ( run daily @ 03.00 AM ) !!
	==============================================
	Cron Jobs Command: curl http://www.example.com/entry_metas/cron/test >/dev/null 2>&1
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
