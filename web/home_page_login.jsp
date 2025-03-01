<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chia Sẻ Trang Web</title>
        <style>
            /* Giữ nguyên toàn bộ CSS từ trang gốc */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                background-color: var(--background-color);
            }

            /* Container */
            .container {
                width: 100%;
                max-width: 1400px;
                margin: 0 auto;
                border: 1px solid #000;
                min-height: 100vh;
                display: flex;
                flex-direction: column;
                background-color: #FFFACD;
                border: 1px solid var(--container-border);
            }

            /* Top Navigation */
            .top-nav {
                display: flex;
                justify-content: space-between;
                padding: 10px;
            }

            .nav-item {
                padding: 8px 15px;
                border: 1px solid #000;
                text-align: center;
            }
            
            /* Thêm style cho user-info */
            .user-info {
                display: flex;
                align-items: center;
            }
            
            .user-email {
                margin-right: 10px;
                font-weight: bold;
            }
            
            .logout-link {
                color: #dc3545;
                text-decoration: none;
                margin-left: 10px;
            }

            /* Banner */
            .banner {
                background: linear-gradient(to bottom, #8B5E3C, #5A3A21);
                color: white;
                text-align: center;
                padding: 30px 0;
            }

            .banner h1 {
                font-size: 32px;
                letter-spacing: 2px;
            }

            /* Giữ nguyên phần CSS còn lại */
            /* Category Menu - Moved below banner */
            .category-menu {
                display: flex;
                justify-content: center;
                background-color: #8B5E3C;
                padding: 10px 0;
            }

            .category-item {
                padding: 8px 15px;
                margin: 0 10px;
                color: white;
                cursor: pointer;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {
                background-color: #f1f1f1;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            /* Main Content */
            .main-content {
                display: flex;
                padding: 20px;
                flex: 1;
            }

            /* Product Section */
            .product-section {
                flex: 3;
                padding-right: 20px;
            }

            .category-header {
                background-color: #8B5E3C;
                color: white;
                text-align: center;
                padding: 10px;
                margin-bottom: 20px;
            }

            .product-grid {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }

            .product-card {
                width: 32%;
                border: 1px solid #000;
                margin-bottom: 20px;
            }

            .product-image {
                height: 150px;
                border-bottom: 1px solid #000;
            }

            .product-title, .product-price {
                padding: 5px;
                border-bottom: 1px solid #000;
            }

            /* Pagination */
            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }

            .page-dot {
                width: 10px;
                height: 10px;
                border-radius: 50%;
                background-color: #ccc;
                margin: 0 5px;
            }

            .page-dot.active {
                background-color: #8B5E3C;
            }

            /* Sidebar */
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }

            .sidebar {
                flex: 1;
                padding-left: 20px;
            }

            .search-container {
                position: relative;
                margin-bottom: 20px;
            }

            .search-box {
                width: 100%;
                padding: 10px;
                border: 1px solid #000;
                border-radius: 8px 0 0 8px;
            }

            .search-button {
                position: absolute;
                right: 0;
                top: 0;
                padding: 10px;
                background-color: #8B5E3C;
                color: white;
                border: none;
                cursor: pointer;
                border-radius: 0 8px 8px 0;
            }

            .sidebar-section {
                margin-bottom: 20px;
                border-radius: 8px;
                overflow: hidden;
            }

            .sidebar-header {
                background-color: #8B5E3C;
                color: white;
                text-align: center;
                padding: 10px;
                border-radius: 8px 8px 0 0;
                background-color: #654321;
                color: #FFFF00;
            }

            .sidebar-item {
                border: 1px solid #000;
                padding: 15px;
                margin-top: 10px;
                min-height: 50px;
                width: 100%;
                border-radius: 8px;
            }

            /* Footer */
            .footer {
                color: white;
                text-align: center;
                padding: 15px;
                background-color: #654321;
            }

            /* Pagination Container */
            .pagination-container {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
            }

            /* Arrow Buttons */
            .arrow-button {
                background-color: #8B5E3C;
                color: white;
                border: none;
                border-radius: 50%;
                width: 30px;
                height: 30px;
                font-size: 18px;
                cursor: pointer;
                margin: 0 15px;
                display: flex;
                justify-content: center;
                align-items: center;
                transition: background-color 0.3s;
                background-color: #654321;
            }

            .arrow-button:hover {
                background-color: #5A3A21;
            }

            .prev-button {
                padding-right: 2px;
            }

            .next-button {
                padding-left: 2px;
            }

            /* Pagination (giữ nguyên code cũ) */
            .pagination {
                display: flex;
                justify-content: center;
            }

            .page-dot {
                width: 10px;
                height: 10px;
                border-radius: 50%;
                background-color: #ccc;
                margin: 0 5px;
                cursor: pointer;
            }

            .page-dot.active {
                background-color: #8B5E3C;
                background-color: #8B5A2B;
            }

            .slider-container {
                position: relative;
                width: 100%;
                margin: 0 auto;
                overflow: hidden;
            }

            .slides {
                width: 100%;
            }

            .slide {
                display: none;
                width: 100%;
                text-align: center;
            }

            .slide.active {
                display: block;
            }

            .product-image {
                height: 200px;
                background-color: #f0f0f0;
                margin-bottom: 10px;
            }

            .product-title {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 10px;
            }

            .product-description {
                font-size: 16px;
                margin-bottom: 20px;
            }

            .arrow-button {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                background-color: #8B5E3C;
                color: white;
                border: none;
                border-radius: 50%;
                width: 40px;
                height: 40px;
                font-size: 18px;
                cursor: pointer;
                z-index: 10;
            }

            .prev-button {
                left: 10px;
            }

            .next-button {
                right: 10px;
            }

            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }

            .page-dot {
                width: 10px;
                height: 10px;
                border-radius: 50%;
                background-color: #ccc;
                margin: 0 5px;
                cursor: pointer;
                display: inline-block;
            }

            .page-dot.active {
                background-color: #8B5E3C;
            }
        </style>
    </head>
    <body>
        <%
        // Kiểm tra session để đảm bảo người dùng đã đăng nhập
        String userEmail = (String) session.getAttribute("email");
        if (userEmail == null) {
            // Nếu chưa đăng nhập, chuyển hướng về trang đăng nhập
            response.sendRedirect("login.jsp");
        }
        %>
        
        <div class="container">
            <!-- Top Navigation - Thay đổi phần login/register thành email người dùng -->
            <div class="top-nav">
                <div class="nav-item">
                    <a href="Home_Page_login.jsp">LOGO</a>
                </div>
                <div class="nav-item user-info">
                    <span class="user-email"><a href="user_info.jsp" style="text-decoration: none; color: inherit;"><%= userEmail %></a></span>
                    <a href="LogoutServlet" class="logout-link">Đăng xuất</a>
                </div>
            </div>

            <!-- Banner - Giữ nguyên -->
            <div class="banner">
                <h1>CHIA SẺ TRANG WEB</h1>
            </div>

            <!-- Category Menu - Giữ nguyên -->
            <div class="category-menu">
                <div class="dropdown category-item">
                    <span>Desktop▼</span>
                    <div class="dropdown-content">
                        <a href="windows_software">Windows</a>
                        <a href="mac_software">Mac</a>
                        <a href="linux_software">Linux</a>
                    </div>
                </div>

                <div class="dropdown category-item">
                    <span>Mobile ▼</span>
                    <div class="dropdown-content">
                        <a href="android_software">Android</a>
                        <a href="ios_software">iOS</a>
                    </div>
                </div>
            </div>

            <!-- Main Content - Giữ nguyên -->
            <div class="main-content">
                <!-- Product Section -->
                <div class="product-section">
                    <div class="category-header">
                        Demonstration
                    </div>

                    <div class="slider-container">
                        <button class="arrow-button prev-button">&#10094;</button>

                        <div class="slides">
                            <div class="slide active" id="slide1">
                                <div class="product-image"></div>
                                <div class="product-title">Google Chrome</div>
                                <div class="product-description">Trình duyệt web nhanh an toàn</div>
                            </div>

                            <div class="slide" id="slide2">
                                <div class="product-image"></div>
                                <div class="product-title">Mozilla Firefox</div>
                                <div class="product-description">Trình duyệt web bảo mật</div>
                            </div>

                            <div class="slide" id="slide3">
                                <div class="product-image"></div>
                                <div class="product-title">Microsoft Edge</div>
                                <div class="product-description">Trình duyệt web tích hợp Windows</div>
                            </div>

                            <div class="slide" id="slide4">
                                <div class="product-image"></div>
                                <div class="product-title">Opera</div>
                                <div class="product-description">Trình duyệt web với VPN tích hợp</div>
                            </div>

                            <div class="slide" id="slide5">
                                <div class="product-image"></div>
                                <div class="product-title">Safari</div>
                                <div class="product-description">Trình duyệt web cho hệ sinh thái Apple</div>
                            </div>
                        </div>

                        <button class="arrow-button next-button">&#10095;</button>
                    </div>

                    <div class="pagination">
                        <span class="page-dot active" data-slide="1"></span>
                        <span class="page-dot" data-slide="2"></span>
                        <span class="page-dot" data-slide="3"></span>
                        <span class="page-dot" data-slide="4"></span>
                        <span class="page-dot" data-slide="5"></span>
                    </div>
                </div>

                <!-- Sidebar - Giữ nguyên -->
                <div class="sidebar">
                    <!-- Search Box -->
                    <div class="search-container">
                        <input type="text" class="search-box" placeholder="TÌM KIẾM">
                        <button class="search-button">🔍</button>
                    </div>

                    <!-- Nổi bật Section -->
                    <div class="sidebar-section">
                        <div class="sidebar-header">Nổi bật</div>
                        <div class="sidebar-item"></div>
                        <div class="sidebar-item"></div>
                        <div class="sidebar-item"></div>
                    </div>

                    <!-- App mới Section -->
                    <div class="sidebar-section">
                        <div class="sidebar-header">App mới</div>
                        <div class="sidebar-item"></div>
                        <div class="sidebar-item"></div>
                        <div class="sidebar-item"></div>
                    </div>

                    <!-- Tải nhiều nhất Section -->
                    <div class="sidebar-section">
                        <div class="sidebar-header">Tải nhiều nhất</div>
                        <div class="sidebar-item"></div>
                        <div class="sidebar-item"></div>
                        <div class="sidebar-item"></div>
                    </div>
                </div>
            </div>

            <!-- Footer - Giữ nguyên -->
            <div class="footer">
                <p>© 2025 Chia Sẻ Trang Web. Tất cả quyền được bảo lưu.</p>
            </div>
        </div>

        <!-- Giữ nguyên JavaScript -->
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const prevButton = document.querySelector('.prev-button');
                const nextButton = document.querySelector('.next-button');
                const pageDots = document.querySelectorAll('.page-dot');
                const slides = document.querySelectorAll('.slide');

                let currentSlide = 0;
                const totalSlides = slides.length;

                function showSlide(index) {
                    // Ẩn tất cả slides
                    slides.forEach(slide => {
                        slide.classList.remove('active');
                    });

                    // Hiển thị slide hiện tại
                    slides[index].classList.add('active');

                    // Cập nhật trạng thái active cho dots
                    pageDots.forEach((dot, i) => {
                        dot.classList.toggle('active', i === index);
                    });
                }

                // Xử lý nút Previous
                prevButton.addEventListener('click', function () {
                    currentSlide = (currentSlide > 0) ? currentSlide - 1 : totalSlides - 1;
                    showSlide(currentSlide);
                });

                // Xử lý nút Next
                nextButton.addEventListener('click', function () {
                    currentSlide = (currentSlide < totalSlides - 1) ? currentSlide + 1 : 0;
                    showSlide(currentSlide);
                });

                // Xử lý khi click vào dots
                pageDots.forEach((dot, index) => {
                    dot.addEventListener('click', function () {
                        currentSlide = index;
                        showSlide(currentSlide);
                    });
                });
            });
        </script>
    </body>
</html>
