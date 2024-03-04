<?php
    require_once ('pdo.php');
    require_once ('loai-tin-tuc.php');

    function tin_tuc_insert($chu_de,$hinh,$noi_dung,$ma_loai){//hàm thêm hàng hóa
        $sql = "INSERT INTO tin_tuc(chu_de,hinh,noi_dung,ma_loai) VALUES (?,?,?,?)";//chèn vào bảng hh các thông tin tương ứng
        pdo_execute($sql,$chu_de,$hinh,$noi_dung,$ma_loai);
    }

    function tin_tuc_update($ma_tt, $chu_de, $hinh, $ma_loai, $noi_dung){//sửa sản phẩm
        $sql = "UPDATE tin_tuc SET chu_de=?, hinh=?, ma_loai=?, noi_dung=? WHERE ma_tt=?";//cập nhật tt sp theo mã sp
        pdo_execute($sql, $chu_de, $hinh,$ma_loai, $noi_dung,$ma_tt);
        }

    function tin_tuc_delete($ma_tt){//hàm xóa sp
        $sql = "DELETE FROM tin_tuc WHERE ma_tt=?";//xóa hh theo mã hh
        if(is_array($ma_tt)){
            foreach($ma_tt as $ma){
                pdo_execute($sql,$ma);
            }
        }else{
            pdo_execute($sql,$ma_tt);
        }
    }

    function tin_tuc_select_all(){//hàm lấy all thông tin sp trong bảng hh
        $sql = "SELECT * FROM tin_tuc ORDER BY ma_tt DESC";//lấy dữ liệu từ mysql
        return pdo_query($sql);
    }

    function tin_tuc_select_all_moi(){
        $sql = "SELECT * FROM tin_tuc JOIN loai_tin_tuc ON tin_tuc.ma_loai = loai_tin_tuc.ma_loai WHERE ten_loai='Bài Viết Mới'";
        return pdo_query($sql);
    }

    function tin_tuc_select_all_noi_bat(){
        $sql = "SELECT * FROM tin_tuc JOIN loai_tin_tuc ON tin_tuc.ma_loai = loai_tin_tuc.ma_loai WHERE ten_loai='Nổi Bật'";
        return pdo_query($sql);
    }

    function tin_tuc_select_all_chu_de(){
        $sql = "SELECT * FROM tin_tuc ORDER BY chu_de DESC LIMIT 0,9";
        return pdo_query($sql);
    }

    function tin_tuc_select_by_id($ma_tt){//hàm lấy tt sp theo mã sp
        $sql = "SELECT * FROM tin_tuc WHERE ma_tt=?";
        return pdo_query_one($sql,$ma_tt);
    }

    // function hang_hoa_ban_chay(){
    //     $sql = "SELECT * FROM hang_hoa ORDER BY don_gia DESC LIMIT 0,6";
    //     return pdo_query($sql);
    // }

    // function tin_tuc_sale(){
    //     $sql = "SELECT * FROM tin_tuc ORDER BY giam_gia ASC LIMIT 0,5";
    //     return pdo_query($sql);
    // }

    // function hang_hoa_sale_9(){
    //     $sql = "SELECT * FROM hang_hoa ORDER BY giam_gia ASC LIMIT 0,9";
    //     return pdo_query($sql);
    // }

    // function tin_tuc_noi_bat(){
    //     $sql = "SELECT * FROM tin_tuc ORDER BY giam_gia DESC LIMIT 0,8";
    //     return pdo_query($sql);
    // }

    function tin_tuc_select_by_loai($ma_loai){
        $sql = "SELECT * FROM tin_tuc WHERE ma_loai=?";
        return pdo_query($sql, $ma_loai);
    }

    function tin_tuc_select_keyword($keyword){
        $sql = "SELECT * FROM tin_tuc tt "
                . " JOIN loai_tin_tuc lo ON lo.ma_loai=tt.ma_loai "
                . " WHERE chu_de LIKE ? OR ten_loai LIKE ?";
        return pdo_query($sql, '%'.$keyword.'%', '%'.$keyword.'%');
    }


?>