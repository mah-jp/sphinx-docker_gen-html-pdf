## Ref: https://github.com/sphinx-doc/sphinx-docker-images/blob/master/base/Dockerfile
#FROM sphinxdoc/sphinx:latest
# Ref: https://github.com/sphinx-doc/sphinx-docker-images/blob/master/latexpdf/Dockerfile
FROM sphinxdoc/sphinx-latexpdf:latest

# PlantUML用にJavaなどをインストール
RUN apt-get update \
	&& apt-get install -y openjdk-17-jre-headless wget texlive-font-utils fonts-noto-cjk fonts-noto-cjk-extra

## Mermaid用にchromiumなどをインストール
RUN apt-get install -y npm chromium

# apt-get関係の掃除
RUN apt-get autoremove \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

# PlantUMLのインストール
RUN mkdir -p /opt/plantuml && wget -O /opt/plantuml/plantuml.jar http://sourceforge.net/projects/plantuml/files/plantuml.jar/download

# Mermaidのインストール
RUN npm install -g @mermaid-js/mermaid-cli

ENV DIR_ME='/opt/sphinx-custom'
#ENV LANG='ja_JP.UTF-8'
ENV TZ='Asia/Tokyo'

WORKDIR /docs
COPY ./requirements.txt $DIR_ME/
RUN pip3 install --no-cache-dir -r $DIR_ME/requirements.txt
COPY ./make-for-dockercompose.sh $DIR_ME/

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "$DIR_ME/make-for-dockercompose.sh"]
