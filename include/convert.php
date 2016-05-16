<?php

require_once 'dbhelper.php';

/**
 * Class Convert
 */
class Convert {

    public static $maps = array(
        0   => 'mass_retailer',
        1   => '',
        2   => '',
        3   => '',
        4   => '',
        5   => '',
        6   => '',
        7   => '',
        8   => '',
        9   => '',
        10  => '',
        11  => '',
        12  => '',
        13  => '',
        14  => '',
    );

    public static $table = 'result';

    /**
     * Convert data from csv file
     * @param $csvFile
     * @return array|bool
     */
    public static function ConvertDataFromFile($csvFile) {
        if (($handle = fopen($csvFile, "r")) !== FALSE) {
            $returnData = array();
            $index = 1;
            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                $num = count($data);
                for ($c=0; $c < $num; $c++) {
                    $returnData[$index][] = $data[$c];
                }
                $index++;
            }
            fclose($handle);

            self::InsertData($returnData);
        }
        return false;
    }

    /**
     * Insert convert data from array
     * @param array $data
     * @return bool
     */
    public static function InsertData($data = array()) {
        // Map data
        foreach ($data as $row) {
            $insertData = array();
            foreach ($row as $key => $value) {
                $insertData[self::$maps[$key]] = $value;
            }

            // Insert to database
            if (!DBHelper::Insert(self::$table, $data)) {
                return false;
                break;
            }
        }
        return true;
    }
}