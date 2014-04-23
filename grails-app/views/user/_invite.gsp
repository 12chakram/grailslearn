<section id="content">
          <section class="vbox">
            <section class="scrollable padder">
              <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
                <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="#">UI kit</a></li>
                <li><a href="#">Form</a></li>
                <li class="active">Validation</li>
              </ul>
              <div class="m-b-md">
                <h3 class="m-b-none">Validation</h3>
              </div>
              <div class="row">
                <div class="col-sm-6">
                  <form data-validate="parsley">
                    <section class="panel panel-default">
                      <header class="panel-heading">
                        <span class="h4">Contact</span>
                      </header>
                      <div class="panel-body">
                        <p class="text-muted">Need support? please fill the fields below.</p>                        
                          <div class="form-group pull-in clearfix">
                            <div class="col-sm-6">
                              <label>Your name</label>
                              <input type="text" class="form-control" placeholder="Name" data-required="true">
                            </div>
                            <div class="col-sm-6">
                              <label>Email</label>
                              <input type="email" class="form-control" placeholder="Enter email" data-required="true">
                            </div>
                          </div>
                          <div class="form-group">
                            <label>Your website</label>
                            <input type="text" data-type="url"  data-required="true" class="form-control" placeholder="Your website url">
                          </div>
                          <div class="form-group">
                            <label>Message</label>
                            <textarea class="form-control" rows="6" data-minwords="6" data-required="true" placeholder="Type your message"></textarea>
                          </div>
                      </div>
                      <footer class="panel-footer text-right bg-light lter">
                        <button type="submit" class="btn btn-success btn-s-xs">Submit</button>
                      </footer>
                    </section>
                  </form>
                </div>
              </div>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
        </section>
</html>