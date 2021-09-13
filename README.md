# README

## アプリ名
想作和食 旬

## 概要
このアプリでできること.  
　・ユーザー登録時の2段階認証.  
　・クレジットカード決済.  
　・店舗予約.  
　・商品購入.  
 
## 本番環境

ログイン情報(テスト用).  
  ・URL : https://original0505.herokuapp.com/.  
  ・Eメール : xitianxiongjie0@gmail.com.  
  ・パスワード : 000000.  
  
## 制作背景
前職の飲食店での経験から予約サイトと、商品購入サイトが別々で管理が煩雑で一つにまとめることができないかと思っていたので、今回のアプリを開発しようと思いました。

## 各機能の実装目的
・クレジット決済機能.  
　当日のキャンセルが多かったため、前払いの機能の実装を行い、当日のキャンセルの場合、キャンセル料をもらえるように実装をしました。   
・商品購入機能.  
　商品を出品するのではなく、固定しての販売をすることにより、管理をしやすくしました。   
・2段階認証.  
　deviseの新規登録機能は、バリデーションをかけても、存在しないアドレスでも登録できてしまうため、2段階認証機能を実装し、実在するアドレスのみでの登録に限定しました。   
