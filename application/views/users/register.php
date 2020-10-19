<div class="container">
  <div class="row">
    <div class="col-lg-6 m-auto">
      <div class="card m-5">
            <div class="card-header">
              <h2>Register</h2>
              <?php if(validation_errors()): ?>
               <div class="alert alert-danger text-center" role="alert">
                    <?= validation_errors(); ?>
                </div>
                <?php endif; ?>
            </div>
            <div class="card-body">
            <form method="post" action="" class="form-check">
            <div class="form-group">
                <label >First Name</label>
                <input class="form-control" type="text" name="firstname" value="<?= set_value('firstname'); ?>">
            </div>
            <div class="form-group">
                <label >Last Name</label>
                <input class="form-control" type="text" name="lastname" value="<?= set_value('lastname'); ?>">
            </div>
                
              <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="text" class="form-control" name="email" id="exampleInputEmail1" value="<?= set_value('email'); ?>">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password">
              </div>
              <div class="form-group">
                <label >Confirm Password</label>
                <input class="form-control" type="password" name="cpassword">
            </div>
              <p>Already have an account ?<a href="<?= base_url('users/login') ?>">Login</a></p>
            </div>
            <div class="card-footer">
              <button type="submit" class="btn btn-primary">Register</button>
            </form>
            </div>
      </div>
    </div>
  </div>
</div>