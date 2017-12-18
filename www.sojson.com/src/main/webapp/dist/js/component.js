// foot
Vue.component('myfooter', {
    template: ' <footer class="main-footer">\n' +
    '    <div class="pull-right hidden-xs">\n' +
    '      <b>Version</b> 1.1.0\n' +
    '    </div>\n' +
    '    <strong>Copyright &copy; 2017-2018 万顺发.</strong> All rights\n' +
    '    reserved.\n' +
    '  </footer>'
});


// head
Vue.component('headnav', {
    template: '<nav class="navbar navbar-static-top">\n' +
    '      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">\n' +
    '      </a>\n' +
    '\n' +
    '      <div class="navbar-custom-menu">\n' +
    '        <ul class="nav navbar-nav">\n' +
    '          <li class="dropdown user user-menu">\n' +
    '            <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n' +
    '              <i class="fa fa-user"></i>\n' +
    '              <span >张三(汉阳)</span>\n' +
    '            </a>\n' +
    '          </li>\n' +
    '        </ul>\n' +
    '      </div>\n' +
    '    </nav>'
});


Vue.component('menulist', {
    props: {
        menu: Object,
        menu_name: {
            type: String,
            default: localStorage.getItem('menu_name')
        },
        url_name: {
            type: String,
            default: localStorage.getItem('url_name')
        }
    },
    // 同样也可以在 vm 实例中像 "this.message" 这样使用
    template: '<li class="treeview"  v-bind:class="{ active: menu.name==menu_name}">\n' +
    '          <a href="#">\n' +
    '            <i class="fa fa-pie-chart"></i>\n' +
    '            <span>{{ menu.name }}</span>\n' +
    '            <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>\n' +
    '          </a>\n' +
    '          <ul class="treeview-menu">\n' +
    '            <li   v-bind:class="{ active: url.name==url_name}"  v-for="url in menu.list"><a v-bind:href="\'\'+url.href" v-on:click="logMenu(menu.name,url.name)"><i class="fa fa-circle-o"></i>{{url.name}}</a>\n' +
    '            </li>\n' +
    '          </ul>\n' +
    '        </li>',
    methods: {
        logMenu: function (menu_name, url_name) {
            localStorage.setItem('menu_name', menu_name);
            localStorage.setItem('url_name', url_name);
        }
    }
});


// mybox
Vue.component('mybox', {
    // 声明 props
    props: ['mytitle'],
    template: '<div class="box box-primary"><div class="box-header with-border">' +
    '<h3 class="box-title">{{mytitle}}</h3> ' +
    '<div class="box-tools pull-right"><button type="button" data-widget="collapse" class="btn btn-box-tool"><i class="fa fa-minus"></i></button></div></div> ' +
    ' <slot></slot>' +
    '</div>'
});


// mybox
//tips   ： props参数名称 不能用大写
Vue.component('mypager', {
    // 声明 props
    props: {
        datapager: {
            type: Object,
            default: function () {
                return {
                    pageSize: 10,
                    PagePosition: 1,
                    count: 0
                }
            }
        }
    },
    template: '<div>' +
    '<label>' +
    '<select class="form-control input-sm"  v-model="datapager.pageSize"><option value="10">10</option><option value="25">25</option><option value="50">50</option></select>' +
    '</label>' +
    '当前显示第{{datapager.pageSize*(datapager.PagePosition-1)+1}}条到第{{(datapager.pageSize*(datapager.PagePosition)>datapager.count)?datapager.count:(datapager.pageSize*(datapager.PagePosition))}}条，总数{{datapager.count}}条' +
    '<ul class="pagination pagination-sm no-margin pull-right">' +
    '<li><a v-on:click="GoFirstPage" >首页</a></li>' +
    '<li  v-bind:class="{ disabled: datapager.PagePosition ==1}" ><a  v-on:click="GoPreviousPage">上一页</a></li>' +
    '<li><a>{{datapager.PagePosition}}</a></li>' +
    '<li  v-bind:class="{ disabled: datapager.PagePosition == Math.ceil(datapager.count / datapager.pageSize)}" ><a  v-on:click="GoNextPage">下一页</a></li>' +
    '<li><a v-on:click="GoLastPage">末页</a></li>' +
    '</ul>'+
    '</div>',
    methods: {
        GoFirstPage: function () {
            this.datapager.PagePosition = 1;
            this.$emit('pagechange');
        },
        GoPreviousPage: function () {
            if(this.datapager.PagePosition>1){
                this.datapager.PagePosition -= 1;
                this.$emit('pagechange')
            }

            // this.$emit('increment')
        },
        GoNextPage: function () {
            if(this.datapager.PagePosition<Math.ceil(this.datapager.count / this.datapager.pageSize)) {
                this.datapager.PagePosition += 1;
                console.log(this.datapager.PagePosition);
                this.$emit('pagechange');
            }
        },
        GoLastPage: function () {
            this.datapager.PagePosition = Math.ceil(this.datapager.count / this.datapager.pageSize);
            console.log(this.datapager.PagePosition);
            this.$emit('pagechange');
        }
    },
});
