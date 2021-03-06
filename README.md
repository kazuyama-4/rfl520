# [アプリケーション名]：ISE(Improve Shopping Efficiency)
[![Image from Gyazo](https://i.gyazo.com/416aeae2225bc39d69b75c5eb6b16c5a.jpg)](https://gyazo.com/416aeae2225bc39d69b75c5eb6b16c5a)
## [アプリケーション概要]
*ユーザー管理機能*  
ユーザーの新規登録、ログイン、ログアウトができるようになります  
*食材管理*  
カテゴリーで食材の分類ごとに表示を分け、リスト化します。また賞味期限も確認でき、食品の無駄にすることを減らします。
そして食材を確認できることにより、買い物をする際に効率を上げます。  
*買い物リスト*  
買い物リスト化することにより、無駄買いや買い忘れをなくし、買い物の効率を上げます。  
## [URL]
https://rfl520.herokuapp.com/
## [テスト用アカウント]	
メールアドレスtest@test.com  
パスワードtest12  
## [利用方法]
〜食材管理〜  
[![Image from Gyazo](https://i.gyazo.com/05fdd7d2a5117a56d54d6c3812b1f5c1.gif)](https://gyazo.com/05fdd7d2a5117a56d54d6c3812b1f5c1)
入力フォームを全て記入し、加えるをクリックすることで選んだカテゴリーごとにリスト化出来ます。また削除をクリックすることで、入力した食材を削除できます。　　
〜買い物リスト〜  
[![Image from Gyazo](https://i.gyazo.com/913ee4e4eb7711a20ba133263d836ec4.gif)](https://gyazo.com/913ee4e4eb7711a20ba133263d836ec4)
  食材管理の時と同じように入力フォームを入力し、加えるをクリックすることで買い物の食材を出来ます。またリセットをクリックすることで、入力した食材を削除できます。　　
## [データベース設計]
[![Image from Gyazo](https://i.gyazo.com/2151b34943a069d280dde0036b4b418b.png)](https://gyazo.com/2151b34943a069d280dde0036b4b418b)  
## [制作背景]  
きっかけは２点あり、１点目は実家で買い物の際に買い忘れや買い過ぎが多く、効率よく買い物をし、生活の一部分である食生活を管理していきたい思った点、
もう一点は生活の中で何かSDGsに取り組めないかと思い、食品ロスの面からできるのではないかと考えた点です。
### [目指した課題解決]
*課題解決1：買い物をする際、家に何が残っているか覚えていない*  
・そこで家庭にある冷蔵庫をイメージに管理し、わかりやすく見やすさを求め、カテゴリーごとに食品を分けました。  

*課題解決2：食材の賞味期限が管理しにくい*  
・賞味期限は見落としにより、食べずにそのまま捨ててしまうケースがあったりと、食品ロスにつながる機会が多いと考えられます。その問題の原因は賞味期限を見る機会が少ないことだと考えています。そのため、消費者に賞味期限を意識させるために入力フォームに賞味期限を記載しました。

*課題解決3：買い物の無駄買いや買い忘れ*  
・買い物をする際は何を基準に買い物するかというと、そのものが通常の値段より安いか、もしくは献立の中で使用する食材かどうかだと考えております。そのため、前もっての買い物リスト作ることにより、買うべきものが整理され、無駄買いや買い忘れを減らせると考えています。
### [実装予定の機能]
・献立表  
・家計簿機能(グラフ)  
・買い物リストを食材管理への反映  
・買い物リスト(Ajaxでの実装)  
### [ここに注目]
・カテゴリーにはActiveHashを使用し、表示をカテゴリーのidで分け、表示しました。  
・買い物リストは頻繁に使用することを考え、リセットで全ての入力した食材を削除するようにしました。
## [これからの課題・実装を通じて】  
このアプリを作成中、まだ自分が考えた通りの仕様ができず、自分の学習すべき点をたくさん見つけられました。成長を実感できるプログラミング、忖度なく、嘘のないプログラミングにとても好きになりました。これからは落合陽一さんがおしゃっていましたが、工作の際に刃物の特徴理解し、使い分けるように、プログラミング言語もその特徴を理解した上で、必要なのであれば新しく覚え、適材適所のプログラムが書けたらいいなと思います。
また言語の中でも仕様ごとに何かひとつを極め、スペシャリストになりたいと考えています。
