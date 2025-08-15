FROM solr:9.9

ENV SOLR_MODULES=extracting
# Heap baixo + limites de memória off-heap
ENV SOLR_HEAP=160m
ENV SOLR_ULIMIT_CHECKS=false
ENV SOLR_OPTS="-Dsolr.jetty.host=0.0.0.0 \
 -XX:+UseSerialGC \
 -XX:MaxDirectMemorySize=32m \
 -XX:MaxMetaspaceSize=96m \
 -XX:+ExitOnOutOfMemoryError"

CMD ["bash","-lc","precreate-core textos_pt /opt/solr/server/solr/configsets/_default && exec solr-foreground"]


