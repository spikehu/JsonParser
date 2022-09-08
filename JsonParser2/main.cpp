#include <iostream>
#include <fstream>
#include "Parser.h"
void test()
{
    std::ifstream fin(("G:\\C++code\\JsonParser2\\test.json"));
    std::string str((std::istreambuf_iterator<char>(fin)),std::istreambuf_iterator<char>());
    json::Parser parser((str));
    std::cout<<parser.parse()["workbench.settings.enableNaturalLanguageSearch"].to_string();
}
int main() {
    test();
    return 0;
}
