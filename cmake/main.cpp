#include <iostream>
#include <one/one.h>

int main(void)
{
    std::cout << "Hello, world." << std::endl;
    std::cout << __GNUC__ << std::endl;
    std::cout << __cplusplus  << std::endl;
    std::cout << get_int_value()  << std::endl;
}
