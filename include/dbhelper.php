<?php
require_once 'config.php';

/**
 * Class DBHelper
 */
class DBHelper {
    private static $_instance;
    private $conn;
    private $dbPrefix;

    public static function getInstance() {
        if(!self::$_instance) { // If no instance then make one
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function __construct()
    {
        // Create connection
        $this->conn = new mysqli(Config::$dbHost, Config::$dbUser, Config::$dbPass, Config::$dbName);
        $this->conn->set_charset("utf8");
    }

    public static function getRow($field = '', $table = '', $cond='')
    {
        $db = self::getInstance();
        $sql = 'SELECT ' . $field . ' FROM ' . $db->dbPrefix . $table . ' WHERE ' . $cond;
        $result = $db->conn->query($sql);
        if($result){
            if($row = $result->fetch_assoc())
                return $row;
        }
        return false;
    }

    public static function getArrayRow($field = '', $table = '', $cond='', $limit = '')
    {
        $db = self::getInstance();
        $sql = 'SELECT ' . $field . ' FROM ' . $db->dbPrefix . $table;
        if($cond)
            $sql .= ' WHERE ' . $cond;
        if($limit)
            $sql .= ' LIMIT ' . $limit;

        $result = $db->conn->query($sql);
        if($result){
            $data = array();
            while($row = $result->fetch_assoc()){
                $data[] = $row;
            }
            return $data;
        }
        return false;
    }

    public static function runQuery($sql)
    {
        $result = self::getInstance()->conn->query($sql);
        return $result;
    }

    public static function Insert($table, $data)
    {
        if(is_object($data))
            $data = (array)$data;
        $db = self::getInstance();
        $sql = 'INSERT INTO ' . $db->dbPrefix . $table . ' (';
        $arrKeys = array_keys($data);
        $sql .= '`' . implode('`, `', $arrKeys) . '`) VALUES (';
        foreach($data as $v){
            if(is_numeric($v)){
                $sql .= $v . ',';
            }else{
                $sql .= "'" . addslashes($v) . "',";
            }
        }
        $sql = rtrim($sql, ',');
        $sql .= ')';
        if($db->conn->query($sql))
            return $db->conn->insert_id;
        else
            return false;
    }

    public static function Update($table, $data, $condition)
    {
        $db = self::getInstance();
        $sql = 'UPDATE '.$db->dbPrefix . $table . ' SET ';
        foreach($data as $k => $v){
            if(is_numeric($v)){
                $sql .= '`' . $k . '`=' . $v . ',';
            }else{
                $sql .= '`' . $k . "`='" . addslashes($v) . "',";
            }
        }
        $sql = rtrim($sql, ',');
        if($condition)
            $sql .= ' WHERE ' . $condition;
        if($result = $db->conn->query($sql)) {
            return $result;
        }else
            return false;
    }
}