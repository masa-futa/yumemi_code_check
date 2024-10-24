# yumemi_code_check

## Overview
選考となるコーディング試験用のRepositoryとなります。  
詳細は[[こちら]](https://github.com/yumemi-inc/flutter-engineer-codecheck?tab=readme-ov-file)をご確認ください。

## Design
[MaterialDesign](https://m3.material.io/)に準拠したデザイン構成（[Figma](https://www.figma.com/design/TGMnWz2EvDmz7aPdzzeikY/%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BE%E3%82%86%E3%82%81%E3%81%BF_%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E8%AA%B2%E9%A1%8C?node-id=0-1&node-type=canvas&t=NWliR1xRb3u7Jd17-0)）  
※Freeのプロジェクトとなっているため扱い方にはご注意ください。

## Architecture
CQRS + Repositoryパターンを採用
- 単一方向データフローとなる様に構成
- 中・大規模なアプリではないため最小限な構成とする
- テスト容易性を考慮

<img width="978" alt="CQRS+Repository" src="https://github.com/user-attachments/assets/ed46fc39-1bc7-4060-b878-ea58d7174c68">

### Command
- 機能毎にProviderを生成
- 複数APIが絡んでくるなどの要件は今回無いため、純粋なProviderを利用しイベントを実施する
```dart
@riverpod
Future<void> fetch(FetchRef ref) => ref.read(repository).add();
```

### Query
- 状態を保つ
- UI
  - Queryの状態を監視
- Repository
  - constructorで生成したQueryに対して、取得/加工したDataModelを受け渡す

```dart
class XxxQuery extends Query<XxxModel> {
  @override
  void update(Result<XxxModel, Exception> result) {
    // update ...
  }
}
```

### Repository
- データの取得 / 加工の責務を担う
- 取得 / 加工したデータをQueryに受け渡す
```dart
class XxxRepository extends Repository {
  XxxRepository(this.query);

  @override
  final Query<Model> query;


  Future<void> add() async {
    // API request ...

    query.update(
      Success(SearchModel('')), // 取得したデータを受け渡す
    );
  }

}
```