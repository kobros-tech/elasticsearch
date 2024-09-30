docker run -d --name shopinvader-elastic-1 \
  -p 9200:9200 -p 9300:9300 \
  -e "discovery.type=single-node" \
  -v /path/to/elasticsearch-config/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  docker.elastic.co/elasticsearch/elasticsearch:7.13.4
