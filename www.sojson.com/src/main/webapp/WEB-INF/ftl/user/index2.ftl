<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>万顺发首页</title>
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
        <a href="index2.html" class="logo">

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


                <li class="treeview" v-for="menu in menus">
                    <a href="#">
                        <i class="fa fa-pie-chart"></i>
                        <span>{{ menu.name }}</span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu">
                        <li v-for="url in menu.list"><a v-bind:href="url.href" v-on:click="logMenu(menu.name,url.name)"><i
                                class="fa fa-circle-o"></i>{{url.name}}</a>
                        </li>
                    </ul>
                </li>


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
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>{{menu_name}}
                <small>{{url_name}}</small>
                <!--<a class="btn btn-app">-->
                <!--<i class="fa fa-refresh "></i> 刷新-->
                <!--</a>-->
                <button type="button" class="btn btn-success btn-sm"><i class="fa fa-refresh"></i>刷新</button>
            </h1>


        </section>

        <!--内容区域-->
        <section class="content">

            <div class="row">
                <!-- Left col -->
                <section class="col-lg-12 connectedSortable">

                    <!--库存汇总 box-->
                    <div class="col-lg-6">
                        <div class="col-lg-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">螺纹钢-aaa</h3>
                                </div>

                                <!-- /.box-header -->

                                <div class="box-body">

                                    <table class="table table-hover">
                                        <tbody>
                                        <tr>

                                            <th>材质</th>
                                            <th>规格</th>
                                            <th>单位 (支/件)</th>
                                            <th>重量（件）</th>
                                            <th>意向量</th>
                                            <th>余量</th>
                                            <th>总库存</th>
                                            <th>总吨位</th>
                                            <th></th>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>HRB400</td>
                                            <td>42</td>
                                            <td>3</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <label class="label-primary label"> 总库存：8888888</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="label-primary  label"> 总吨位：98737</label>
                                </div>

                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">螺纹钢-bbbb</h3>
                                </div>

                                <!-- /.box-header -->

                                <div class="box-body">

                                    <table class="table table-hover">
                                        <tbody>
                                        <tr>

                                            <th>材质</th>
                                            <th>规格</th>
                                            <th>单位 (支/件)</th>
                                            <th>重量（件）</th>
                                            <th>意向量</th>
                                            <th>余量</th>
                                            <th>总库存</th>
                                            <th>总吨位</th>
                                            <th></th>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>HRB400</td>
                                            <td>42</td>
                                            <td>3</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <label class="label-primary label"> 总库存：8888888</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="label-primary  label"> 总吨位：98737</label>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">螺纹钢-华航</h3>
                                </div>

                                <!-- /.box-header -->

                                <div class="box-body">

                                    <table class="table table-hover">
                                        <tbody>
                                        <tr>

                                            <th>材质</th>
                                            <th>规格</th>
                                            <th>单位 (支/件)</th>
                                            <th>重量（件）</th>
                                            <th>意向量</th>
                                            <th>余量</th>
                                            <th>总库存</th>
                                            <th>总吨位</th>
                                            <th></th>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>HRB400</td>
                                            <td>42</td>
                                            <td>3</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <label class="label-primary label"> 总库存：8888888</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="label-primary  label"> 总吨位：98737</label>
                                </div>

                            </div>
                        </div>


                    </div>


                    <!--库存汇总 box-->
                    <div class="col-lg-6">
                        <div class="col-lg-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">盘螺-华航</h3>
                                </div>

                                <!-- /.box-header -->

                                <div class="box-body">

                                    <table class="table table-hover">
                                        <tbody>
                                        <tr>

                                            <th>材质</th>
                                            <th>规格</th>
                                            <th>单位 (支/件)</th>
                                            <th>重量（件）</th>
                                            <th>意向量</th>
                                            <th>余量</th>
                                            <th>总库存</th>
                                            <th>总吨位</th>
                                            <th></th>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>HRB400</td>
                                            <td>42</td>
                                            <td>3</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <label class="label-primary label"> 总库存：8888888</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="label-primary  label"> 总吨位：98737</label>
                                </div>

                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">盘螺-武钢</h3>
                                </div>

                                <!-- /.box-header -->

                                <div class="box-body">

                                    <table class="table table-hover">
                                        <tbody>
                                        <tr>

                                            <th>材质</th>
                                            <th>规格</th>
                                            <th>单位 (支/件)</th>
                                            <th>重量（件）</th>
                                            <th>意向量</th>
                                            <th>余量</th>
                                            <th>总库存</th>
                                            <th>总吨位</th>
                                            <th></th>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>HRB400</td>
                                            <td>42</td>
                                            <td>3</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <label class="label-primary label"> 总库存：8888888</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="label-primary  label"> 总吨位：98737</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">线材-华航</h3>
                                </div>

                                <!-- /.box-header -->

                                <div class="box-body">

                                    <table class="table table-hover">
                                        <tbody>
                                        <tr>

                                            <th>材质</th>
                                            <th>规格</th>
                                            <th>单位 (支/件)</th>
                                            <th>重量（件）</th>
                                            <th>意向量</th>
                                            <th>余量</th>
                                            <th>总库存</th>
                                            <th>总吨位</th>
                                            <th></th>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>HRB400</td>
                                            <td>42</td>
                                            <td>3</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <label class="label-primary label"> 总库存：8888888</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="label-primary  label"> 总吨位：98737</label>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">线材-武钢</h3>
                                </div>

                                <!-- /.box-header -->

                                <div class="box-body">

                                    <table class="table table-hover">
                                        <tbody>
                                        <tr>

                                            <th>材质</th>
                                            <th>规格</th>
                                            <th>单位 (支/件)</th>
                                            <th>重量（件）</th>
                                            <th>意向量</th>
                                            <th>余量</th>
                                            <th>总库存</th>
                                            <th>总吨位</th>
                                            <th></th>

                                        </tr>
                                        <tr>

                                            <td>HRB400</td>
                                            <td>15</td>
                                            <td>HRB400E</td>
                                            <td>12</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>HRB400</td>
                                            <td>42</td>
                                            <td>3</td>
                                            <td>3</td>
                                            <td>12</td>
                                            <td>100</td>
                                            <td>112</td>
                                            <td>
                                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                                        data-target="#modal-default">查看
                                                </button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>

                                </div>
                                <!-- /.box-body -->

                                <div class="box-footer">
                                    <label class="label-primary label"> 总库存：8888888</label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="label-primary  label"> 总吨位：98737</label>
                                </div>

                            </div>
                        </div>

                    </div>

                </section>
                <!-- /.Left col -->

            </div>
            <!-- /.row (main row) -->

        </section>
        <!-- /.内容区域 -->
    </div>
    <!-- /.content-wrapper -->


    <!--添加商品 小窗口-->
    <div class="modal fade" id="modal-default">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">库存明细</h4>
                </div>
                <div class="modal-body">
                    <div class="row">


                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>ID</th>
                                <th>仓库</th>
                                <th>意向量</th>
                                <th>余量</th>
                                <th>总库存</th>
                                <th>吨位</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>东南库</td>
                                <td>100</td>
                                <td>32</td>
                                <td>132</td>
                                <td>13211</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>汉川商汇库</td>
                                <td>100</td>
                                <td>32</td>
                                <td>132</td>
                                <td>13211</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>商汇二号库</td>
                                <td>100</td>
                                <td>32</td>
                                <td>132</td>
                                <td>13211</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>商汇三号库</td>
                                <td>100</td>
                                <td>32</td>
                                <td>132</td>
                                <td>13211</td>

                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->


    <!--底部-->
    <myfooter>
    </myfooter>


</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="${basePath}/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="${basePath}/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->

<!-- Bootstrap 3.3.7 -->
<script src="${basePath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- AdminLTE App -->
<script src="${basePath}/dist/js/adminlte.min.js"></script>

<script src="${basePath}/dist/js/vue.min.js"></script>

<script src="${basePath}/dist/js/component.js"></script>
<script>
    var app =   new Vue({
        el: '#app',
        data: {
            menu_name: '首页',
            url_name: '库存汇总',
            menus: []
        }, methods: {
            //获取菜单权限
            initMenu: function () {
                $.ajax({
                    type: "get",
                    url: "${basePath}/user/getMenu.shtml",//改成你的服务
                    dataType: "json",//数据类型为jsonp
                    success: function (data) {
                        console.log(data);//获取到返回值
                        /*var myMenu = [
                            {
                                name: '库存管理',
                                list: [
                                    {href: "pages/prod/prodInfo.html", name: '产品信息'},
                                    {href: "pages/prod/stockManage.html", name: '入库管理'},
                                    {href: "pages/prod/stockList.html", name: '库存查询'}
                                ]
                            }, {
                                name: '业务管理',
                                list: [
                                    {href: "pages/business/orderAdd.html", name: '业务开单'},
                                    {href: "pages/business/orderManage.html", name: '订单管理'}
                                ]
                            }, {
                                name: '财务管理',
                                list: [
                                    {href: "pages/finance/accountsManage.html", name: '账目管理'},
                                    {href: "pages/finance/ReconciliationManage.html", name: '对账管理'}

                                ]
                            }];
                        data = myMenu;*/
                        app.loadMenu(data.myMenu);

                    },
                    error: function () {
                        alert('fail');
                    }
                });


            },
            loadMenu: function (myMenu) {
                this.menus = myMenu;
                localStorage.setItem('myMenu', JSON.stringify(myMenu));
                alert(localStorage.getItem('myMenu'));
                localStorage.setItem('menu_name', '首页');
                localStorage.setItem('url_name', '库存汇总');
            },
            logMenu: function (menu_name, url_name) {
                localStorage.setItem('menu_name', menu_name);
                localStorage.setItem('url_name', url_name);
            }
        },
        mounted: function () {
            this.initMenu();
        }
    })
</script>
</body>
</html>
