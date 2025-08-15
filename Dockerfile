FROM solr:9.9

# Ativa Tika (ExtractingRequestHandler)
ENV SOLR_MODULES=extracting

# Heap enxuto para fly machine pequena (512 MB)
# (o image oficial respeita SOLR_HEAP)
ENV SOLR_HEAP=512m

# Garante bind público
ENV SOLR_OPTS="-Dsolr.jetty.host=0.0.0.0"

# Cria o core e fica em foreground (log visível)
CMD ["bash","-lc","solr-precreate textos_pt _default && exec solr-foreground"]
