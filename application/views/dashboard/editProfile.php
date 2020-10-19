<div class="container">
  <div class="row">
    <div class="col-lg-6 m-auto">
      <div class="card m-5">
            <div class="card-header">
              <h2>Edit Profile</h2>
                <?php if(validation_errors()): ?>
                <div class="alert alert-danger text-center" role="alert">
                    <?= validation_errors(); ?>
                </div>
                <?php endif; ?>
            </div>
            <div class="card-body">
            <form method="post" action="" class="form-check">
            <input type="hidden" name="id" value="<?= $posts['id']; ?>">
            <div class="form-group">
                <label >First Name</label>
                <input class="form-control" type="text" name="firstname" value="<?= $posts['firstname']; ?>">
            </div>
            <div class="form-group">
                <label >Last Name</label>
                <input class="form-control" type="text" name="lastname" value="<?= $posts['lastname']; ?>">
            </div>
                
              <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input  class="form-control" name="email" id="exampleInputEmail1" value="<?= $posts['email']; ?>" readonly>
              </div>
              <div class="form-group">
                  <label >Profile Picture</label>
                  <input class="form-control-file" type="file" name="" value="<?= $posts['image']; ?>">
              </div>
              
              
            <div class="card-footer">
              <button type="submit" class="btn btn-primary">Update</button>
            </form>
            </div>
      </div>
    </div>
  </div>
</div>