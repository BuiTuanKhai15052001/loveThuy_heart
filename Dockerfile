# Sử dụng hình ảnh nginx từ Docker Hub
FROM nginx:alpine

# Xóa các file mặc định trong thư mục serve của nginx
RUN rm /usr/share/nginx/html/*

# Sao chép file index.html của bạn vào thư mục serve của nginx
COPY index.html /usr/share/nginx/html

# Mở cổng 80 để phục vụ trang web
EXPOSE 80

# Khởi động nginx và giữ cho nó chạy ở chế độ nền
CMD ["nginx", "-g", "daemon off;"]
