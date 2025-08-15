FROM solr:9.9
ENV SOLR_MODULES=extracting
ENV SOLR_HEAP=768m
ENV SOLR_OPTS="-Dsolr.jetty.host=0.0.0.0"

# Opção A
CMD ["bash","-lc","precreate-core textos_pt /opt/solr/server/solr/configsets/_default && exec solr-foreground"]

# (ou) Opção B
# CMD ["bash","-lc","solr-precreate textos_pt /opt/solr/server/solr/configsets/_default && exec solr-foreground"]

