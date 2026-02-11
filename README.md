# ศูนย์แจ้งซ่อม UP

---

## สมาชิก

- นายธรรมนิตย์ ด้วงรอด 67021770  
- นางสาวธนพร เรียมรังสรรค์ 67021758  
- นายศุภกิตติ์ แซ่ย่าง 67024942  
- นางสาวภัทรวรรณ อาจสิงห์ 67026269  

---

##  Set UP Project
1)สร้างไฟล์ .env 
```bash
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=up_repair_system_v2
DB_PORT=3306

EMAIL_USER=your_email@gmail.com
EMAIL_PASSWORD=your_app_password

SESSION_SECRET=your_secret_key

หมายเหตุ: ถ้าไม่ได้ตั้งค่า EMAIL_USER / EMAIL_PASSWORD ระบบยังสามารถเปิดเว็บได้ แต่ฟังก์ชันส่งอีเมลจะไม่ทำงาน
EMAIL_user และ password ในเล่มรายงานค่ะ ไม่สะดวกใส่ในนี้เพื่อความปลอดภัย
```
2)install
```bash
npm install
```
3)run website
```bash
node server.js
```
4)open web browser
```bash
http://localhost:3000
```
```bash
https://repair-up.onrender.com
```
ทดลองเข้าใช้งาน
```bash
role:admin 
admin@up.ac.th
password: 1234
role:user
67026269@up.ac.th
password: benz01
```
