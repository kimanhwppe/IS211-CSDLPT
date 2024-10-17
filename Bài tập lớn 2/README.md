# BÀI TẬP LỚN 1. CƠ CHẾ PHÂN TÁN TRONG HỆ QUẢN TRỊ NOSQL

### Yêu cầu 1: Giới thiệu về hệ quản trị CSDL NoSQL
* Lịch sử ra đời nguồn gốc
* Tạo và thêm mới dữ liệu
* Thực hiện viết báo cáo BTL2

### Yêu cầu 2: Cài đặt trên 2 máy trở lên và thực hiện truy vấn giữa hai máy
* Cài đặt trên nhiều máy
* Lấy dữ liệu qua lại giữa hai máy bằng NoSQL
* Thực hiện viết báo cáo BTL2

### Yêu cầu 3: Thao tác dữ liệu qua lại giữa hai máy
* Thêm, xóa, sửa qua lại giữa hai máy
* Cơ chế nhân bản trong phân tán  NoSQL (Điểm cộng) 
* Thực hiện viết báo cáo BTL2

## ____________ QUERRY ____________

Tìm các sản phẩm có tên là 'But chi'
    
```bash
    from 'Sanphams'
    where tensp = 'But chi'
```

Tìm nhân viên có tên là 'Nguyen Van A'

```bash
    from 'Nhanviens'
    where hoten = 'Nguyen Van A'
```

Tìm các sản phẩm trong tên có chữ 'GIAY'
    
```bash
    from 'Sanphams'
    where search(tensp, "GIAY")
```

Show danh sách các quốc gia và số lượng sản phẩm của quốc gia đó

```bash
    from Orders
    group by Company
    where count() > 0
    order by count() as long desc
    select count(), Company
```

Tìm khách hàng có địa chỉ bắt đầu bằng số 90

```bash
    from "Khachhangs"
    where startsWith(diachi, '90')
```

Sử dụng switch-case

```bash
    declare function localizedResults(c) {
        switch(c.nuocsx)
        {
            case "TRUNGQUOC":
                return { TrungQuoc: c.gia };
            case "SINGAPORE":
                return { Singapore: c.gia};
            case "VIETNAM":
                return { VietNam: c.gia};
            default:
                return { Des: 'nothing' };
        }
    }
    from 'Sanphams' as s
    select localizedResults(s)
```