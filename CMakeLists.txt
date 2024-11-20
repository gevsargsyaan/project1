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


# Настройка CPack
include(CPack)

set(CPACK_GENERATOR "DEB")  # Указываем генератор для deb-пакетов
set(CPACK_PACKAGE_NAME "helloworld")  # Имя пакета
set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})  # Версия пакета
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "gevsargsyaan")  # Ваше имя или email
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Hello World application")  # Описание
set(CPACK_DEBIAN_PACKAGE_SECTION "utils")  # Секция (категория пакета)
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")  # Приоритет пакета
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "amd64")  # Архитектура
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.27)")  # Зависимости
