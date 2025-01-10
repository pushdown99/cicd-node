FROM node:14

# 작업 디렉토리 생성
WORKDIR /app

# 필요한 파일 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 애플리케이션 코드 복사
COPY . .

# 포트 노출
EXPOSE 3000

# 애플리케이션 실행 명령
CMD ["node", "index.js"]