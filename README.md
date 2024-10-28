# yumemi_code_check

## Overview

選考となるコーディング試験用の Repository となります。  
詳細は[[こちら]](https://github.com/yumemi-inc/flutter-engineer-codecheck?tab=readme-ov-file)をご確認ください。

## Environment
|     | Version   |
| --- | --- | 
|  Flutter   |  3.24.3   |
|  Dart   |  3.5.3   | 
## Design

[MaterialDesign](https://m3.material.io/)に準拠したデザイン構成（[Figma](https://www.figma.com/design/TGMnWz2EvDmz7aPdzzeikY/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%82%86%E3%82%81%E3%81%BF_%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E8%AA%B2%E9%A1%8C?node-id=0-1&node-type=canvas&t=NWliR1xRb3u7Jd17-0)）  
※Free のプロジェクトとなっているため扱い方にはご注意ください。

## Basic operations

<video src="https://github.com/user-attachments/assets/1e051290-7474-4af1-b96b-8e84cd28387d" width="300">


## Architecture

CQRS パターンを採用

- 単一方向データフローとなる様に構成
- 中・大規模なアプリではないため最小限な構成とする
- テスト容易性を考慮

<img width="978" alt="CQRS+Repository" src="https://github.com/user-attachments/assets/4f5e4f41-305f-48b0-b52f-54530fe4375c">

### Command

- 機能毎に Provider を生成
- 複数 API が絡んでくるなどの要件は今回無いため、純粋な Provider を利用しイベントを実施する
- api client 側に Query Service インスタンスを受け渡す

```dart
@riverpod
Future<void> fetch(Ref ref, {required QueryService<XxxModel> queryService,}) => ref.read(repository).add();
```

### Query

- 状態を保つ
- UI
  - Query の状態を監視
- Repository
  - constructor で生成した Query に対して、取得/加工した DataModel を受け渡す

```dart
class XxxQuery _$XxxQuery implements QueryService<XxxhModel> {
  @override
  void subscribe(Result<XxxModel, Exception> result) {
    // update ...
  }
}
```

### Api Client

- データの取得 / 加工の責務を担う
- 取得 / 加工したデータを Query に受け渡す
- api 毎に client を生成

```dart
@riverpod
Future<void> getSearchRepositories(
  Ref ref, {
  required String token,
  required String keyword,
  required QueryService<SearchModel> queryService,
}) async {
  // ...
  // ...

  queryService.subscribe(Success(searchModel));
}
```

## Confidential information

### Github Apps

- Github API Client で利用するアクセストークンの管理を`Github Apps`で管理する（[public page](https://github.com/apps/yumemicodecheck)）
- `Github Apps`にてトークンを利用する場合のセットアップ手順は[公式](https://docs.github.com/ja/apps/creating-github-apps/authenticating-with-a-github-app/about-authentication-with-a-github-app)に記載の通りであるため割愛

#### 注意事項

- `Github Rest API`で利用するアクセストークンは、上記手順で発行した`JSON Web Token(JWT)`を、`RequestHeader`に付与する必要がある
- `JWT`を生成するスクリプトは、機密情報も含まれるため、リモートには上げていないが、公式手順通りではあるため必要な場合は生成すること
- JWT の有効期限が`10分`と短いが、今回は定期実行などの対策は講じずそのまま利用することとする
  - `JWT`で発行したアクセストークンの有効期限は`8時間`となっているため、リードタイムなどを考慮してサーバーサイドなどで`JWT`を生成/取得する API を用意したりと考慮が必要ではあるが、上記で記載の通り試験用コードとなるため割愛とする。

### INSTALLATION_ID

- `Github Apps`で生成された`INSTALLATION_ID`は`.envrc`にて管理しているため、必要な場合は管理者にお声がけください。

#### .envrc 生成 / 適応手順

1. `.envrc`ファイルを root 直下に作成
2. 必要事項を記載したのち、ファイルを読み込ませる

```zsh
$ source .envrc
```

3. `build_runner`を実行(※オプションとして`--delete-conflicting-outputs`を利用)

```zsh
$ fvm flutter pub run build_runner build --delete-conflicting-outputs
```

## Code Generate

`freezed` / `riverpod`などの自動生成ファイルが乱雑化してしまうため、`build.yaml`を利用し  
`generated/`フォルダにファイルを生成する様に指定しているため、コード生成時のパス指定に十分注意すること

```dart
part 'generated/xxx_xxx.freezed.dart';
part 'generated/xxx_xxx.g.dart';
```

## Analyzer
- [very_good_analysis](https://pub.dev/packages/very_good_analysis)を採用

### 理由
- 堅牢な規約として定義しておきたいため
- 信頼性がある
- 普段は[pedantic_mono](https://pub.dev/packages/pedantic_mono)を利用しているが、せっかくなので導入してみた

## Multilingual support
- 多言語管理に[slang](https://pub.dev/packages/slang)を採用
### input file
- 文言ファイルの形式として`json` / `env` / `yaml`様々な形式をサポートしているが、今回は`yaml`を採用
  - 他定義ファイル形式と統一するため
- 多言語として`ja` / `en`のみサポートする様に実施
- どちらのファイルも階層構造は統一すること  
利用方法)
```dart
i18n.sample.title;
```
のように、`i18n`からアクセスできるように`build.yaml`内で`translate_var`を変更している

### output file
- input fileを編集した場合、`build_runner`を実施
- 出力先は`build.yaml`の`output_directory`にて指定しているため、自動で生成してくれます

## Debug

- 本アプリで利用するデバッグ機能を作成している
  - [こちら](https://github.com/masa-futa/yumemi_code_check/tree/develop?tab=readme-ov-file#confidential-information)で説明した通り、`JWT`の有効期限が非常に短いのと、取得する仕組みが確立されていないため、簡潔にデバッグ機能を利用して、UI/UXの確認を実施できるようにしている。
  - 検索画面の右下にあるフローティングアクションボタンからデバッグ機能に遷移できる
  - `flavor`にて分岐していないため、どの環境でも表示されてしまうが、Dev環境のみ表示させる想定で用意している

## エラーコード
[Wiki](https://github.com/masa-futa/yumemi_code_check/wiki/%E3%82%A8%E3%83%A9%E3%83%BC%E3%82%B3%E3%83%BC%E3%83%89#apiexception)に記述しているため合わせてご確認ください

## WidgetTest / UnitTest
以下、本アプリ内でテスト対象としているディレクトリを記述する

### WidgetTest
- `feature`ディレクトリ配下のコンポーネント

### UnitTest
ロジックを含む以下ディレクトリ配下の処理
- `command_service`
- `api_client`

※`QueryService`では、状態を保持/更新する役割のため、条件分岐を含まないのと、`api_client`側で担保されている領域となるため対象外としている