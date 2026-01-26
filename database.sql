-- 1. สร้างฐานข้อมูล (ถ้ายังไม่มี)
CREATE DATABASE IF NOT EXISTS up_repair_system;
USE up_repair_system;

-- 2. สร้างตารางผู้ใช้งาน (Users)
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL, -- เก็บเป็น Hash (ห้ามเก็บ Text เพียวๆ)
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. สร้างตารางรายการแจ้งซ่อม (Repair Requests)
CREATE TABLE IF NOT EXISTS requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL, -- เชื่อมโยงกับตาราง users
    building VARCHAR(50) NOT NULL COMMENT 'ชื่ออาคาร เช่น ICT, CE',
    problem_title VARCHAR(200) NOT NULL COMMENT 'หัวข้อปัญหา',
    detail TEXT COMMENT 'รายละเอียดเพิ่มเติม',
    image_path VARCHAR(255) COMMENT 'เก็บชื่อไฟล์รูปภาพ',
    status ENUM('received', 'progress', 'completed') DEFAULT 'received',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- สร้างความสัมพันธ์ (Foreign Key) ว่าใบงานนี้เป็นของ User คนไหน
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

ALTER TABLE users ADD COLUMN role ENUM('user', 'admin') DEFAULT 'user';

-- 4. (ทางเลือก) เพิ่มข้อมูลตัวอย่างเพื่อทดสอบ
INSERT INTO users (email, password, first_name, last_name) VALUES 
('test@up.ac.th', 'hashed_password_123', 'Somchai', 'Jaidee');

INSERT INTO requests (user_id, building, problem_title, detail, status) VALUES 
(1, 'ICT', 'แอร์ไม่เย็น ห้อง 202', 'เปิดมา 2 ชั่วโมงแล้วยังร้อน', 'received'),
(1, 'CE', 'ไฟทางเดินดับ', 'ชั้น 3 ตรงบันไดหนีไฟ', 'progress');