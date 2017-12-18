<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>业务开单</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="${basePath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${basePath}/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="${basePath}/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${basePath}/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${basePath}/dist/css/skins/_all-skins.min.css">
  <!-- bootstrap datepicker 时间选择器 -->
  <link rel="stylesheet" href="${basePath}/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div id="app" class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="${basePath}/index.html" class="logo">

      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>万顺发</b></span>
    </a>
    <!-- 头部用户信息 和切换菜单-->
    <headnav></headnav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <!--菜单栏-->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">菜单</li>



        <!--获取权限菜单-->
        <menulist v-for="menu in menus" v-bind:menu="menu"></menulist>


        <li><a href="${basePath}/pages/sys/userManage.html"><i class="fa fa-book"></i> <span>账号管理</span></a></li>
        <li class="header">系统</li>

        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>修改密码</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>退出登录</span></a></li>
      </ul>
      <!--菜单栏-->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <section class="content-header">
      <h1>{{menu_name}}
        <small>{{url_name}}</small>
      </h1>

    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->

        <div class="col-lg-12">
          <!-- general form elements -->
          <!--主要信息-->
          <!--提货单位（填写）	车号（填写）	电话（填写）		仓库（选择）	备注（选择项，是否含税）	销售人员-->

          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">查询条件</h3>

            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">

              <div class="row">
                <div class="col-lg-3 col-xs-12">
                  <h6>品名</h6>
                  <div class="form-group">

                    <select class="form-control">
                      <option>仓库 1</option>
                      <option>仓库 2</option>
                      <option>仓库 3</option>
                      <option>仓库 4</option>
                      <option>仓库 5</option>
                    </select>
                  </div>
                </div>
                <div class="col-lg-3 col-xs-12">
                  <h6>产地</h6>
                  <div class="form-group">

                    <select class="form-control">
                      <option>仓库 1</option>
                      <option>仓库 2</option>
                      <option>仓库 3</option>
                      <option>仓库 4</option>
                      <option>仓库 5</option>
                    </select>
                  </div>
                </div>

                <div class="col-lg-3 col-xs-12">
                  <h6>材质</h6>
                  <div class="form-group">

                    <select class="form-control">
                      <option>仓库 1</option>
                      <option>仓库 2</option>
                      <option>仓库 3</option>
                      <option>仓库 4</option>
                      <option>仓库 5</option>
                    </select>
                  </div>
                </div>
                <div class="col-lg-3 col-xs-12">
                  <h6>规格</h6>
                  <div class="form-group">

                    <select class="form-control">
                      <option>仓库 1</option>
                      <option>仓库 2</option>
                      <option>仓库 3</option>
                      <option>仓库 4</option>
                      <option>仓库 5</option>
                    </select>
                  </div>
                </div>

                <!--通过以上四个 选定商品-->

                <div class="col-lg-3 col-xs-12">
                  <h6>仓库</h6>
                  <div class="form-group">

                    <select class="form-control">
                      <option>仓库 1</option>
                      <option>仓库 2</option>
                      <option>仓库 3</option>
                      <option>仓库 4</option>
                    </select>
                  </div>
                </div>
                <div class="col-lg-3 col-xs-12">
                  <h6>开始时间</h6>
                  <div class="form-group">

                    <div class="input-group date">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" class="form-control pull-right datepicker">
                    </div>
                  </div>
                </div>

                <div class="col-lg-3 col-xs-12">
                  <h6>结束时间</h6>
                  <div class="form-group">

                    <div class="input-group date">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" class="form-control pull-right datepicker">
                    </div>
                  </div>
                </div>


              </div>
            </div>
            <!-- /.box-body -->

            <div class="box-footer">
              <button type="submit" class="btn btn-primary">查询</button>
            </div>

          </div>

        </div>



        <div class="col-lg-12">
          <!-- general form elements -->
          <!--商品明细-->
          <!--品名	材质	规格	单位 (支/件)*	重量（件）	库存（选择之后带出对应仓库的库存） 	本仓数量	调货数量	总数量	单价（填写）	总价
-->

          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">入库记录</h3>
            </div>

            <!-- /.box-header -->

            <div class="box-body">

              <button type="button" class="btn btn-sm  btn-danger" data-toggle="modal" data-target="#modal-default">新增</button>


              <div class="row">

                <div class="col-xs-12">
                  <div class="box">

                    <!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                      <table class="table table-hover">
                        <tbody><tr>
                          <th>ID</th>

                          <th>时间</th>
                          <th>品名</th>
                          <th>产地</th>
                          <th>材质</th>
                          <th>规格</th>
                          <th>单位 (支/件)</th>
                          <th>重量（件）</th>
                          <th>仓库</th>
                          <th>入库数量</th>
                          <th>操作人</th>
                          <th>操作</th>
                        </tr>
                        <tr>
                          <td>1</td>

                          <td> 2017/11/26 16:59 </td>
                          <td>武钢</td>
                          <td>汉钢</td>
                          <td>HRB400E</td>
                          <td>12</td>
                          <td>12</td>
                          <td>12</td>
                          <td>仓库1</td>
                          <td>12</td><td>张三</td>
                          <td><div class="btn-group">
                            <button type="button" class="btn  btn-sm   btn-default">删除</button>
                            <button type="button" class="btn  btn-sm   btn-default">修改</button>
                          </div></td>
                        </tr>
                        <tr>
                          <td>1</td>

                          <td>2</td>
                          <td>Alexander Pierce</td>
                          <td>11-7-2014</td>
                          <td><span class="label label-warning">Pending</span></td>
                          <td>183</td><td>12</td>
                          <td>12</td> <td>仓库1</td>
                          <td>12</td><td>王五</td>
                          <td><div class="btn-group">
                            <button type="button" class="btn  btn-sm disabled    btn-default">删除</button>
                            <button type="button" class="btn  btn-sm disabled    btn-default">修改</button>
                          </div></td>
                        </tr>
                        <tr>
                          <td>1</td>

                          <td>3</td>
                          <td>Bob Doe</td><td>12</td><td>12</td>
                          <td>11-7-2014</td>
                          <td><span class="label label-primary">Approved</span></td>
                          <td>12</td> <td>仓库1</td>
                          <td>12</td><td>张三</td>
                          <td><div class="btn-group">
                            <button type="button" class="btn  btn-sm   btn-default">删除</button>
                            <button type="button" class="btn  btn-sm   btn-default">修改</button>
                          </div></td>
                        </tr>
                        <tr>
                          <td>1</td>

                          <td>4</td>
                          <td>Mike Doe</td>
                          <td>11-7-2014</td>
                          <td><span class="label label-danger">Denied</span></td>
                          <td>11-7-2014</td>
                          <td><span class="label label-primary">Approved</span></td>
                          <td>12</td> <td>仓库1</td>
                          <td>12</td><td>李四</td>
                          <td><div class="btn-group">
                            <button type="button" class="btn  btn-sm disabled    btn-default">删除</button>
                            <button type="button" class="btn  btn-sm disabled    btn-default">修改</button>
                          </div></td>
                        </tr>
                        </tbody></table>
                    </div>
                    <!-- /.box-body -->
                  </div>
                  <!-- /.box -->
                </div>

              </div>


            </div>
            <!-- /.box-body -->

          </div>



        </div>

      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->


    <div class="modal fade" id="modal-default">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">添加商品</h4>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-lg-3 col-xs-12">
                <h6>品名</h6>
                <div class="form-group">

                  <select class="form-control">
                    <option>仓库 1</option>
                    <option>仓库 2</option>
                    <option>仓库 3</option>
                    <option>仓库 4</option>
                    <option>仓库 5</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-3 col-xs-12">
                <h6>产地</h6>
                <div class="form-group">

                  <select class="form-control">
                    <option>仓库 1</option>
                    <option>仓库 2</option>
                    <option>仓库 3</option>
                    <option>仓库 4</option>
                    <option>仓库 5</option>
                  </select>
                </div>
              </div>

              <div class="col-lg-3 col-xs-12">
                <h6>材质</h6>
                <div class="form-group">

                  <select class="form-control">
                    <option>仓库 1</option>
                    <option>仓库 2</option>
                    <option>仓库 3</option>
                    <option>仓库 4</option>
                    <option>仓库 5</option>
                  </select>
                </div>
              </div>
              <div class="col-lg-3 col-xs-12">
                <h6>规格</h6>
                <div class="form-group">

                  <select class="form-control">
                    <option>仓库 1</option>
                    <option>仓库 2</option>
                    <option>仓库 3</option>
                    <option>仓库 4</option>
                    <option>仓库 5</option>
                  </select>
                </div>
              </div>

              <!--通过以上四个 选定商品-->
              <div class="col-lg-3 col-xs-12">
                <h6>单位 (支/件)</h6>
                <input type="text" class="form-control" value="13" disabled="">
              </div>
              <div class="col-lg-3 col-xs-12">
                <h6>重量（件）</h6>
                <input type="text" class="form-control" value="13" disabled="">
              </div>




              <div class="col-lg-3 col-xs-12">
                <h6>仓库</h6>
                <input type="text" class="form-control">
              </div>


              <div class="col-lg-3 col-xs-12">
                <h6>入库数量</h6>
                <input type="text" class="form-control">
              </div>
            </div>



          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
          </div>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->


  </div>
  <!-- /.content-wrapper -->
  <!--底部-->
  <myfooter>
  </myfooter>


</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${basePath}/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${basePath}/dist/js/adminlte.min.js"></script>


<!-- bootstrap datepicker -->
<script src="${basePath}/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="${basePath}/bower_components/bootstrap-datepicker/dist/locales/bootstrap-datepicker.zh-CN.min.js"></script>

<script src="${basePath}/dist/js/vue.min.js"></script>
<script src="${basePath}/dist/js/component.js"></script>
<script>
    new Vue({
        el: '#app',
        data: {
            menu_name: '',
            url_name: '',
            menus:[]
        },methods: {
            //获取菜单权限
            initMenu: function() {
                var myMenu=JSON.parse(localStorage.getItem('myMenu'))
                this.menus = myMenu ;

                this.menu_name = localStorage.getItem('menu_name') ;
                this.url_name = localStorage.getItem('url_name') ;
            }
        },
        mounted:function(){
            this.initMenu();
            //Date picker
            $('.datepicker').datepicker({
                language: "zh-CN",
                autoclose: true,
                format: "yyyy-mm-dd"
            });
        }
    })
</script>


</body>
</html>
