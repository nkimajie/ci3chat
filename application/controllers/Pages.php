<?php

class Pages extends CI_Controller{
    public function index(){
       
        $data = [
            'title' => 'All Ticket'
        ];

        $this->load->view('templates/header');
        $this->load->view('home/home');
        $this->load->view('templates/footer');
    }
}