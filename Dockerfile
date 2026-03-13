FROM apache/age:latest
USER postgres
CMD ["postgres", \
     "-c", "shared_preload_libraries=age", \
     "-c", "listen_addresses=*", \
     "-c", "search_path=ag_catalog,\"$user\",public"]
