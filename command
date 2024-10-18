docker run -d --name shopinvader-elastic-1 \
  -p 9200:9200 -p 9300:9300 \
  -e "discovery.type=single-node" \
  -v /path/to/elasticsearch-config/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  docker.elastic.co/elasticsearch/elasticsearch:7.13.4
  
  
==================================================
  
To resolve yellow status:
-------------------------
curl -u elastic:your_elastic_password -X PUT "http://localhost:9200/elastic_engine2_product_category_en_us-5/_settings" -H 'Content-Type: application/json' -d '{"index": {"number_of_replicas": 0}}'
curl -u elastic:your_elastic_password -X PUT "http://localhost:9200/elastic_engine2_product_variant_en_us-6/_settings" -H 'Content-Type: application/json' -d '{"index": {"number_of_replicas": 0}}'
curl -u elastic:your_elastic_password -X PUT "http://localhost:9200/elastic_engine2_product_variant_en_us-6/_settings" -H 'Content-Type: application/json' -d '{"index": {"number_of_replicas": 0}}'


monitor health:
---------------
curl -u elastic:your_elastic_password -X GET "http://localhost:9200/_cat/health?v"


