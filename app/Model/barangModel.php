<?php

namespace App\Model;

class barangModel{

    public static function insert($db, $data){
        $db->insert("tbl_barang",$data);
    }

}
