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

<!-- プロジェクト名を記載 -->

## プロジェクト名

PokePokeのカードサジェスト

<!-- プロジェクトについて -->

## プロジェクトについて

主軸となるカードをもとに、相性の良いカードやおすすめのパックを表示

## 環境

<!-- 言語、フレームワーク、ミドルウェア、インフラの一覧とバージョンを記載 -->

| 言語・フレームワーク  | バージョン |
| --------------------- | ---------- |
| Rails                 | 7.2.1      |

## コードについて

ワークスペース→/Users/yoshidatomoya/railss/pokepoke_app

コントローラの編集→app/controllers/main_controller.rb  
検索ページの編集→app/views/main/search.html.erb  
結果ページの編集→app/views/main/results.html.erb  
データベースの編集→db/seeds.rb(rails db:resetを実行)  
モデル→各モデルにそれぞれhas_many/belongs_toを定義

## データベース(DB)について

「DB Browser for SQLite」でstorage/development.sqlite3を開くと可視化
