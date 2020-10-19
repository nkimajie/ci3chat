<div class="container">
  <div class="row">
    <div class="col-lg-6 m-auto">
      <div class="card m-5">
            <div class="card-header">
              <h2>Login</h2>
              <?php if(validation_errors()): ?>
               <div class="alert alert-danger text-center" role="alert">
                    <?= validation_errors(); ?>
                </div>
                <?php endif; ?>
              <?php if($this->session->flashdata('registered')): ?>
               <div class="alert alert-success text-center" role="alert">
                    <?= $this->session->flashdata('registered'); ?>
                </div>
                <?php endif; ?>

                <?php if($this->session->flashdata('invalid_login')): ?>
               <div class="alert alert-danger text-center" role="alert">
                    <?= $this->session->flashdata('invalid_login'); ?>
                </div>
                <?php endif; ?>

            </div>
            <div class="card-body">
            <form method="post" action="" class="form-check">
                
              <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" name="email" id="exampleInputEmail1" value="<?= set_value('email'); ?>">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password">
              </div>
              <p>Don't have an account ?<a href="<?= base_url('users/register') ?>">Register</a></p>
            </div>
            <div class="card-footer">
              <button type="submit" class="btn btn-primary">Login</button>
            </form>
            </div>
      </div>
    </div>
  </div>
</div>