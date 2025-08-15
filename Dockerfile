FROM solr:9.9
ENV SOLR_MODULES=extracting
# garante bind público dentro do container
ENV SOLR_OPTS="-Dsolr.jetty.host=0.0.0.0"
CMD ["bash","-lc","solr-precreate textos_pt _default && exec solr-foreground"]

