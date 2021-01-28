# build
```
docker build -t myprofiler .
```

# run 

```
docker run -it --rm myprofiler
```

 - with specified host
```
docker run -it --rm -e MYPROFILER_HOST=mydb myprofiler
```
