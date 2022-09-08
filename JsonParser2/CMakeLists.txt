cmake_minimum_required(VERSION 3.19)
project(JsonParser2)

set(CMAKE_CXX_STANDARD 17)

add_executable(JsonParser2 main.cpp JObject.cpp JObject.h Parser.cpp Parser.h)