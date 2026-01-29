# 建築工事見積もりアプリ
## 概要
このプロジェクトは、スプレッドシート等で見積管理を行っている、
小規模な建築工事事業者や個人事業主を対象とした見積もりアプリです。
ユーザーごとに見積内容を管理し、情報の共有や過去案件の再利用を効率化することを目的としています。

## 主な機能

### 見積書一覧
登録されている見積書を一覧で表示し、内容の確認や各操作（編集・削除など）を行うことができます。 

![見積書一覧](https://github.com/osrk101/kenchiku-estimator-public/raw/main/estimate_list.png)

### 見積書の作成・保存
工事項目・数量・単価を入力することで、リアルタイムに金額を確認しながら見積書を作成できます。



https://github.com/user-attachments/assets/a8a2c379-53e1-403c-b1b8-aed73c668898




### 過去の見積をベースにした別件保存
過去に作成した見積書をコピーし、内容を編集して別案件として保存することができます。  


https://github.com/user-attachments/assets/6e4cecbb-1447-431d-a838-f21fb8d1b92a



### 見積検索
見積番号や件名などの条件を指定して、目的の見積書を素早く検索できます。  


https://github.com/user-attachments/assets/d42c2496-760b-4b95-a57c-525ddd196ad3


<details>
<summary>その他の操作動画</summary>

- **見積編集**
- 既存の見積書の内容を修正し、再計算・更新を行うことができます。


https://github.com/user-attachments/assets/5ab02720-c5f7-435a-926d-8c85c2835e96



- **ユーザー作成**
- 新しいユーザーアカウントを作成し、見積管理をユーザー単位で行えるようにしています。
  

https://github.com/user-attachments/assets/d21c73d4-b068-41ed-b58c-41478291ab96



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
- JavaScriptを使用し、入力内容に応じて合計金額をリアルタイムに再計算・表示することで、保存や再読み込みをせずに金額を確認できるUIを実装しました。
- 類似した見積の作成を効率化するため、既存の見積もりを再利用できるようにし、過去の工事をベースに別件保存できる仕組みを実装しました。
- 見積件数が増えた場合でも目的の見積を素早く探せるよう、見積番号や件名などの条件で検索できる機能を実装しました。
- ユーザー毎に見積情報を管理し、複数人での利用を想定した構成としました。



## データベース構築手順

### データベース設計資料 

[テーブル定義書.pdf](https://github.com/user-attachments/files/24927846/default.pdf):各テーブルの詳細なカラム定義や型を記載しています。

### SQLファイル
- **[schema.sql](./database/schema.sql)**: データベースおよびテーブル（accounts, estimates, estimate_items）の構造定義
- **[data.sql](./database/data.sql)**: テスト用サンプルデータの投入

本アプリケーションを実行するために、以下の手順でデータベースを構築してください。

#### 1. 動作環境

以下の環境で動作確認しています。

Java：17.0.15

MySQL：8.0.44

OS：Windows 11 Pro (24H2)

※ MySQL がインストールされていない場合は、事前にインストールしてください。


#### 2. リポジトリのクローン


git clone https://github.com/osrk101/kenchiku-estimator-public.git
cd kenchiku-estimator-public

※ 以降の手順では、このディレクトリ（README.md が配置されている場所）を
プロジェクトのルートディレクトリとします。


#### 3. MySQL にログイン

MySQL にログインします。

```bash
mysql -u root -p
```

パスワードを入力してください。


#### 4. データベース・テーブルの作成（schema.sql）

schema.sql を実行して、データベースとテーブルを作成します。

```sql
source /path/to/project/database/schema.sql;
```

※ /path/to/project は、本リポジトリをクローンしたディレクトリ（README.md が配置されているディレクトリ）に置き換えてください。

※ Windows 環境では、パス区切り文字として / を使用してください。


#### 5. 初期データ（テストデータ）の投入

続けて、data.sql を実行し、テスト用のサンプルデータを投入します。

```sql
source /path/to/project/database/data.sql;
```

エラーが表示されなければ、データ投入は成功です。


#### 6. application.properties の設定

application.properties に、以下の設定を行ってください。

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/kenchiku_estimate

spring.datasource.username=

spring.datasource.password=
```
※ ユーザー名・パスワードは各自の MySQL 環境に合わせて設定してください。


#### 7. アプリケーションの起動

プロジェクトのルートディレクトリで、以下のコマンドを実行します。

```bash
mvnw spring-boot:run
```

起動後、ブラウザで以下にアクセスしてください。

```bash
http://localhost:8080
```

※ ポート番号は application.properties の設定に従ってください。


#### 8. テスト用アカウント情報

data.sql には、以下のテスト用アカウントが登録されています。

| ユーザー名 | 権限 |
|----------|------|
| adminuser | ADMIN |
| testuser | ADMIN |
| suzuki | USER |

※ パスワードは BCrypt でハッシュ化されています。






