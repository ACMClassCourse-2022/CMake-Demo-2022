# Modern CMake By Example

## 知识点总结

### Makefile

`Makefile` 基本格式：

```makefile
name: dependencies
	commands
```

例如：

```makefile
hello: main.cpp
	$(CXX) -o hello main.cpp # CXX 是 Make 的内置变量
	echo "OK"
```

构建 & 运行命令：

```shell
$ make hello
$ ./hello
```

变量赋值：

```makefile
CC := clang
CXX := clang++ # 可通过 make CXX=g++ 形式覆盖

objects := main.o
```

使用变量：

```makefile
hello: $(objects)
	$(CXX) -o $@ $(objects) # $@ 是自动变量，表示 target 名

main.o: main.cpp
	$(CXX) -c main.cpp
```

Make 可以自动推断 `.o` 文件需要用什么命令从什么文件编译：

```makefile
objects := main.o answer.o

answer: $(objects)
	$(CXX) -o $@ $(objects)

main.o: answer.hpp
answer.o: answer.hpp
```

### CMake

#### Basic

`CMakeLists.txt` 基本格式：

```cmake
cmake_minimum_required(VERSION 3.9)
project(answer)

add_executable(answer main.cpp answer.cpp)
```

生成 & 构建 & 运行命令：

```shell
cmake -B build      # 生成构建目录，-B 指定生成的构建系统代码放在 build 目录
cmake --build build # 执行构建
./build/answer      # 运行 answer 程序
```

#### Library

项目中可以复用的部分可以拆成 library：

```cmake
add_library(libanswer STATIC answer.cpp)
```

`STATIC` 表示 `libanswer` 是个静态库。

使用（链接）library：

```cmake
add_executable(answer main.cpp)
target_link_libraries(answer libanswer)
```

#### Subdirectory

功能独立的模块可以放到单独的子目录：

```
.
├── answer
│  ├── answer.cpp
│  ├── CMakeLists.txt
│  └── include
│     └── answer
│        └── answer.hpp
├── CMakeLists.txt
└── main.cpp
```

```cmake
# CMakeLists.txt
add_subdirectory(answer)

add_executable(answer_app main.cpp)
target_link_libraries(answer_app libanswer) # libanswer 在 answer 子目录中定义
```

```cmake
# answer/CMakeLists.txt
add_library(libanswer STATIC answer.cpp)
target_include_directories(libanswer PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
```

`CMAKE_CURRENT_SOURCE_DIR` 是 CMake 内置变量，表示当前 `CMakeLists.txt` 文件所在目录，此处其实可以省略。

`target_include_directories` 的 `PUBLIC` 参数表示这个包含目录是 `libanswer` 的公开接口一部分，链接 `libanswer` 的 target 可以 `#include` 该目录中的文件。

#### Library

可以链接同一项目中其它子目录中定义的 library：

```cmake
# CMakeLists.txt
add_subdirectory(answer)
add_subdirectory(int2048)
```

```cmake
# answer/CMakeLists.txt
add_library(libanswer STATIC answer.cpp)
target_include_directories(libanswer PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_libraries(libanswer PRIVATE libint)
```

```cmake
# bigint/CMakeLists.txt
set(BASE_STRING "10")
set(DEBUG_MODE On)
add_library(libint STATIC int2048.cpp)
target_include_directories(libint PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_compile_definitions(libint PRIVATE BASE_STRING=${BASE_STRING} DEBUG_MODE="${DEBUG_MODE}")
```

搞清楚项目各模块间的依赖关系很重要。

#### variables

CMake 中创建变量的 Syntax 有以下几种：

- string
  - `set(MyString "Some Text")`
  - `set(MyStringWithVar "Some other Text: ${MyString}")`
  - `set(MyStringWithQuot "Some quote: \"${MyStringWithVar}\"")`
  - `string(APPEND MyStringWithContent " ${MyString}")`
- list
  - `set(MyList "a" "b" "c")`
  - `set(MyList ${MyList} "d")`
  - `list(APPEND MyList "a" "b" "c")`
  - `list(APPEND MyList "d")`
- list of file names
  - `set(MySourcesList "File.name" "File with Space.name")`
  - `list(APPEND MySourcesList "File.name" "File with Space.name")`
  - `add_excutable(MyExeTarget ${MySourcesList})`

要让 C++ 代码能够拿到 CMake 中的变量，可添加编译时宏定义，这会给 C++ 代码提供一个 `BASE_STRING` 宏。

```cmake
target_compile_definitions(libanswer PRIVATE BASE_STRING=${BASE_STRING})
```

#### messages

以下是可行的 message 种类：

```cmake
message(WARNING "Debug mode is on") # NOTICE is the default mode
message(FATAL_ERROR "information") # 中断编译和生成
message(SEND_ERROR "information") # 不中断编译和生成
message(AUTHOR_WARNING "information")
message(DEPRECATION "information")
message(NOTICE "information")
message(STATUS "information")
message(DEBUG "information")
message(TRACE "information") log information
```

#### target_compile_features

可以针对 target 要求编译 feature（即指定要使用 C/C++ 的什么特性）：

```cmake
target_compile_features(libanswer INTERFACE cxx_std_20)
```

和直接设置 `CMAKE_CXX_STANDARD` 的区别：

1. `CMAKE_CXX_STANDARD` 会应用于所有能看到这个变量的 target，而 `target_compile_features` 只应用于单个 target
2. `target_compile_features` 可以指定更细粒度的 C++ 特性，例如 `cxx_auto_type`、`cxx_lambda` 等。

#### make_again

调用 CMake 命令往往需要传很多参数，并且 CMake 生成、CMake 构建的命令都不太相同，要获得比较统一的使用体验，可以在外面包一层 Make：

```makefile
WOLFRAM_APPID :=

.PHONY: build configure run test clean

build: configure
	cmake --build build

configure:
	cmake -B build -DWOLFRAM_APPID=${WOLFRAM_APPID}

run:
	./build/answer_app

clean:
	rm -rf build
```

从而方便在命令行调用：

```shell
$ make build
$ make test
$ make run
$ make clean
```
