# Rails Transaction Task

Webエンジニア ステップアップコース（Ruby）で、Active Recordのトランザクションを学ぶための教材用Railsアプリです。

## 動作環境

- Ruby 4.0.5
- Bundler 4.0.10
- Ruby on Rails 8.1.3
- PostgreSQL 18.4
- Node.js 24.18.0
- Yarn 1.22.22

## セットアップ

PostgreSQLを起動してから、次のコマンドを実行します。

```sh
bundle install
yarn install --frozen-lockfile
bin/rails db:prepare
```

`config/database.yml`の既定値では、ローカルのPostgreSQLユーザーを使用します。接続先を変更する場合は、Rails標準の`DATABASE_URL`を設定してください。本番環境のパスワードには`rails_transaction_task_DATABASE_PASSWORD`を使用します。

## 起動

```sh
bin/rails server
```

http://localhost:3000 にアクセスしてください。

## テスト

```sh
bin/rails test
bundle exec rspec
```

RSpecの評価コードはGitHub Actions実行時に取得されます。

## JavaScriptのビルド

JavaScriptはShakapackerとWebpackで管理しています。

```sh
bin/shakapacker
```
