<div id="top"></div>

## 使用技術一覧

<!-- シールド一覧 -->
<!-- 該当するプロジェクトの中から任意のものを選ぶ-->
<p style="display: inline">
  <!-- バックエンドのフレームワーク一覧 -->
  <img src="https://img.shields.io/badge/-Rails-CC0000.svg?logo=rails&style=plastic">
  <!-- バックエンドの言語一覧 -->
  <img src="https://img.shields.io/badge/-Ruby-CC342D.svg?logo=ruby&style=plastic">
</p>

## 目次

1. [プロジェクトについて](#プロジェクトについて)
2. [環境](#環境)
3. [コードについて](#コードについて)
4. [データベース(DB)について](#データベースdbについて)
5. [使い方](#使い方)

<!-- プロジェクト名を記載 -->

## プロジェクト名

PokePokeのカードサジェスト

<!-- プロジェクトについて -->

## プロジェクトについて

主軸となるカードをもとに、相性の良いカードやおすすめのパックを表示  
ログイン機構・お気に入り登録・PokeAPI

## 環境

<!-- 言語、フレームワーク、ミドルウェア、インフラの一覧とバージョンを記載 -->

| 言語・フレームワーク  | バージョン |
| --------------------- | ---------- |
| Rails                 | 7.2.1      |

## コードについて

ワークスペース→/Users/yoshidatomoya/railss/pokepoke_app

コントローラ(C)の編集→app/controllers/main_controller.rb  
検索ページ(V)の編集→app/views/main/search.html.erb  
結果ページ(V)の編集→app/views/main/results.html.erb  
お気に入りページ(V)の編集→app/views/main/favorite.html.erb  
ログインページ(V)の編集→app/views/devise/sessions/new.html.erb  
データベース(DB)の編集→db/seeds.rb(rails db:resetを実行)  
モデル→各モデル(M)にそれぞれhas_many/belongs_toを定義  
API→app/models/card.rbで翻訳が必要  

## データベース(DB)について

「DB Browser for SQLite」でstorage/development.sqlite3を開くと可視化

## 使い方

1. git clone する
2. /Users/yoshidatomoya/railss/pokepoke_app に移動する
3. ターミナルで $ rails server
4. localhost:3000 で検索