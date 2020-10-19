<?php

class UserModel extends CI_Model{
    public function register($password){
        $slug = url_title($this->input->post('email'));
        $data = array(
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'email' => $this->input->post('email'),
            'bio' => 'Please tell us about you',
            'password' => $password,
            'image'=> 'defult.jpg',
            'slug' => $slug
        );

        return $this->db->insert('users', $data);
    }

    public function check_email_exist($email){
        $query = $this->db->get_where('users', array('email' => $email));
        if(empty($query->result_array())){
            return true;
        }else{
            return false;
        }
    }

    public function login($email, $password){

        $this->db->where('email', $email);
        $this->db->where('password', $password);

        $result = $this->db->get('users');

        if($result->num_rows() == 1){
            return $result->row(0)->id;
        }else{
            return false;
        }


    }

    public function userProfile($id){

        $this->db->where('id', $id);
        $query = $this->db->get('users');
        if($query->num_rows() == 1){
        return $query->row_array();
        }else{
            return false;
        }
    }
}