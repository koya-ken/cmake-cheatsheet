# start for docker-machine

power shell
```
docker-machine start
docker-machine env | Invoke-Expression
docker-compose run --rm app
```

shell
```
docker-machine start
docker-machine env | eval
docker-compose run --rm app
```

# start for docker

```
docker-compose run --rm app
```


# test

https://qiita.com/shohirose/items/637f4b712893764a7ec1
https://qiita.com/modapone/items/8f97425b6167cffc815c
https://elda27.hatenablog.com/entry/2016/11/29/235301
https://github.com/continental/fineftp-server/blob/master/fineftp-server/CMakeLists.txt

# dump compiler defines

https://stackoverflow.com/questions/2224334/gcc-dump-preprocessor-defines

# c

```
gcc -dM -E - < /dev/null
clang -dM -E - < /dev/null
```

## cpp
```
g++ -dM -E -x c++ - < /dev/null
clang++ -dM -E -x c++ - < /dev/null
```

# stdcallについて

64bitでは呼び出し方がstdcallでもcdeclでもない
アーキテクチャで変わってくる模様
https://ameblo.jp/reverse-eg-mal-memo/entry-12608477931.html
