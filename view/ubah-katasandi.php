<div class="col-md-12">
              <!-- Horizontal Form -->
              <div class="box box-info">
              <br />
                <!-- form start -->
                <form class="form-horizontal" method="post" action="asset/proses.php?change-pwd">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Password lama</label>
                      <div class="col-sm-10">
                        <input type="password" name="old-pwd" class="form-control" id="inputEmail3" placeholder="*************">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputPassword3" class="col-sm-2 control-label">Password baru</label>
                      <div class="col-sm-10">
                        <input type="password" name="new-pwd" class="form-control" id="inputPassword3" placeholder="*************">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputPassword3" class="col-sm-2 control-label">Ulangi Password</label>
                      <div class="col-sm-10">
                        <input type="password" name="cek-new-pwd" class="form-control" id="inputPassword3" placeholder="*************">
                      </div>
                    </div>
                  </div><!-- /.box-body -->
                  <div class="box-footer">
                    <button type="button" class="btn btn-default"><i class="fa fa-remove"> Batal</i></button>
                    <button type="submit" class="btn btn-info pull-right"><i class="fa fa-save"> Ubah</i></button>
                  </div><!-- /.box-footer -->
                </form>
              </div><!-- /.box -->
