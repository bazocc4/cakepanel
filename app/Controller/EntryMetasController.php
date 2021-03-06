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
		$filepath = getTempFolderPath().$file;
		if(file_exists($filepath))
		{
			promptDownloadFile($filepath);
			exit;
		}

		$filepath = WWW_ROOT.'favicon'.DS.$file;
		if(file_exists($filepath))
		{
			promptDownloadFile($filepath);
			exit;
		}

		// maybe favicon.ico file ??
		if ($file == 'favicon.ico') {
			$filepath = WWW_ROOT.$file;
			if(file_exists($filepath))
			{
				promptDownloadFile($filepath);
				exit;
			}
		}

		throw new NotFoundException('Error 404 - Not Found');
	}

	/*
	Cron Jobs Function ( run daily @ 03.00 AM ) !!
	==============================================
	Cron Jobs Command: curl -s 'http://www.example.com/entry_metas/cron/test' >/dev/null 2>&1
	ref: https://unix.stackexchange.com/questions/286598/running-a-cron-job-randomly-for-every-one-hour
	result: 0 * * * * sleep $((RANDOM*3600/32768)) && command
	nb: reading RANDOM gives a randomly-selected integer between 0 and 32767. Multiplying that by 3600 and dividing by 32768 results in an integer between 0 and 3599, and interpreting that in seconds gives a duration between nothing and just under one hour.
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
