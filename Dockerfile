# Docker imageのbase imageを指定する
# Docker Hubに公開されている
# Goのランタイムがインストールされているイメージを指定する
FROM golang:1.9

RUN mkdir /echo
# hostのファイルをDockerコンテナにコピー
COPY main.go /echo

# コンテナの起動時に実行される
CMD ["go", "run", "/echo/main.go"]