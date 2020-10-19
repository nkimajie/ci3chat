<?php

class Users extends CI_Controller{
   public function register(){
       $data = [
           'title' => 'Register User',
       ];

       $this->form_validation->set_rules('firstname', 'First Name', 'required|min_length[3]|max_length[50]');
       $this->form_validation->set_rules('lastname', 'Last Name', 'required|min_length[3]|max_length[50]');
       $this->form_validation->set_rules('email', 'Email', 'required|max_length[50]|valid_email|callback_check_email_exist');
       $this->form_validation->set_rules('password', 'Password', 'required|min_length[8]|max_length[50]');
       $this->form_validation->set_rules('cpassword', 'Confirm Password', 'matches[password]');

       if($this->form_validation->run() === FALSE){

       $this->load->view('templates/header', $data);
       $this->load->view('users/register');
       $this->load->view('templates/footer');

       }else{
           $password = md5($this->input->post('password'));
           $this->UserModel->register($password);
           $this->session->set_flashdata('registered', 'Registration Successful Please Login..');
           redirect(base_url('users/login'));

       }
              
   }

   public function check_email_exist($email){
       $this->form_validation->set_message('check_email_exist', 'Email Address Already Exist');
       if($this->UserModel->check_email_exist($email)){
           return true;
       }else{
           return false;
       }
   }

   public  function login(){
       if($this->session->userdata('isLoggedIn')){
           redirect(base_url('dashboard'));
       }
       $data = [
           'title' => 'Login'
       ];

       $this->form_validation->set_rules('email', 'Email', 'required|max_length[50]|valid_email');
       $this->form_validation->set_rules('password', 'Password', 'required|min_length[8]');

       if($this->form_validation->run() === FALSE){


       $this->load->view('templates/header', $data);
       $this->load->view('users/login');
       $this->load->view('templates/footer');
       }else{
           $email = $this->input->post('email');
           $password = md5($this->input->post('password'));
           

           $user_id = $this->UserModel->login($email, $password);
           if($user_id){
               $user_data = array(
                   'id' => $user_id,
                   'email' => $email,
                //    'firstname' => $user_id['firstname'],
                   'isLoggedIn' => true
               );
               $this->session->set_userdata($user_data);

               $this->session->set_flashdata('logged_in', 'Login Successful');
               redirect(base_url('dashboard'));
           }else{
               $this->session->set_flashdata('invalid_login', 'Email or password incorrect');
               redirect(base_url('users/login'));
           }
       }
   }

   public function logout(){
       $this->session->unset_userdata('id');
       $this->session->unset_userdata('email');
       $this->session->unset_userdata('isLoggedIn');

       $this->session->set_flashdata('logged_out', 'Account Logged Out');
       redirect(base_url());
   }

   
}