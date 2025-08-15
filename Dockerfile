FROM solr:9.9
# Ativa o módulo Apache Tika (extracting)
ENV SOLR_MODULES=extracting
# Cria o core 'textos_pt' e inicia o Solr
CMD ["bash","-lc","solr-precreate textos_pt _default && exec solr-foreground"]
