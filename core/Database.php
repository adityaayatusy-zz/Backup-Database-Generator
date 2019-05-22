<?php
class Database{
  protected $server ='localhost';
  protected $user = 'root';
  protected $password = '';
  protected $db = 'db';
  protected $conn;

  public function __construct(){
    $this->conn = new Mysqli($this->server,$this->user,$this->password,$this->db);
    if($this->conn->connect_error){
      var_dump($this->conn->connect_error);
    }
  }

  //get data
  function get_data($query){
    $result = $this->conn->query($query);
    while($row = $result->fetch_assoc()){
      $rows[] = $row;
    }
    if(count($rows) == 1){
      return $rows[0];
    }
    return $rows;
  }

   //query
  function query($query){
    if ($q = $this->conn->query($query)) {
      return $q;
    } else {
        echo "Error: " . $this->conn->error;
    }
  }
}
