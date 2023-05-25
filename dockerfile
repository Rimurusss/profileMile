# Dockerfile
# เลือกเบสอิมเมจของ Node.js
FROM node:14

# ติดตั้ง Nuxt.js และโปรเจกต์ของคุณ
WORKDIR /usr/src/app
COPY . .
RUN npm install

# สร้างเว็บไซต์สำหรับการดูตัวอย่าง
RUN npm run generate

# รันเซิร์ฟเวอร์ Nuxt.js
CMD [ "npm", "start" ]
