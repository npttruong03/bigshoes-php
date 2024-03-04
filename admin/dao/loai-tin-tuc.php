<?php
    require_once ('pdo.php');
    
    // Insert dữ liệu vào bảng loại hàng
    function loai_tin_tuc_insert($ten_loai){
        $sql = "INSERT INTO loai_tin_tuc(ten_loai) VALUES (?)";
        pdo_execute($sql,$ten_loai);
    }

    // Cập nhật dữ liệu vào bảng loại hàng
    function loai_tin_tuc_update($ma_loai, $ten_loai){
        $sql = "UPDATE loai_tin_tuc SET ten_loai=? WHERE ma_loai=?";
        pdo_execute($sql,$ten_loai,$ma_loai);
    }

    // Xóa dữ liệu theo mã loại hàng
    function loai_tin_tuc_delete($ma_loai){
        $sql = "DELETE FROM loai_tin_tuc WHERE ma_loai=?";
        if(is_array($ma_loai)){
            foreach($ma_loai as $ma){
                pdo_execute($sql,$ma);
            }
        }else{
            pdo_execute($sql,$ma_loai);
        }
    }

    // Select toàn bộ dữ liệu bảng loại hàng
    function loai_tin_tuc_select_all(){
        $sql = "SELECT * FROM loai_tin_tuc ORDER BY ma_loai DESC"; // sắp xếp giảm dần
        return pdo_query($sql);
    }

    // Select dữ liệu bảng loại hàng theo mã loại hàng
    function loai_tin_tuc_select_by_id($ma_loai){
        $sql = "SELECT * FROM loai_tin_tuc WHERE ma_loai=?";
        return pdo_query_one($sql,$ma_loai);
    }
?>