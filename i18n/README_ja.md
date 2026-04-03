<!---
Copyright 2020 The HuggingFace Team. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->

<!---
A useful guide for English-Traditional Japanese translation of Hugging Face documentation
- Use square quotes, e.g.,「引用」

Dictionary

API: API(翻訳しない)
add: 追加
checkpoint: チェックポイント
code: コード
community: コミュニティ
confidence: 信頼度
dataset: データセット
documentation: ドキュメント
example: 例
finetune: 微調整
Hugging Face: Hugging Face(翻訳しない)
implementation: 実装
inference: 推論
library: ライブラリ
module: モジュール
NLP/Natural Language Processing: NLPと表示される場合は翻訳されず、Natural Language Processingと表示される場合は翻訳される
online demos: オンラインデモ
pipeline: pipeline(翻訳しない)
pretrained/pretrain: 学習済み
Python data structures (e.g., list, set, dict): リスト、セット、ディクショナリと訳され、括弧内は原文英語
repository: repository(翻訳しない)
summary: 概要
token-: token-(翻訳しない)
Trainer: Trainer(翻訳しない)
transformer: transformer(翻訳しない)
tutorial: チュートリアル
user: ユーザ
-->

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://huggingface.co/datasets/huggingface/documentation-images/raw/main/transformers-logo-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset="https://huggingface.co/datasets/huggingface/documentation-images/raw/main/transformers-logo-light.svg">
    <img alt="Hugging Face Transformers Library" src="https://huggingface.co/datasets/huggingface/documentation-images/raw/main/transformers-logo-light.svg" width="352" height="59" style="max-width: 100%;">
  </picture>
  <br/>
  <br/>
</p>

<p align="center">
    <a href="https://circleci.com/gh/huggingface/transformers"><img alt="Build" src="https://img.shields.io/circleci/build/github/huggingface/transformers/main"></a>
    <a href="https://github.com/NETWORKBUSTER/Preciseliens/blob/main/LICENSE"><img alt="GitHub" src="https://img.shields.io/github/license/NETWORKBUSTER/Preciseliens.svg?color=blue"></a>
    <a href="https://huggingface.co/docs/transformers/index"><img alt="Documentation" src="https://img.shields.io/website/http/huggingface.co/docs/transformers/index.svg?down_color=red&down_message=offline&up_message=online"></a>
    <a href="https://github.com/NETWORKBUSTER/Preciseliens/releases"><img alt="GitHub release" src="https://img.shields.io/github/release/NETWORKBUSTER/Preciseliens.svg"></a>
    <a href="https://github.com/NETWORKBUSTER/Preciseliens/blob/main/CODE_OF_CONDUCT.md"><img alt="Contributor Covenant" src="https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg"></a>
    <a href="https://zenodo.org/badge/latestdoi/155220641"><img src="https://zenodo.org/badge/155220641.svg" alt="DOI"></a>
</p>

<h4 align="center">
    <p>
        <a href="https://github.com/huggingface/transformers/">English</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_zh-hans.md">简体中文</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_zh-hant.md">繁體中文</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_ko.md">한국어</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_es.md">Español</a> |
        <b>日本語</b> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_hd.md">हिन्दी</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_ru.md">Русский</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_pt-br.md">Рortuguês</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_te.md">తెలుగు</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_fr.md">Français</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_de.md">Deutsch</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_it.md">Italiano</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_vi.md">Tiếng Việt</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_ar.md">العربية</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_ur.md">اردو</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_bn.md">বাংলা</a> |
    </p>
</h4>

<h3 align="center">
    <p>JAX、PyTorch、TensorFlowのための最先端機械学習</p>
</h3>

<h3 align="center">
    <a href="https://hf.co/course"><img src="https://huggingface.co/datasets/huggingface/documentation-images/resolve/main/course_banner.png"></a>
</h3>

🤗Transformersは、テキスト、視覚、音声などの異なるモダリティに対してタスクを実行するために、事前に学習させた数千のモデルを提供します。

これらのモデルは次のような場合に適用できます:

* 📝 テキストは、テキストの分類、情報抽出、質問応答、要約、翻訳、テキスト生成などのタスクのために、100以上の言語に対応しています。
* 🖼️ 画像分類、物体検出、セグメンテーションなどのタスクのための画像。
* 🗣️ 音声は、音声認識や音声分類などのタスクに使用します。

トランスフォーマーモデルは、テーブル質問応答、光学文字認識、スキャン文書からの情報抽出、ビデオ分類、視覚的質問応答など、**複数のモダリティを組み合わせた**タスクも実行可能です。

🤗Transformersは、与えられたテキストに対してそれらの事前学習されたモデルを素早くダウンロードして使用し、あなた自身のデータセットでそれらを微調整し、私たちの[model hub](https://huggingface.co/models)でコミュニティと共有するためのAPIを提供します。同時に、アーキテクチャを定義する各Pythonモジュールは完全にスタンドアロンであり、迅速な研究実験を可能にするために変更することができます。

🤗Transformersは[Jax](https://jax.readthedocs.io/en/latest/)、[PyTorch](https://pytorch.org/)、[TensorFlow](https://www.tensorflow.org/)という3大ディープラーニングライブラリーに支えられ、それぞれのライブラリをシームレスに統合しています。片方でモデルを学習してから、もう片方で推論用にロードするのは簡単なことです。

## オンラインデモ

[model hub](https://huggingface.co/models)から、ほとんどのモデルのページで直接テストすることができます。また、パブリックモデル、プライベートモデルに対して、[プライベートモデルのホスティング、バージョニング、推論API](https://huggingface.co/pricing)を提供しています。

以下はその一例です:

 自然言語処理にて:
- [BERTによるマスクドワード補完](https://huggingface.co/google-bert/bert-base-uncased?text=Paris+is+the+%5BMASK%5D+of+France)
- [Electraによる名前実体認識](https://huggingface.co/dbmdz/electra-large-discriminator-finetuned-conll03-english?text=My+name+is+Sarah+and+I+live+in+London+city)
- [GPT-2によるテキスト生成](https://huggingface.co/openai-community/gpt2?text=A+long+time+ago%2C+)
- [RoBERTaによる自然言語推論](https://huggingface.co/FacebookAI/roberta-large-mnli?text=The+dog+was+lost.+Nobody+lost+any+animal)
- [BARTによる要約](https://huggingface.co/facebook/bart-large-cnn?text=The+tower+is+324+metres+%281%2C063+ft%29+tall%2C+about+the+same+height+as+an+81-storey+building%2C+and+the+tallest+structure+in+Paris.+Its+base+is+square%2C+measuring+125+metres+%28410+ft%29+on+each+side.+During+its+construction%2C+the+Eiffel+Tower+surpassed+the+Washington+Monument+to+become+the+tallest+man-made+structure+in+the+world%2C+a+title+it+held+for+41+years+until+the+Chrysler+Building+in+New+York+City+was+finished+in+1930.+It+was+the+first+structure+to+reach+a+height+of+300+metres.+Due+to+the+addition+of+a+broadcasting+aerial+at+the+top+of+the+tower+in+1957%2C+it+is+now+taller+than+the+Chrysler+Building+by+5.2+metres+%2817+ft%29.+Excluding+transmitters%2C+the+Eiffel+Tower+is+the+second+tallest+free-standing+structure+in+France+after+the+Millau+Viaduct)
- [DistilBERTによる質問応答](https://huggingface.co/distilbert/distilbert-base-uncased-distilled-squad?text=Which+name+is+also+used+to+describe+the+Amazon+rainforest+in+English%3F&context=The+Amazon+rainforest+%28Portuguese%3A+Floresta+Amaz%C3%B4nica+or+Amaz%C3%B4nia%3B+Spanish%3A+Selva+Amaz%C3%B3nica%2C+Amazon%C3%ADa+or+usually+Amazonia%3B+French%3A+For%C3%AAt+amazonienne%3B+Dutch%3A+Amazoneregenwoud%29%2C+also+known+in+English+as+Amazonia+or+the+Amazon+Jungle%2C+is+a+moist+broadleaf+forest+that+covers+most+of+the+Amazon+basin+of+South+America.+This+basin+encompasses+7%2C000%2C000+square+kilometres+%282%2C700%2C000+sq+mi%29%2C+of+which+5%2C500%2C000+square+kilometres+%282%2C100%2C000+sq+mi%29+are+covered+by+the+rainforest.+This+region+includes+territory+belonging+to+nine+nations.+The+majority+of+the+forest+is+contained+within+Brazil%2C+with+60%25+of+the+rainforest%2C+followed+by+Peru+with+13%25%2C+Colombia+with+10%25%2C+and+with+minor+amounts+in+Venezuela%2C+Ecuador%2C+Bolivia%2C+Guyana%2C+Suriname+and+French+Guiana.+States+or+departments+in+four+nations+contain+%22Amazonas%22+in+their+names.+The+Amazon+represents+over+half+of+the+planet%27s+remaining+rainforests%2C+and+comprises+the+largest+and+most+biodiverse+tract+of+tropical+rainforest+in+the+world%2C+with+an+estimated+390+billion+individual+trees+divided+into+16%2C000+species)
- [T5による翻訳](https://huggingface.co/google-t5/t5-base?text=My+name+is+Wolfgang+and+I+live+in+Berlin)

コンピュータビジョンにて:
- [ViTによる画像分類](https://huggingface.co/google/vit-base-patch16-224)
- [DETRによる物体検出](https://huggingface.co/facebook/detr-resnet-50)
- [SegFormerによるセマンティックセグメンテーション](https://huggingface.co/nvidia/segformer-b0-finetuned-ade-512-512)
- [DETRによるパノプティックセグメンテーション](https://huggingface.co/facebook/detr-resnet-50-panoptic)

オーディオにて:
- [Wav2Vec2による自動音声認識](https://huggingface.co/facebook/wav2vec2-base-960h)
- [Wav2Vec2によるキーワード検索](https://huggingface.co/superb/wav2vec2-base-superb-ks)

マルチモーダルなタスクにて:
- [ViLTによる視覚的質問応答](https://huggingface.co/dandelin/vilt-b32-finetuned-vqa)

Hugging Faceチームによって作られた **[トランスフォーマーを使った書き込み](https://transformer.huggingface.co)** は、このリポジトリのテキスト生成機能の公式デモである。

## Hugging Faceチームによるカスタム・サポートをご希望の場合

<a target="_blank" href="https://huggingface.co/support">
    <img alt="HuggingFace Expert Acceleration Program" src="https://cdn-media.huggingface.co/marketing/transformers/new-support-improved.png" style="max-width: 600px; border: 1px solid #eee; border-radius: 4px; box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);">
</a><br>

## クイックツアー

与えられた入力（テキスト、画像、音声、...）に対してすぐにモデルを使うために、我々は`pipeline`というAPIを提供しております。pipelineは、学習済みのモデルと、そのモデルの学習時に使用された前処理をグループ化したものです。以下は、肯定的なテキストと否定的なテキストを分類するためにpipelineを使用する方法です:

```python
>>> from transformers import pipeline

# Allocate a pipeline for sentiment-analysis
>>> classifier = pipeline('sentiment-analysis')
>>> classifier('We are very happy to introduce pipeline to the transformers repository.')
[{'label': 'POSITIVE', 'score': 0.9996980428695679}]
```

2行目のコードでは、pipelineで使用される事前学習済みモデルをダウンロードしてキャッシュし、3行目では与えられたテキストに対してそのモデルを評価します。ここでは、答えは99.97%の信頼度で「ポジティブ」です。

自然言語処理だけでなく、コンピュータビジョンや音声処理においても、多くのタスクにはあらかじめ訓練された`pipeline`が用意されている。例えば、画像から検出された物体を簡単に抽出することができる:

``` python
>>> import requests
>>> from PIL import Image
>>> from transformers import pipeline

# Download an image with cute cats
>>> url = "https://huggingface.co/datasets/huggingface/documentation-images/resolve/main/coco_sample.png"
>>> image_data = requests.get(url, stream=True).raw
>>> image = Image.open(image_data)

# Allocate a pipeline for object detection
>>> object_detector = pipeline('object-detection')
>>> object_detector(image)
[{'score': 0.9982201457023621,
  'label': 'remote',
  'box': {'xmin': 40, 'ymin': 70, 'xmax': 175, 'ymax': 117}},
 {'score': 0.9960021376609802,
  'label': 'remote',
  'box': {'xmin': 333, 'ymin': 72, 'xmax': 368, 'ymax': 187}},
 {'score': 0.9954745173454285,
  'label': 'couch',
  'box': {'xmin': 0, 'ymin': 1, 'xmax': 639, 'ymax': 473}},
 {'score': 0.9988006353378296,
  'label': 'cat',
  'box': {'xmin': 13, 'ymin': 52, 'xmax': 314, 'ymax': 470}},
 {'score': 0.9986783862113953,
  'label': 'cat',
  'box': {'xmin': 345, 'ymin': 23, 'xmax': 640, 'ymax': 368}}]
```

ここでは、画像から検出されたオブジェクトのリストが得られ、オブジェクトを囲むボックスと信頼度スコアが表示されます。左側が元画像、右側が予測結果を表示したものです:

<h3 align="center">
    <a><img src="https://huggingface.co/datasets/huggingface/documentation-images/resolve/main/coco_sample.png" width="400"></a>
    <a><img src="https://huggingface.co/datasets/huggingface/documentation-images/resolve/main/coco_sample_post_processed.png" width="400"></a>
</h3>

[このチュートリアル](https://huggingface.co/docs/transformers/task_summary)では、`pipeline`APIでサポートされているタスクについて詳しく説明しています。

`pipeline`に加えて、与えられたタスクに学習済みのモデルをダウンロードして使用するために必要なのは、3行のコードだけです。以下はPyTorchのバージョンです:
```python
>>> from transformers import AutoTokenizer, AutoModel

>>> tokenizer = AutoTokenizer.from_pretrained("google-bert/bert-base-uncased")
>>> model = AutoModel.from_pretrained("google-bert/bert-base-uncased")

>>> inputs = tokenizer("Hello world!", return_tensors="pt")
>>> outputs = model(**inputs)
```

そしてこちらはTensorFlowと同等のコードとなります:
```python
>>> from transformers import AutoTokenizer, TFAutoModel

>>> tokenizer = AutoTokenizer.from_pretrained("google-bert/bert-base-uncased")
>>> model = TFAutoModel.from_pretrained("google-bert/bert-base-uncased")

>>> inputs = tokenizer("Hello world!", return_tensors="tf")
>>> outputs = model(**inputs)
```

トークナイザは学習済みモデルが期待するすべての前処理を担当し、単一の文字列 (上記の例のように) またはリストに対して直接呼び出すことができます。これは下流のコードで使用できる辞書を出力します。また、単純に ** 引数展開演算子を使用してモデルに直接渡すこともできます。

モデル自体は通常の[Pytorch `nn.Module`](https://pytorch.org/docs/stable/nn.html#torch.nn.Module) または [TensorFlow `tf.keras.Model`](https://www.tensorflow.org/api_docs/python/tf/keras/Model) (バックエンドによって異なる)で、通常通り使用することが可能です。[このチュートリアル](https://huggingface.co/docs/transformers/training)では、このようなモデルを従来のPyTorchやTensorFlowの学習ループに統合する方法や、私たちの`Trainer`APIを使って新しいデータセットで素早く微調整を行う方法について説明します。

## なぜtransformersを使う必要があるのでしょうか？

1. 使いやすい最新モデル:
    - 自然言語理解・生成、コンピュータビジョン、オーディオの各タスクで高いパフォーマンスを発揮します。
    - 教育者、実務者にとっての低い参入障壁。
    - 学習するクラスは3つだけで、ユーザが直面する抽象化はほとんどありません。
    - 学習済みモデルを利用するための統一されたAPI。

1. 低い計算コスト、少ないカーボンフットプリント:
    - 研究者は、常に再トレーニングを行うのではなく、トレーニングされたモデルを共有することができます。
    - 実務家は、計算時間や生産コストを削減することができます。
    - すべてのモダリティにおいて、60,000以上の事前学習済みモデルを持つ数多くのアーキテクチャを提供します。

1. モデルのライフタイムのあらゆる部分で適切なフレームワークを選択可能:
    - 3行のコードで最先端のモデルをトレーニング。
    - TF2.0/PyTorch/JAXフレームワーク間で1つのモデルを自在に移動させる。
    - 学習、評価、生産に適したフレームワークをシームレスに選択できます。

1. モデルやサンプルをニーズに合わせて簡単にカスタマイズ可能:
    - 原著者が発表した結果を再現するために、各アーキテクチャの例を提供しています。
    - モデル内部は可能な限り一貫して公開されています。
    - モデルファイルはライブラリとは独立して利用することができ、迅速な実験が可能です。

## なぜtransformersを使ってはいけないのでしょうか？

- このライブラリは、ニューラルネットのためのビルディングブロックのモジュール式ツールボックスではありません。モデルファイルのコードは、研究者が追加の抽象化/ファイルに飛び込むことなく、各モデルを素早く反復できるように、意図的に追加の抽象化でリファクタリングされていません。
- 学習APIはどのようなモデルでも動作するわけではなく、ライブラリが提供するモデルで動作するように最適化されています。一般的な機械学習のループには、別のライブラリ(おそらく[Accelerate](https://huggingface.co/docs/accelerate))を使用する必要があります。
- 私たちはできるだけ多くの使用例を紹介するよう努力していますが、[examples フォルダ](https://github.com/huggingface/transformers/tree/main/examples) にあるスクリプトはあくまで例です。あなたの特定の問題に対してすぐに動作するわけではなく、あなたのニーズに合わせるために数行のコードを変更する必要があることが予想されます。

## インストール

### pipにて

このリポジトリは、Python 3.9+, Flax 0.4.1+, PyTorch 2.1+, TensorFlow 2.6+ でテストされています。

🤗Transformersは[仮想環境](https://docs.python.org/3/library/venv.html)にインストールする必要があります。Pythonの仮想環境に慣れていない場合は、[ユーザーガイド](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/)を確認してください。

まず、使用するバージョンのPythonで仮想環境を作成し、アクティベートします。

その後、Flax, PyTorch, TensorFlowのうち少なくとも1つをインストールする必要があります。
[TensorFlowインストールページ](https://www.tensorflow.org/install/)、[PyTorchインストールページ](https://pytorch.org/get-started/locally/#start-locally)、[Flax](https://github.com/google/flax#quick-install)、[Jax](https://github.com/google/jax#installation)インストールページで、お使いのプラットフォーム別のインストールコマンドを参照してください。

これらのバックエンドのいずれかがインストールされている場合、🤗Transformersは以下のようにpipを使用してインストールすることができます:

```bash
pip install transformers
```

もしサンプルを試したい、またはコードの最先端が必要で、新しいリリースを待てない場合は、[ライブラリをソースからインストール](https://huggingface.co/docs/transformers/installation#installing-from-source)する必要があります。

### condaにて

🤗Transformersは以下のようにcondaを使って設置することができます:

```shell script
conda install conda-forge::transformers
```

> **_注意:_**  `huggingface` チャンネルから `transformers` をインストールすることは非推奨です。

Flax、PyTorch、TensorFlowをcondaでインストールする方法は、それぞれのインストールページに従ってください。

> **_注意:_**  Windowsでは、キャッシュの恩恵を受けるために、デベロッパーモードを有効にするよう促されることがあります。このような場合は、[このissue](https://github.com/huggingface/huggingface_hub/issues/1062)でお知らせください。

## モデルアーキテクチャ

🤗Transformersが提供する **[全モデルチェックポイント](https://huggingface.co/models)** は、[ユーザー](https://huggingface.co/users)や[組織](https://huggingface.co/organizations)によって直接アップロードされるhuggingface.co [model hub](https://huggingface.co)からシームレスに統合されています。

現在のチェックポイント数: ![](https://img.shields.io/endpoint?url=https://huggingface.co/api/shields/models&color=brightgreen)

🤗Transformersは現在、以下のアーキテクチャを提供しています: それぞれのハイレベルな要約は[こちら](https://huggingface.co/docs/transformers/model_summary)を参照してください.

各モデルがFlax、PyTorch、TensorFlowで実装されているか、🤗Tokenizersライブラリに支えられた関連トークナイザを持っているかは、[この表](https://huggingface.co/docs/transformers/index#supported-frameworks)を参照してください。

これらの実装はいくつかのデータセットでテストされており(サンプルスクリプトを参照)、オリジナルの実装の性能と一致するはずである。性能の詳細は[documentation](https://github.com/huggingface/transformers/tree/main/examples)のExamplesセクションで見ることができます。


## さらに詳しく

| セクション | 概要 |
|-|-|
| [ドキュメント](https://huggingface.co/docs/transformers/) | 完全なAPIドキュメントとチュートリアル |
| [タスク概要](https://huggingface.co/docs/transformers/task_summary) | 🤗Transformersがサポートするタスク |
| [前処理チュートリアル](https://huggingface.co/docs/transformers/preprocessing) | モデル用のデータを準備するために`Tokenizer`クラスを使用 |
| [トレーニングと微調整](https://huggingface.co/docs/transformers/training) | PyTorch/TensorFlowの学習ループと`Trainer`APIで🤗Transformersが提供するモデルを使用 |
| [クイックツアー: 微調整/使用方法スクリプト](https://github.com/huggingface/transformers/tree/main/examples) | 様々なタスクでモデルの微調整を行うためのスクリプト例 |
| [モデルの共有とアップロード](https://huggingface.co/docs/transformers/model_sharing) | 微調整したモデルをアップロードしてコミュニティで共有する |
| [マイグレーション](https://huggingface.co/docs/transformers/migration) | `pytorch-transformers`または`pytorch-pretrained-bert`から🤗Transformers に移行する |

## 引用

🤗 トランスフォーマーライブラリに引用できる[論文](https://www.aclweb.org/anthology/2020.emnlp-demos.6/)が出来ました:
```bibtex
@inproceedings{wolf-etal-2020-transformers,
    title = "Transformers: State-of-the-Art Natural Language Processing",
    author = "Thomas Wolf and Lysandre Debut and Victor Sanh and Julien Chaumond and Clement Delangue and Anthony Moi and Pierric Cistac and Tim Rault and Rémi Louf and Morgan Funtowicz and Joe Davison and Sam Shleifer and Patrick von Platen and Clara Ma and Yacine Jernite and Julien Plu and Canwen Xu and Teven Le Scao and Sylvain Gugger and Mariama Drame and Quentin Lhoest and Alexander M. Rush",
    booktitle = "Proceedings of the 2020 Conference on Empirical Methods in Natural Language Processing: System Demonstrations",
    month = oct,
    year = "2020",
    address = "Online",
    publisher = "Association for Computational Linguistics",
    url = "https://www.aclweb.org/anthology/2020.emnlp-demos.6",
    pages = "38--45"
}
```
