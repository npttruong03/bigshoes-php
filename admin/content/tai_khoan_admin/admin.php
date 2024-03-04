
<?php
    require_once ('../../dao/pdo.php');

    function admin_insert ($ma_ad,$ho_ten,$mat_khau,$email,$dia_chi){
        md5($mat_khau);
        $sql = "INSERT INTO admin(ma_ad,ho_ten,mat_khau,email,dia_chi) VALUES(?,?,?,?,?)";
        pdo_execute($sql,$ma_ad,$ho_ten,$mat_khau,$email,$dia_chi);
    }

    function admin_update($ma_ad,$ho_ten,$mat_khau,$email,$dia_chi){
        $sql = "UPDATE admin SET ho_ten=?,mat_khau=?,email=?,dia_chi=? WHERE ma_ad=?";
        pdo_execute($sql,$ho_ten,$mat_khau,$email,$dia_chi,$ma_ad);
    }

    function admin_delete($ma_ad){
        $sql = "DELETE FROM admin WHERE ma_ad=?";
        if(is_array($ma_ad)){
            foreach($ma_ad as $ma){
                pdo_execute($sql,$ma);
            }
        }else{
            pdo_execute($sql,$ma_ad);
        }
    }

    function admin_select_all(){
        $sql = "SELECT * FROM admin";
        return pdo_query($sql);
    }

    function admin_select_by_id($ma_ad){
        $sql = "SELECT * FROM admin WHERE ma_ad=?";
        return pdo_query_one($sql,$ma_ad);
    }

    function admin_change_password($ma_ad, $mat_khau_moi){
        $sql = "UPDATE admin SET mat_khau=? WHERE ma_ad=?";
        pdo_execute($sql, $mat_khau_moi, $ma_ad);
    }
?>