<!DOCTYPE html>
<html lang="en" class="app">
<head>
  <meta charset="utf-8" />
  <meta name="layout" content="user">
  <title>Notebook | Web Application</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
</head>
<body class="">
  <section class="vbox">
     <g:render template="header"></g:render>
    <section>
      <section class="hbox stretch">
        <!-- .leftmenu -->
            <g:render template="leftmenu"></g:render>
        <!-- /.leftmenu -->
        
         <!-- .Content -->
                 <g:render template="dashboard"></g:render>
         <!-- /.Content -->
          <!--
        <aside class="bg-light lter b-l aside-md hide" id="notes">
          <div class="wrapper">Notification</div>
        </aside>
        -->
      </section>
    </section>
  </section>
</body>
</html>