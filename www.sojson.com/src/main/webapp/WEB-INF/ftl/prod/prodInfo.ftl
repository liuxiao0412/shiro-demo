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

                            <select class="form-control" v-model="SearchParam.product.prodName"   @change="getSelectName"  >
                                <option value="">全部</option>
                                <option   v-for="item in selectProdName"  :value="item">{{item}}</option>
                              
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-12">
                        <h6>产地</h6>
                        <div class="form-group">

                            <select class="form-control" v-model="SearchParam.product.prodArea">
                                <option value="">全部</option>
                                
                                <option   v-for="item in selectProdArea"  :value="item">{{item}}</option>
                              
                            </select>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-12">
                        <h6>材质</h6>
                        <div class="form-group">

                            <select class="form-control" v-model="SearchParam.product.material">
                                <option   v-for="item in selectProdName"  :value="item">{{item}}</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-12">
                        <h6>规格</h6>
                        <div class="form-group">

                            <select class="form-control" v-model="SearchParam.product.specifications">
                                <option value="">全部</option>
                                <option value="1">仓库 1</option>
                                <option value="2">仓库 2</option>
                                <option value="3">仓库 3</option>
                            </select>
                        </div>
                    </div>

                <!--通过以上四个 选定商品-->

              </div>
            </div>
            <!-- /.box-body -->

            <div class="box-footer">
              <button type="submit" class="btn btn-primary" v-on:click="prodSearch">查询</button>
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
              <h3 class="box-title">商品列表</h3>
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
                          <th>品名</th>
                          <th>产地</th>
                          <th>材质</th>
                          <th>规格</th>
                          <th>单位 (支/件)</th>
                          <th>重量（件）</th>
                          <th>操作</th>

                        </tr>
                        <tr v-for="(item,index) in ListData">
                            <td> {{index+1 }}</td>
                            <td>{{item.prodName}}</td>
                            <td>{{item.prodArea}}</td>
                            <td>{{item.material}}</td>
                            <td>{{item.specifications}}</td>
                            <td>{{item.unit}}</td>
                            <td>{{item.weight}}</td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn  btn-sm   btn-default"
                                            v-on:click="prodDelete(item.pk)">删除
                                    </button>
                                    <button type="button" class="btn  btn-sm   btn-default"
                                            v-on:click="prodEdit(item)">修改
                                    </button>
                                </div>
                            </td>
                        </tr>
                        
                       <!-- <#if page?exists && page.list?size gt 0 >
							<#list page.list as it>
		                        <tr>
		
		                          <td>1</td>
		                          <td>${it.prodName?default('-')}</td>
		                          <td>${it.prodArea?default('-')}</td>
		                          <td>${it.material?default('-')}</td>
		                          <td>Φ${it.specifications?default('-')}</td>
		                          <td>${it.unit?default('-')}</td>
		                          <td>${it.weight?default('-')}</td>
		                          <td><div class="btn-group">
		                            <button type="button" class="btn  btn-sm   btn-default"
		                            v-on:click="prodDelete(${it.id})">删除</button>
		                            <button type="button" class="btn  btn-sm   btn-default">修改</button>
		                          </div></td>
		                        </tr>
	                        </#list>
							<#else>
								<tr>
									<td class="text-center danger" colspan="8">没有找到产品</td>
								</tr>
						</#if>-->
                        </tbody></table>
                    </div>
                    <!-- /.box-body -->
                  </div>
                  <!-- /.box -->
                </div>
              </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
                <mypager v-bind:datapager="DataPager" v-on:pagechange="pageChange"></mypager>

            </div>
          </div>
                        

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
                      <input type="text" class="form-control" v-model="formInfo.prodName"/>
                    </div>
                    <div class="col-lg-3 col-xs-12">
                      <h6>产地</h6>
                      <input type="text" class="form-control" v-model="formInfo.prodArea"/>
                    </div>

                    <div class="col-lg-3 col-xs-12">
                      <h6>材质</h6>
                      <input type="text" class="form-control" v-model="formInfo.material"/>
                    </div>
                    <div class="col-lg-3 col-xs-12">
                      <h6>规格</h6>

                         <input type="text" class="form-control"  v-model="formInfo.specifications"/>


                    </div>

                    <!--通过以上四个 选定商品-->
                    <div class="col-lg-3 col-xs-12">
                      <h6>单位 (支/件)</h6>

                      <input type="text" class="form-control" v-model="formInfo.unit"/>
                    </div>
                    <div class="col-lg-3 col-xs-12">
                      <h6>重量（件）</h6>
                      <input type="text" class="form-control" v-model="formInfo.weight"/>
                    </div>

                  </div>

                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left" data-dismiss="modal">取消</button>
                  <button type="button" class="btn btn-primary" v-on:click="prodAdd">保存</button>
                </div>
              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>
          <!-- /.modal -->

        </div>

      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
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


<script src="${basePath}/dist/js/vue.min.js"></script>

<script src="${basePath}/dist/js/component.js"></script>
<script>
   var app= new Vue({
        el: '#app',
        data: {
            menu_name: '',
            url_name: '',
            menus:[],
            //查询条件
            SearchParam: {
                pageSize: 30,
                pageNo: 1,
                product: {
                    prodName: '1',
                    prodArea: '2',
                    material: '3',
                    specifications: '4'
                }
            },
            ListData: [],
            //分页
            DataPager: {
                pageSize: 10,
                PagePosition: 1,
                count: 0
            },
            formInfo: {
                id: -1,//pk=-1  就是新增
                prodName: '',
                prodArea:  '',
                material:   '',
                specifications:    '',
                unit: '',
                weight:''
            },
            selectProdName:[],
            selectProdArea:[]
            
        },methods: {
            //获取菜单权限
            initMenu: function() {
                var myMenu=JSON.parse(localStorage.getItem('myMenu'))
                this.menus = myMenu ;
				//alert(localStorage.getItem('myMenu'));
                this.menu_name = localStorage.getItem('menu_name') ;
                this.url_name = localStorage.getItem('url_name') ;
            },
            
            getSelect:function(){
            
             $.ajax({
                    type: "get",
                    url: "${basePath}/prod/getProdName.shtml",
                    //dataType: "json",//数据类型为jsonp             
                    data: {
             
                    },
                    success: function (data) {
                        console.log(data);
                        console.log('chenggong');
                        app.selectProdName=data.nameList;
                        //app.loadList(data.pageList);
                    },
                    error: function () {
                        alert('fail');
                    }
                    });
            
            },
            getSelectName:function(){
            var name=this.SearchParam.product.prodName;
            
            
            $.ajax({
                    type: "get",
                    url: "${basePath}/prod/getProdArea.shtml",
                    //dataType: "json",//数据类型为jsonp             
                    data: {
             prodName:name
                    },
                    success: function (data) {
                        console.log(data);
                        console.log('chenggong');
                        app.selectProdArea=data.areaList;
                        //app.loadList(data.pageList);
                    },
                    error: function () {
                        alert('fail');
                    }
                    });
                    
                    
                    
            },
            //新增
            prodAdd: function () {
                console.log(this.formInfo);
                 var obj={
                    	id:this.formInfo.id,
                        prodName: this.formInfo.prodName,
	                    prodArea:   this.formInfo.prodArea,
	                    material:   this.formInfo.material,
		                specifications:    this.formInfo.specifications,
		                unit:  this.formInfo.unit,
		                weight: this.formInfo.weight
	                }
                $.ajax({
                    type: "post",
                    url: "${basePath}/prod/addProd.shtml",
                    data: obj,
                    success: function (data) {
                        console.log(data);
                        if(data && data.status !=200){
                        	alert(data.message);
                        }
                        alert('新增成功！');
                        $('#modal-default').modal('hide');
                        app.prodSearch();
                        
                    },
                    error: function () {
                        alert('fail');
                    }
                });
            },
            prodEdit:function (item) {
            $('#modal-default').modal('show');
                this.formInfo=item;
            },
            prodDelete: function (pk) {
                console.log(pk);
                $.ajax({
                    type: "post",
                    url: "http://www.runoob.com/try/ajax/jsonp.php?pk="+pk,
                    success: function (data) {
                        console.log(data);
                    },
                    error: function () {
                        alert('fail');
                    }
                });
            },
            //查询
            prodSearch: function () {
                console.log(this.SearchParam);

                $.ajax({
                    type: "get",
                    url: "${basePath}/prod/search.shtml",
                    //dataType: "json",//数据类型为jsonp
                    //data:this.SearchParam,
                    data: {
                        pageSize: this.DataPager.pageSize,
                        pageNo:this.DataPager.PagePosition,
                        prodName:this.SearchParam.product.prodName,
                        prodArea:this.SearchParam.product.prodArea,
                        material:this.SearchParam.product.material,
                        specifications:this.SearchParam.product.specifications,
                    },
                    success: function (data) {
                        console.log(data);
                        app.loadList(data.pageList);
                    },
                    error: function () {
                        alert('fail');
                    }
                });



            },
            loadList: function (data) {
                this.ListData = data.list;
                this.DataPager = {
                    pageSize: data.pageSize,
                    PagePosition: data.pageNo,
                    count: data.totalCount
                }
            },
            //翻页之后 重新请求数据
            pageChange: function () {
                console.log(this.DataPager);
                app.prodSearch();
            }
        },
        mounted:function(){
            this.initMenu();
            this.getSelect();
        }
    })
</script>


</body>
</html>
