cmake_minimum_required(VERSION 3.10)

# Название проекта
project(HelloWorld VERSION 1.0 LANGUAGES CXX)

# Устанавливаем стандарт C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Главный исполняемый файл
add_executable(helloworld src/main.cpp src/version.cpp)

# Добавляем путь к заголовочным файлам
include_directories(${CMAKE_SOURCE_DIR}/src)

# Подключаем тестирование
enable_testing()

# Подключаем Google Test
add_subdirectory(third_party/googletest-main)

# Тесты
add_executable(test_version tests/test_version.cpp src/version.cpp)
target_link_libraries(test_version gtest gtest_main)

# Регистрируем тесты
add_test(NAME VersionTest COMMAND test_version)
