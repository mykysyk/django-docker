# ベース・イメージ を指定
FROM python:3-alpine
# コンテナ内の環境変数
ENV PYTHONUNBUFFERED 1
# コンテナ内でコマンド実行
RUN mkdir /code
# コンテナ内の作業ディレクトリ
WORKDIR /code
# ホストからコンテナ内にコピー
COPY requirements.txt /code/
# コンテナ内のpipを最新のものにする
RUN pip install --upgrade pip
# コンテナ内でPythonライブラリを一括インストール
RUN pip install -r requirements.txt
