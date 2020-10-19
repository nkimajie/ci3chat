<div class="container">
    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class="card m-5">
                <div class="card-header">
                    <h2 class="text-center">
                        Profile
                    </h2>
                </div>
                <div class="card-body">
            
                    <img src="<?= base_url('assets/images/profile/defult.jpg') ?>" class="img-thumbnail rounded mx-auto d-block" style="width: 200px;" alt="">
                    <h3 class="text-center"><?= $posts['lastname'] ?> <?= $posts['firstname'] ?></h3>
                    <p class="mt-3"><strong>Email:</strong> <?= $posts['email'] ?></p>
                    <p><strong>Bio:</strong></p>
                    <div class="card">
                        <p><?= $posts['bio'] ?></p>
                    </div>
                    
                </div>

                <div class="card-footer">
                    <a href="<?= base_url('dashboard/edit/'.$posts['id']) ?>" class="btn btn-primary">Edit</a>
                </div>

            </div>

        </div>
    </div>
</div>