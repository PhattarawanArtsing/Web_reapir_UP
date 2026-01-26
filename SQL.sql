-- 1. เพิ่มคอลัมน์ role โดยให้ค่าเริ่มต้นเป็น 'user'
ALTER TABLE users ADD COLUMN role ENUM('user', 'admin') DEFAULT 'user';

-- 2. สมมติให้ User คนแรก (id=1) เป็น Admin (เพื่อให้คุณทดสอบได้)
UPDATE users SET role = 'admin' WHERE id = 1;