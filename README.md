# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# 初期手順
    1.サンプルファイルの作成(Bookers)　：rails new 'name'
    2.git remote add originでリモートとつなぐ,git push
    3.modelの作成　：
        rails g model 'model name' column:data column:data..
    4.modelをmigrateする　：rails db:migrate
    5.controllerの作成　：rails g controller model(s) index..
    6.RESTfulなURLのルーティング自動設定(config/routes.rb)　：
        resources :blogs
    7.投稿機能の場合：newアクションとは別にcreateアクション作成

## ルートディレクトリのルーティング設定
    ⇨ http://localhost:3000/
    config/routes.rbで
    root :to => 'controller name'#''表示したいページ'

## ルーティング設定の確認
    rake routes

## RESTfulなURL
    resourcesを設定すると自動的にモデルが決まってくる
    
## 変数
    #{ } , @ ,
    | |:ブロック変数　ループ処理で定義する変数

## サクセスメッセージ
    flash[:notice]