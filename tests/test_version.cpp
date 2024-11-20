//#include <gtest/gtest.h>
#include <gtest/gtest.h>
#include "version.h"

// Проверка, что версия больше 0
TEST(VersionTest, VersionIsPositive) {
    ASSERT_GT(VERSION, 0);
}

// Проверка, что версия — целое число
TEST(VersionTest, VersionIsInteger) {
    ASSERT_EQ(VERSION, static_cast<int>(VERSION));
}
