CREATE TABLE NHANVIEN(
    MANV	CHAR(4) CONSTRAINT PK_NV PRIMARY KEY,
    HOTEN	VARCHAR(40),
    SODT	VARCHAR(20)
)

CREATE TABLE KHACHHANG(
    MAKH	CHAR(4) CONSTRAINT PK_KH PRIMARY KEY,
    HOTEN	VARCHAR(40),
    DCHI	VARCHAR(50),
    SODT	VARCHAR(20),
    NGSINH	SMALLDATETIME,
    DOANHSO	MONEY
)

CREATE TABLE SANPHAM(
    MASP	CHAR(4) CONSTRAINT PK_SP PRIMARY KEY,
    TENSP	VARCHAR(40),
    DVT		VARCHAR(20),
    NUOCSX	VARCHAR(40),
    GIA		MONEY
)

CREATE TABLE HOADON(
    SOHD	INT CONSTRAINT PK_HD PRIMARY KEY,
    NGHD	SMALLDATETIME,
    MAKH	CHAR(4),
    MANV	CHAR(4),
    TRIGIA	MONEY
)

CREATE TABLE CTHD(
    SOHD	INT,
    MASP	CHAR(4),
    SL		INT,
    CONSTRAINT PK_CTHD PRIMARY KEY(SOHD, MASP)
)
