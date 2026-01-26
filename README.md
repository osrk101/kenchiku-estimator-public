# 建築工事見積もりアプリ
## 概要
このプロジェクトは、スプレッドシート等で見積管理を行っている
小規模な建築工事事業者や個人事業主を対象とした見積もりアプリです。
ユーザーごとに見積内容を管理し、情報の共有や過去案件の再利用を効率化することを目的としています。

## 主な機能

### 見積書一覧
登録されている見積書を一覧で表示し、内容の確認や各操作（編集・削除など）を行うことができます。 
![見積書一覧](https://github.com/osrk101/kenchiku-estimator-public/raw/main/estimate_view.png)

### 見積書の作成・保存
工事項目・数量・単価を入力することで、リアルタイムに金額を確認しながら見積書を作成できます。

https://github.com/user-attachments/assets/3a4a35e3-5a35-48ff-8613-119802de26b9

### 過去の見積をベースにした別件保存
過去に作成した見積書をコピーし、内容を編集して別案件として保存することができます。  
類似工事の見積作成を効率化することを目的としています。  

https://github.com/user-attachments/assets/3e8f66b3-f746-4610-8f7e-4d4e3d5980e7

### 見積検索
見積番号や件名などの条件を指定して、目的の見積書を素早く検索できます。  

https://github.com/user-attachments/assets/5f81bd9f-267c-4811-b55c-0913e98aa047

<details>
<summary>その他の操作動画</summary>
  
- **見積編集**
- 既存の見積書の内容を修正し、再計算・更新を行うことができます。
- 
https://github.com/user-attachments/assets/ae3fde79-5b48-4b92-9b3b-d63fd9b
- **ユーザー作成**
- 新しいユーザーアカウントを作成し、見積管理をユーザー単位で行えるようにしています。
- 
https://github.com/user-attachments/assets/53082689-474a-4cd0-a897-a4ba15b8c7eb

</details>

## 使用技術

### フロントエンド
![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)
![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?logo=bootstrap&logoColor=white)

### バックエンド
![Java](https://img.shields.io/badge/Java-007396?logo=java&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?logo=springboot&logoColor=white)
![MyBatis](https://img.shields.io/badge/MyBatis-000000?logoColor=white)

### データベース
![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)

## 工夫した点
- JavaScriptを使用し、入力内容に応じて合計金額をリアルタイムに再計算・表示することで、<br>
保存や再読み込みをせずに金額を確認できるUIを実装しました。
- 既存の見積もりを再利用できるようにし、過去の工事をベースに別件保存できる仕組みを実装しました。
