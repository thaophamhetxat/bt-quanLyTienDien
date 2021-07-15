use quanlytiendien;
insert into khachhang value (1,'thao','1990','hung yen','0123456','lan 1');
insert into dongia value (1,'ho ngheo','500000');
insert into chiso value (1,'1','10',1);

insert into khachhang value (2,'thuy','1999','hung yen','0123457','lan 2');
insert into dongia value (2,'ho giau','20000');
insert into chiso value (2,'10','10',2);

insert into khachhang value (3,'thu','2000','hung yen','0123458','lan 3');
insert into dongia value (3,'ho kho khan','20000');
insert into chiso value (3,'10','10',3);
/* lay thong tat ca thong tin */
select * from khachhang,chiso,dongia;
/* lay thong tin khach hang nam 1990*/
select tenkh,ngaysinh from khachhang where ngaysinh=1990;
/*Đưa ra danh sách khách hàng, chỉ số tiêu thụ. */
select tenkh,(chisocuoi-chisodau) as 'chi_so_tieu_thu' from khachhang,chiso;
/* Đưa ra đầy đủ thông tin về khách hàng, đơn giá, chỉ số, số điện tiêu thụ*/
select tenkh,chisodau,chisocuoi,(chisocuoi-chisodau) as 'chi_so_tieu_thu'from khachhang,chiso,dongia;

select tenkh,chisodau,chisocuoi,gia 
/* Đưa ra danh sách khách hàng phải trả tiền điện.*/
from khachhang,chiso,dongia
where (chisocuoi>chisodau);
/*khach hang k phai tra tien dien:*/
select tenkh,chisodau,chisocuoi
from khachhang,chiso
where (chisocuoi=chisodau);
/*update ho kho khan => gia dinh*/
update dongia
set loaiho = 'gia dinh ';

/* tinh tien cho tung ho gia dinh*/
select tenkh, (chisocuoi-chisodau) as'so_dien_dung' ,(chisocuoi-chisodau)*gia as'so_tien_tra' from khachhang,chiso,dongia where chisocuoi>chisodau;

