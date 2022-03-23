FROM node:17

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

# アプリケーションの依存関係をインストールする
COPY package*.json ./
RUN npm install

# アプリケーションのソースをバンドルする
COPY . .

EXPOSE 3000
CMD ["node", "./bin/www"]