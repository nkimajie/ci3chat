<?php

class DashModel extends CI_Model{
    public function addFriends($id, $search){
        $where = "id != '".$id."' AND (firstname LIKE '%".$search."%' OR lastname LIKE '%".$search."%')";

        $this->db->where($where);
        return $this->db->get('users');

        
    }
    public function allUsers($user_id){
        $this->db->order_by('id', 'DESC');
        $this->db->where("id != ".$user_id);
        $query = $this->db->get('users');
        return $query->result_array();
    }

    public function getChat($user_id, $chat_id){
        $select = "sender_id = '".$user_id."' AND receiver_id = '".$chat_id."' AND receiver_id = '".$chat_id."' AND sender_id = '".$user_id."'";
        $this->db->where($select);
        $query = $this->db->get('message');
        return $query->result_array();
    }

    // private function overflow32($v)
    // {
    //     $v = $v % 4294967296;
    //     if ($v > 2147483647) return $v - 4294967296;
    //     elseif ($v < -2147483648) return $v + 4294967296;
    //     else return $v;
    // }
    
    // function hashCode( $s )
    // {
    //     $h = 0;
    //     $len = strlen($s);
    //     for($i = 0; $i < $len; $i++)
    //     {
    //         $h = $this->overflow32(31 * $h + ord($s[$i]));
    //     }
    
    //     return $h;
    // }
    
    // function getChatNode( $sender, $receiver) {
    //     if ($this->hashCode($sender) <= $this->hashCode($receiver)) {
    //       return $sender + '-' + $receiver;
    //     } else {
    //       return $receiver + '-' + $sender;
    //     }
    //   }
}