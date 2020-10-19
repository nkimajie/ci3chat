<?php

class Dashboard extends CI_Controller{
    public function index($chat_id = NULL){
        $user_id = $this->session->userdata('id');
        $data = [
            'title' => 'Dashboard',
            'test' => $user_id,
            'friend' => $this->DashModel->addFriends($this->session->userdata('id'), $this->input->post('search')),
            'allUsers' => $this->DashModel->allUsers($user_id),
            'chat' => $this->DashModel->getChat($user_id, $chat_id)
        ];

        print_r($user_id);
        print_r($data['chat']);die;

        $this->load->view('templates/header', $data);
        $this->load->view('dashboard/dashboard');
        $this->load->view('templates/footer');
    }

    public function profile(){
       if(!$this->session->userdata('isLoggedIn')){
           redirect(base_url());
       }

       $id = $this->session->userdata('id');
        $data = [
            'title' => 'Profile',
            'posts' => $this->UserModel->userProfile($id),  
        ];       
 
        $this->load->view('templates/header', $data);
        $this->load->view('dashboard/profile');
        $this->load->view('templates/footer');
    }

    public function edit(){
        $id = $this->session->userdata('id');
        $data = [

            'title' => 'Edit Profile',
            'posts' => $this->UserModel->userProfile($id),
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('dashboard/editProfile');
        $this->load->view('templates/footer');

    }

     
       
    
    
    // public function add_friends(){
    //     if(!$this->session->userdata('isLoggedIn')){
    //         redirect(base_url());
    //     }
        
    //     $data = [
    //         'title' => 'Dashboard',
    //         'test' => $this->session->userdata('id'),
    //         'friend' => $this->DashModel->addFriends($this->session->userdata('id'), $this->input->post('search')),
    //     ];

    //     // $this->form_validation->set_rules('search', 'Add Friend', 'required');
    //     // if($this->form_validation->run() === FALSE){

    //     //     $data['friend'] = $this->DashModel->addFriends($this->session->userdata('id'), $this->input->post('search'));
            
    //     //     redirect(base_url('dashboard', $data));
    //     // }

    //     $this->load->view('templates/header', $data);
    //     $this->load->view('dashboard/dashboard');
    //     $this->load->view('templates/footer');
    // }
}