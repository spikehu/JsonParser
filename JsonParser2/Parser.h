//
// Created by ASUS on 2022/9/7.
//

#ifndef JSONPARSER2_PARSER_H
#define JSONPARSER2_PARSER_H
#include "JObject.h"

namespace json
{
    class Parser {
    private:
        std::string m_str;
        int m_idx;
    public:
        Parser() = default;
        Parser(std::string& str);
        JObject parse();
        JObject parse_number();
        JObject parse_null();
        JObject parse_string();
        JObject parse_bool();
        JObject parse_dict();
        JObject parse_list();
        void get_next_token();//直接跳过所有的空格 达到下一个解析的第一个字符
        bool is_end_quote(int index);
    };
}


#endif //JSONPARSER2_PARSER_H
