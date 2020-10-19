<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a551bd7de4.js" crossorigin="anonymous"></script>
    <title>Nugi Chat</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="<?= base_url(); ?>">Nugi Chat</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <!-- <li class="nav-item">
        <a class="nav-link" href="#">Events</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li> -->
    </ul>
    <span class="navbar-text">
    <ul class="navbar-nav mr-auto">
    
    <?php if($this->session->userdata('isLoggedIn')): ?>

    
      <li class="nav-item">
        <a class="nav-link" href="<?= base_url('dashboard/profile') ?>">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?= base_url('users/logout') ?>">LogOut</a>
      </li>

 

      
    <?php endif; ?>
      
    </ul>
    </span>
  </div>
</nav>
<div class="container">

