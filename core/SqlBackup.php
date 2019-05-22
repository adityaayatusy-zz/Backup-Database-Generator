<?php
//author :aditya ayatusy
class SqlBackup extends Database{
    public $dir;

    public function __contruct($dir = ''){
        if($dir != ''){
            $this->dir = $dir;
        }else{
            $this->dir = __DIR__;
        }
    }

    public function getTable(){
        $result = $this->query('SHOW TABLES');
        while($row = $result->fetch_assoc()){
        $rows[] = $row['Tables_in_'.$this->db];
        }
        return $rows;
    }

    public function getCreate($table){
        foreach ($table as $t) {
        $result = $this->query('SHOW CREATE TABLE '.$t);
        $row = $result->fetch_assoc();
        $rows[] = $row["Create Table"].';';
        }
        return $rows;
    }

    public function getData($table){
        foreach ($table as $t) {
        $describe = []; $rows = []; $se = []; $rowq = [];

        $result = $this->query('SELECT * FROM '.$t);
        while($roww = $result->fetch_row()){
            $rows[] = $roww;
        }

        foreach ($rows as $f) {
            $rowq = [];
            foreach ($f as $ff) {
            if(is_string($ff)){
                $rowq[] = '\''.$ff.'\'';
            }else if(is_null($ff)){
                $rowq[] = 'NULL';
            }else{
                $rowq[] = $ff;
            }
            $isi = '('.implode(',',$rowq).')';
            }
            $se[] = $isi;
        }
        $struktur = $this->query('DESCRIBE '.$t);
        while($row = $struktur->fetch_assoc()){
            $describe[] = '`'.$row['Field'].'`';
        }
        $merge = implode(',',$describe);
        if($se != []){
            $query[] = "INSERT INTO `$t` ($merge) VALUES ".implode(',',$se).';';
        }
        }
        return $query;

    }

    public function create(){
        $sql = '';
        $getTable = $this->getTable();
        $getCreate = $this->getCreate($getTable);
        $getData = $this->getData($getTable);
    
        foreach ($getCreate as $gc) {
            $sql .= $gc."\n\n";
        }
        foreach ($getData as $gd) {
            $sql .= $gd."\n\n";
        }
        $myfile = fopen($this->dir."db-".Date('d-m-Y').".sql", "w") or die("Unable to open file!");
        fwrite($myfile, $sql);
        fclose($myfile);

        return true;
    }
}
