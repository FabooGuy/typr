<?php
	if(!class_exists('database')){
		class database{
			public function __construct(){
				$mysqli = new mysqli('localhost','root','','typr'); //muss gegen Anmeldedaten Variabeln ausgetauscht werden
				
				if($mysqli->connect_errno){
					printf("no connection \n",$mysqli->connect_error);
					exit();
				}
				$this->connect = $mysqli;
			}
			
			public function action($query) {  //über diese Funktion laufen alle Aktionen auf der Datenbank
				$result = $this->connect->query($query);
				
				return $result;
			}
			
		}
	}
	//eine Instanz der Verbindung zur datenbank wird erstellt, um von überall darauf zugreifen zu können
	$db = new database;
	
?>