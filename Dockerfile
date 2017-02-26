FROM node:6.10

#Install latex for building pdfs
RUN apt-get update && apt-get install -y build-essential \
                                                  texlive-fonts-recommended \
                                                  texlive-latex-base \
                                                  texlive-latex-recommended \
                                                  texlive-fonts-recommended \
                                                  texlive-fonts-extra \
                                                  rsync

#Install pandoc
RUN wget https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb && \
    dpkg -i pandoc-1.19.2.1-1-amd64.deb

#Install mermaid for rendering diagrams from markdown
RUN npm install -g  raghur/mermaid-filter#e227ecc mermaid phantomjs
