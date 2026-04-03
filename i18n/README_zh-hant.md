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
A useful guide for English-Traditional Chinese translation of Hugging Face documentation
- Add space around English words and numbers when they appear between Chinese characters. E.g., 共 100 多種語言; 使用 transformers 函式庫。
- Use square quotes, e.g.,「引用」
- Some of terms in the file can be found at National Academy for Educational Research (https://terms.naer.edu.tw/), an official website providing bilingual translations between English and Traditional Chinese.

Dictionary

API: API (不翻譯）
add: 加入
checkpoint: 檢查點
code: 程式碼
community: 社群
confidence: 信賴度
dataset: 資料集
documentation: 文件
example: 基本翻譯為「範例」，或依語意翻為「例子」
finetune: 微調
Hugging Face: Hugging Face（不翻譯）
implementation: 實作
inference: 推論
library: 函式庫
module: 模組
NLP/Natural Language Processing: 以 NLP 出現時不翻譯，以 Natural Language Processing 出現時翻譯為自然語言處理
online demos: 線上Demo
pipeline: pipeline（不翻譯）
pretrained/pretrain: 預訓練
Python data structures (e.g., list, set, dict): 翻譯為串列，集合，字典，並用括號標註原英文
repository: repository（不翻譯）
summary: 概覽
token-: token-（不翻譯）
Trainer: Trainer（不翻譯）
transformer: transformer（不翻譯）
tutorial: 教學
user: 使用者
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
        <b>繁體中文</b> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_ko.md">한국어</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_es.md">Español</a> |
        <a href="https://github.com/huggingface/transformers/blob/main/i18n/README_ja.md">日本語</a> |
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
    <p>為 Jax、PyTorch 以及 TensorFlow 打造的先進自然語言處理函式庫</p>
</h3>

<h3 align="center">
    <a href="https://hf.co/course"><img src="https://huggingface.co/datasets/huggingface/documentation-images/resolve/main/course_banner.png"></a>
</h3>

🤗 Transformers 提供了數以千計的預訓練模型，支援 100 多種語言的文本分類、資訊擷取、問答、摘要、翻譯、文本生成。它的宗旨是讓最先進的 NLP 技術人人易用。

🤗 Transformers 提供了便於快速下載和使用的API，讓你可以將預訓練模型用在給定文本、在你的資料集上微調然後經由 [model hub](https://huggingface.co/models) 與社群共享。同時，每個定義的 Python 模組架構均完全獨立，方便修改和快速研究實驗。

🤗 Transformers 支援三個最熱門的深度學習函式庫： [Jax](https://jax.readthedocs.io/en/latest/), [PyTorch](https://pytorch.org/) 以及 [TensorFlow](https://www.tensorflow.org/) — 並與之完美整合。你可以直接使用其中一個框架訓練你的模型，然後用另一個載入和推論。

## 線上Demo

你可以直接在 [model hub](https://huggingface.co/models) 上測試大多數的模型。我們也提供了 [私有模型託管、模型版本管理以及推論API](https://huggingface.co/pricing)。

這裡是一些範例：
- [用 BERT 做遮蓋填詞](https://huggingface.co/google-bert/bert-base-uncased?text=Paris+is+the+%5BMASK%5D+of+France)
- [用 Electra 做專有名詞辨識](https://huggingface.co/dbmdz/electra-large-discriminator-finetuned-conll03-english?text=My+name+is+Sarah+and+I+live+in+London+city)
- [用 GPT-2 做文本生成](https://huggingface.co/openai-community/gpt2?text=A+long+time+ago%2C+)
- [用 RoBERTa 做自然語言推論](https://huggingface.co/FacebookAI/roberta-large-mnli?text=The+dog+was+lost.+Nobody+lost+any+animal)
- [用 BART 做文本摘要](https://huggingface.co/facebook/bart-large-cnn?text=The+tower+is+324+metres+%281%2C063+ft%29+tall%2C+about+the+same+height+as+an+81-storey+building%2C+and+the+tallest+structure+in+Paris.+Its+base+is+square%2C+measuring+125+metres+%28410+ft%29+on+each+side.+During+its+construction%2C+the+Eiffel+Tower+surpassed+the+Washington+Monument+to+become+the+tallest+man-made+structure+in+the+world%2C+a+title+it+held+for+41+years+until+the+Chrysler+Building+in+New+York+City+was+finished+in+1930.+It+was+the+first+structure+to+reach+a+height+of+300+metres.+Due+to+the+addition+of+a+broadcasting+aerial+at+the+top+of+the+tower+in+1957%2C+it+is+now+taller+than+the+Chrysler+Building+by+5.2+metres+%2817+ft%29.+Excluding+transmitters%2C+the+Eiffel+Tower+is+the+second+tallest+free-standing+structure+in+France+after+the+Millau+Viaduct)
- [用 DistilBERT 做問答](https://huggingface.co/distilbert/distilbert-base-uncased-distilled-squad?text=Which+name+is+also+used+to+describe+the+Amazon+rainforest+in+English%3F&context=The+Amazon+rainforest+%28Portuguese%3A+Floresta+Amaz%C3%B4nica+or+Amaz%C3%B4nia%3B+Spanish%3A+Selva+Amaz%C3%B3nica%2C+Amazon%C3%ADa+or+usually+Amazonia%3B+French%3A+For%C3%AAt+amazonienne%3B+Dutch%3A+Amazoneregenwoud%29%2C+also+known+in+English+as+Amazonia+or+the+Amazon+Jungle%2C+is+a+moist+broadleaf+forest+that+covers+most+of+the+Amazon+basin+of+South+America.+This+basin+encompasses+7%2C000%2C000+square+kilometres+%282%2C700%2C000+sq+mi%29%2C+of+which+5%2C500%2C000+square+kilometres+%282%2C100%2C000+sq+mi%29+are+covered+by+the+rainforest.+This+region+includes+territory+belonging+to+nine+nations.+The+majority+of+the+forest+is+contained+within+Brazil%2C+with+60%25+of+the+rainforest%2C+followed+by+Peru+with+13%25%2C+Colombia+with+10%25%2C+and+with+minor+amounts+in+Venezuela%2C+Ecuador%2C+Bolivia%2C+Guyana%2C+Suriname+and+French+Guiana.+States+or+departments+in+four+nations+contain+%22Amazonas%22+in+their+names.+The+Amazon+represents+over+half+of+the+planet%27s+remaining+rainforests%2C+and+comprises+the+largest+and+most+biodiverse+tract+of+tropical+rainforest+in+the+world%2C+with+an+estimated+390+billion+individual+trees+divided+into+16%2C000+species)
- [用 T5 做翻譯](https://huggingface.co/google-t5/t5-base?text=My+name+is+Wolfgang+and+I+live+in+Berlin)

**[Write With Transformer](https://transformer.huggingface.co)**，由 Hugging Face 團隊所打造，是一個文本生成的官方 demo。

## 如果你在尋找由 Hugging Face 團隊所提供的客製化支援服務

<a target="_blank" href="https://huggingface.co/support">
    <img alt="HuggingFace Expert Acceleration Program" src="https://huggingface.co/front/thumbnails/support.png" style="max-width: 600px; border: 1px solid #eee; border-radius: 4px; box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);">
</a><br>

## 快速上手

我們為快速使用模型提供了 `pipeline` API。 Pipeline 包含了預訓練模型和對應的文本預處理。下面是一個快速使用 pipeline 去判斷正負面情緒的例子：

```python
>>> from transformers import pipeline

# 使用情緒分析 pipeline
>>> classifier = pipeline('sentiment-analysis')
>>> classifier('We are very happy to introduce pipeline to the transformers repository.')
[{'label': 'POSITIVE', 'score': 0.9996980428695679}]
```

第二行程式碼下載並快取 pipeline 使用的預訓練模型，而第三行程式碼則在給定的文本上進行了評估。這裡的答案“正面” (positive) 具有 99.97% 的信賴度。

許多的 NLP 任務都有隨選即用的預訓練 `pipeline`。例如，我們可以輕鬆地從給定文本中擷取問題答案：

``` python
>>> from transformers import pipeline

# 使用問答 pipeline
>>> question_answerer = pipeline('question-answering')
>>> question_answerer({
...     'question': 'What is the name of the repository ?',
...     'context': 'Pipeline has been included in the huggingface/transformers repository'
... })
{'score': 0.30970096588134766, 'start': 34, 'end': 58, 'answer': 'huggingface/transformers'}

```

除了提供問題解答，預訓練模型還提供了對應的信賴度分數以及解答在 tokenized 後的文本中開始和結束的位置。你可以從[這個教學](https://huggingface.co/docs/transformers/task_summary)了解更多 `pipeline` API支援的任務。

要在你的任務中下載和使用任何預訓練模型很簡單，只需三行程式碼。這裡是 PyTorch 版的範例：
```python
>>> from transformers import AutoTokenizer, AutoModel

>>> tokenizer = AutoTokenizer.from_pretrained("google-bert/bert-base-uncased")
>>> model = AutoModel.from_pretrained("google-bert/bert-base-uncased")

>>> inputs = tokenizer("Hello world!", return_tensors="pt")
>>> outputs = model(**inputs)
```
這裡是對應的 TensorFlow 程式碼：
```python
>>> from transformers import AutoTokenizer, TFAutoModel

>>> tokenizer = AutoTokenizer.from_pretrained("google-bert/bert-base-uncased")
>>> model = TFAutoModel.from_pretrained("google-bert/bert-base-uncased")

>>> inputs = tokenizer("Hello world!", return_tensors="tf")
>>> outputs = model(**inputs)
```

Tokenizer 為所有的預訓練模型提供了預處理，並可以直接轉換單一字串（比如上面的例子）或串列 (list)。它會輸出一個的字典 (dict) 讓你可以在下游程式碼裡使用或直接藉由 `**` 運算式傳給模型。

模型本身是一個常規的 [Pytorch `nn.Module`](https://pytorch.org/docs/stable/nn.html#torch.nn.Module) 或 [TensorFlow `tf.keras.Model`](https://www.tensorflow.org/api_docs/python/tf/keras/Model)（取決於你的後端），可依常規方式使用。 [這個教學](https://huggingface.co/transformers/training.html)解釋了如何將這樣的模型整合到一般的 PyTorch 或 TensorFlow 訓練迴圈中，或是如何使用我們的 `Trainer` API 在一個新的資料集上快速進行微調。

## 為什麼要用 transformers？

1. 便於使用的先進模型：
    - NLU 和 NLG 上性能卓越
    - 對教學和實作友好且低門檻
    - 高度抽象，使用者只須學習 3 個類別
    - 對所有模型使用的制式化API

1. 更低的運算成本，更少的碳排放：
    - 研究人員可以分享已訓練的模型而非每次從頭開始訓練
    - 工程師可以減少計算時間以及生產成本
    - 數十種模型架構、兩千多個預訓練模型、100多種語言支援

1. 對於模型生命週期的每一個部分都面面俱到：
    - 訓練先進的模型，只需 3 行程式碼
    - 模型可以在不同深度學習框架之間任意轉換
    - 為訓練、評估和生產選擇最適合的框架，並完美銜接

1. 為你的需求輕鬆客製化專屬模型和範例：
    - 我們為每種模型架構提供了多個範例來重現原論文結果
    - 一致的模型內部架構
    - 模型檔案可單獨使用，便於修改和快速實驗

## 什麼情況下我不該用 transformers？

- 本函式庫並不是模組化的神經網絡工具箱。模型文件中的程式碼並未做額外的抽象封裝，以便研究人員快速地翻閱及修改程式碼，而不會深陷複雜的類別包裝之中。
- `Trainer` API 並非相容任何模型，它只為本函式庫中的模型最佳化。對於一般的機器學習用途，請使用其他函式庫。
- 儘管我們已盡力而為，[examples 目錄](https://github.com/huggingface/transformers/tree/main/examples)中的腳本也僅為範例而已。對於特定問題，它們並不一定隨選即用，可能需要修改幾行程式碼以符合需求。

## 安裝

### 使用 pip

這個 Repository 已在 Python 3.9+、Flax 0.4.1+、PyTorch 2.1+ 和 TensorFlow 2.6+ 下經過測試。

你可以在[虛擬環境](https://docs.python.org/3/library/venv.html)中安裝 🤗 Transformers。如果你還不熟悉 Python 的虛擬環境，請閱此[使用者指引](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/)。

首先，用你打算使用的版本的 Python 創建一個虛擬環境並進入。

然後，你需要安裝 Flax、PyTorch 或 TensorFlow 其中之一。對於該如何在你使用的平台上安裝這些框架，請參閱 [TensorFlow 安裝頁面](https://www.tensorflow.org/install/), [PyTorch 安裝頁面](https://pytorch.org/get-started/locally/#start-locally) 或 [Flax 安裝頁面](https://github.com/google/flax#quick-install)。

當其中一個後端安裝成功後，🤗 Transformers 可依此安裝：

```bash
pip install transformers
```

如果你想要試試範例或者想在正式發布前使用最新開發中的程式碼，你必須[從原始碼安裝](https://huggingface.co/docs/transformers/installation#installing-from-source)。

### 使用 conda

🤗 Transformers 可以藉由 conda 依此安裝：

```shell script
conda install conda-forge::transformers
```

> **_筆記:_** 從 `huggingface` 頻道安裝 `transformers` 已被淘汰。

要藉由 conda 安裝 Flax、PyTorch 或 TensorFlow 其中之一，請參閱它們各自安裝頁面的說明。

## 模型架構

**🤗 Transformers 支援的[所有的模型檢查點](https://huggingface.co/models)**，由[使用者](https://huggingface.co/users)和[組織](https://huggingface.co/organizations)上傳，均與 huggingface.co [model hub](https://huggingface.co) 完美結合。

目前的檢查點數量： ![](https://img.shields.io/endpoint?url=https://huggingface.co/api/shields/models&color=brightgreen)

🤗 Transformers 目前支援以下的架構: 模型概覽請參閱[這裡](https://huggingface.co/docs/transformers/model_summary).

要檢查某個模型是否已有 Flax、PyTorch 或 TensorFlow 的實作，或其是否在🤗 Tokenizers 函式庫中有對應的 tokenizer，敬請參閱[此表](https://huggingface.co/docs/transformers/index#supported-frameworks)。

這些實作均已於多個資料集測試（請參閱範例腳本）並應與原版實作表現相當。你可以在範例文件的[此節](https://huggingface.co/docs/transformers/examples)中了解實作的細節。


## 了解更多

| 章節 | 描述 |
|-|-|
| [文件](https://huggingface.co/transformers/) | 完整的 API 文件和教學 |
| [任務概覽](https://huggingface.co/docs/transformers/task_summary) | 🤗 Transformers 支援的任務 |
| [預處理教學](https://huggingface.co/docs/transformers/preprocessing) | 使用 `Tokenizer` 來為模型準備資料 |
| [訓練和微調](https://huggingface.co/docs/transformers/training) | 使用 PyTorch/TensorFlow 的內建的訓練方式或於 `Trainer` API 中使用 🤗 Transformers 提供的模型 |
| [快速上手：微調和範例腳本](https://github.com/huggingface/transformers/tree/main/examples) | 為各種任務提供的範例腳本 |
| [模型分享和上傳](https://huggingface.co/docs/transformers/model_sharing) | 上傳並與社群分享你微調的模型 |
| [遷移](https://huggingface.co/docs/transformers/migration) | 從 `pytorch-transformers` 或 `pytorch-pretrained-bert` 遷移到 🤗 Transformers |

## 引用

我們已將此函式庫的[論文](https://www.aclweb.org/anthology/2020.emnlp-demos.6/)正式發表。如果你使用了 🤗 Transformers 函式庫，可以引用：
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
