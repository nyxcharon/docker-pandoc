# docker-pandoc  

This is for using pandoc to generate pdf's,html,etc from markdown,latek,etc.
This image does provide latek support. As such **this image is large, about 3GB**

### Usage
```
docker run -it -v $(pwd):/code nyxcharon/pandoc bash -c "cd /code && pandoc -F mermaid-filter -f markdown_github -t latex -o  test.pdf  file.md"
```
