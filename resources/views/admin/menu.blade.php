<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <!-- <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ url('public/backend/dist/img/user2-160x160.jpg') }}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div> -->
      <!-- search form -->
      <!-- <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
          </span>
        </div>
      </form> -->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->

      <ul class="sidebar-menu">
        <!-- <li class="header">MAIN NAVIGATION</li> -->
         
         <!-- <li><a href="backend/users"><i class="fa fa-users"></i><span>Quản lý thành viên</span></a></li> -->
        <li class="treeview ">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Quản lý sản phẩm</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/productcate?type=san-pham"><i class="fa fa-circle-o"></i> <span>Danh mục sản phẩm</span></a></li>
            <!-- <li><a href="backend/productcate?type=sach-dien-tu"><i class="fa fa-circle-o"></i> <span>Danh mục sách điện tử</span></a></li> -->
            <li><a href="backend/product?type=san-pham"><i class="fa fa-circle-o"></i> <span>List sản phẩm</span></a></li>
            

            <!-- <li><a href="backend/about/edit?type=san-pham"><i class="fa fa-th"></i> <span>Giới thiệu sản phẩm</span></a></li> -->
          </ul>
        </li>
        <!-- <li><a href="backend/thuonghieu"><i class="fa fa-circle-o"></i> <span>Quản lý thương hiệu</span></a></li> -->
        <li><a href="backend/orders"><i class="fa fa-circle-o"></i> <span>Quản lý đơn hàng</span></a></li>

        <li class="treeview ">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Quản lý tour</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/productcate?type=tour"><i class="fa fa-circle-o"></i> <span>Danh mục tour</span></a></li>
            <li><a href="backend/tour"><i class="fa fa-circle-o"></i> <span>Danh sách tour</span></a></li>
            <li><a href="backend/about/edit?type=tour"><i class="fa fa-circle-o"></i> <span>Slogan</span></a></li>
            
          </ul>
        </li>

        <li class="treeview ">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Quản lý Đăng ký tour</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/dangkykhoahoc"><i class="fa fa-circle-o"></i> <span>Danh sách đăng ký tour</span></a></li>
            <li><a href="backend/about/edit?type=dang-ky"><i class="fa fa-circle-o"></i> <span>slogan</span></a></li>
          </ul>
        </li>

        

        <li class="treeview ">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Quản lý hỏi đáp</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/productcate?type=hoi-dap"><i class="fa fa-circle-o"></i> <span>Danh mục</span></a></li>
            <!-- <li><a href="backend/productcate?type=sach-dien-tu"><i class="fa fa-circle-o"></i> <span>Danh mục sách điện tử</span></a></li> -->
            <li><a href="backend/hoidap"><i class="fa fa-circle-o"></i> <span>Hỏi đáp</span></a></li>
            

            <!-- <li><a href="backend/about/edit?type=san-pham"><i class="fa fa-th"></i> <span>Giới thiệu sản phẩm</span></a></li> -->
          </ul>
        </li>

        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Quản lý dịch vụ</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            
            <li><a href="backend/newscate?type=dich-vu"><i class="fa fa-circle-o"></i> <span>Danh mục</span></a></li>
            <li><a href="backend/news?type=dich-vu"><i class="fa fa-circle-o"></i> <span>Dịch vụ</span></a></li>
            <li><a href="backend/about/edit?type=dich-vu"><i class="fa fa-circle-o"></i> <span>Giới thiệu dịch vụ</span></a></li>
          </ul>
        </li> -->
        <!-- <li><a href="backend/news?type=tin-tuc"><i class="fa fa-circle-o"></i> <span>Quản lý tin tức</span></a></li> -->
        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Quản lý tin tức</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/newscate?type=tin-tuc"><i class="fa fa-circle-o"></i> <span>Danh mục</span></a></li>
            
          </ul>
        </li> -->
        <li><a href="backend/news?type=tin-tuc"><i class="fa fa-circle-o"></i> <span>Tin tức</span></a></li>
        <li><a href="backend/about/edit?type=gioi-thieu"><i class="fa fa-circle-o"></i> <span>Giới thiệu</span></a></li>
        
        
        
        <!-- <li><a href="backend/recruitment"> <i class="fa fa-circle-o"></i> <span>Tuyển dụng</span></a></li> -->
        <li><a href="backend/contact"><i class="fa fa-envelope"></i> <span>Quản lý liên hệ</span></a></li>
        
        <li><a href="backend/partner"><i class="fa fa-circle-o"></i> <span>Thành viên của chúng tôi</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Ý kiến khách hàng</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/feedback"><i class="fa fa-gear" aria-hidden="true"></i> <span>Ý kiến khách hàng</span></a></li>
            <li><a href="backend/about/edit?type=feedback"><i class="fa fa-circle-o"></i> <span>Slogan</span></a></li>
          </ul>
        </li>
        
        <!-- <li><a href="backend/slogan"><i class="fa fa-gear" aria-hidden="true"></i> <span>Quản lý slogan</span></a></li>
        <li><a href="backend/newsletter?type=newsletter"><i class="fa fa-circle-o"></i> <span>Email liên hệ</span></a></li>
        <li><a href="backend/lienket?type=gioi-thieu"><i class="fa fa-circle-o"></i> <span>Đối tác</span></a></li>
        <li><a href="backend/video"><i class="fa fa-circle-o"></i> <span>Video</span></a></li>
        <!-- <li><a href="backend/lienket?type=tieu-chi"><i class="fa fa-circle-o"></i> <span>Tiêu chí hội viên</span></a></li> -->
        <!-- <li><a href="backend/slider?type=thu-vien-anh"><i class="fa fa-circle-o"></i> <span>Thư viện ảnh</span></a></li> -->
        <!-- <li><a href="backend/slider?type=chinh-sach"><i class="fa fa-circle-o"></i> <span>Quản lý chính sách</span></a></li> -->
        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Hình ảnh slider</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/lienket?type=slider"><i class="fa fa-circle-o"></i>Quản lý slider</a></li>
            <li><a href="backend/slider?type=gioi-thieu"><i class="fa fa-circle-o"></i> <span>Quản lý slider</span></a></li>
            
            <li><a href="backend/lienket?type=chi-nhanh"><i class="fa fa-circle-o"></i> Quản lý chi nhánh</a></li>
          </ul>
        </li> -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Hình ảnh - banner</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="backend/slider?type=gioi-thieu"><i class="fa fa-circle-o"></i> <span>Quản lý slider</span></a></li>
            <li><a href="backend/banner"><i class="fa fa-gear" aria-hidden="true"></i> <span>Quản lý banner</span></a></li>
            <li><a href="backend/lienket?type=chuyen-muc"><i class="fa fa-circle-o"></i> Quảng cáo</a></li> -->
            
            
          </ul>
        </li>
        <li><a href="backend/position"><i class="fa fa-gear" aria-hidden="true"></i> <span>Vị trí banner</span></a></li>
        
        <li><a href="backend/chinhanh"><i class="fa fa-envelope"></i><span>Quản lý chi nhánh</span></a></li>
        
        
        <!-- <li><a href="backend/saleof"><i class="fa fa-gear" aria-hidden="true"></i> <span>Cài đặt giảm giá</span></a></li> -->
         <li><a href="backend/bankaccount"><i class="fa fa-envelope"></i><span>Quản lý tài khoản ngân hàng</span></a></li>
        <li><a href="{{ asset('backend/setting') }}"><i class="fa fa-gear" aria-hidden="true"></i> <span>Thiết lập</span></a></li>
        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Quản lý thiết lập</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">            
           
            <li><a href="backend/province"><i class="fa fa-gear" aria-hidden="true"></i> <span>Quản lý tỉnh/ thành phố</span></a></li>
            <li><a href="backend/district"><i class="fa fa-gear" aria-hidden="true"></i> <span>Quản lý quận/ huyện</span></a></li>
            <li><a href="backend/saleof"><i class="fa fa-gear" aria-hidden="true"></i> <span>Cài đặt giảm giá</span></a></li>
          </ul>
        </li> -->
        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-gear" aria-hidden="true"></i> <span>Thiết lập hệ thống</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ asset('backend/setting') }}"><i class="fa fa-gear" aria-hidden="true"></i> Quản lý thiết lập</a></li>
            <li><a href="backend/about/edit?type=footer"><i class="fa fa-gear" aria-hidden="true"></i> Quản lý footer</a></li>
          </ul>
        </li> -->
        
      </ul>
    </section>
</aside>