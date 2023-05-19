# เลือกภาพของ Node.js เป็นฐาน
FROM node:14

# ตั้งค่าตัวแปรแวดล้อม
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# สร้างโฟลเดอร์และตั้งค่าไดเร็กทอรีทำงาน
WORKDIR /usr/src/app

# ติดตั้งคำสั่งลงในโฟลเดอร์ app
COPY package*.json ./
RUN npm install

# สำเนาไฟล์โค้ดทั้งหมดไปยังโฟลเดอร์ app
COPY . .

# สั่งให้ Nuxt.js สร้างสิ่งที่ต้องการ
RUN npm run build

# เปิดพอร์ต 3000 ที่เครื่อง Docker
EXPOSE 3000

# คำสั่งที่ใช้ในการเรียกใช้แอพพลิเคชัน Nuxt.js
CMD [ "npm", "start" ]
