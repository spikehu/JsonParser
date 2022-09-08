//
// Created by ASUS on 2022/9/7.
//

#include <iostream>
#include "Parser.h"

json::Parser::Parser(std::string& str) {
    m_str = str;
    m_idx = 0;
}

void json::Parser::get_next_token() {
    while (isspace(m_str[m_idx]))m_idx++;
}

json::JObject json::Parser::parse() {
    get_next_token();
    switch (m_str[m_idx]) {
        case 'n':
            return parse_null();
        case 't':
            return parse_bool();
        case 'f':
            return parse_bool();
        case '[':
            return parse_list();
        case '{':
            return parse_dict();
        case '\"':
            return parse_string();
        default://解析数字
            return parse_number();
    }

}

json::JObject json::Parser::parse_string() {
    //找到最后的引号的位置
    int firstPo = ++m_idx;
    int endQuote = m_str.find('"', m_idx);
    while (true) {
        if (is_end_quote(endQuote)) {
            break;
        }
        endQuote = m_str.find('"', endQuote + 1);
        if (endQuote == std::string::npos)throw std::logic_error("not json type:parse_string()");

    }
    m_idx = endQuote + 1;

    return m_str.substr(firstPo, endQuote - firstPo);
}

json::JObject json::Parser::parse_dict() {
    m_idx++;
    dict_t dict;
    if(m_str[m_idx]=='}')return dict;
    while(true)
    {
        get_next_token();
        if(m_str[m_idx]!='\"')throw std::logic_error("not a dict type(key is not a string):parse_dict()");
        //取得key
        std::string key = parse().to_string();
        key = key.substr(1,key.size()-2);
        //得到value
        get_next_token();
        if(m_str[m_idx] != ':')throw std::logic_error("not a dict type:parse_dict()");
        m_idx++;
        dict[key] = parse();
        //std::cout<<key<<std::endl;
        get_next_token();
        if(m_str[m_idx] =='}')return dict;
        if(m_str[m_idx] == ',')
        {
            m_idx++;
            continue;
        }
        throw std::logic_error("wrong dict type:parse_dict()");






    }
    return JObject();
}

json::JObject json::Parser::parse_list() {
    m_idx++;
    list_t list;
    if (m_str[m_idx] == ']') {
        return list;
    }
    while (true) {
        get_next_token();
        list.push_back(parse());
        if (m_str[m_idx] == ',') {
            m_idx++;
            continue;
        }
        if (m_str[m_idx] == ']') {
            m_idx++;
            return list;
        }

    }
}

json::JObject json::Parser::parse_number() {
    //可能是int 11111 也可能是double 类型 a.b
    int numStartPos = m_idx;
    while(isdigit(m_str[m_idx]))
    {
        m_idx++;
    }
    if(m_str[m_idx]!='.')
    {
       return  (int)strtol(&m_str[numStartPos], nullptr,10);
    }
    if(m_str[m_idx]=='.'&& isdigit(m_str[m_idx+1]))
    {
        m_idx++;
        while(isdigit(m_str[m_idx]))m_idx++;
        return strtod(&m_str[numStartPos], nullptr);
    }
    throw std::logic_error("not a correct number type.");
}

json::JObject json::Parser::parse_bool() {
    if (m_str.compare(m_idx, 5, "false") == 0) {
        m_idx += 5;
        return false;
    }
    if (m_str.compare(m_idx, 4, "true") == 0) {
        m_idx += 4;
        return true;
    }
    throw std::logic_error("not a json type:parse_bool");
}

json::JObject json::Parser::parse_null() {
    if (m_str.compare(m_idx, 4, "null") == 0) {
        m_idx += 4;
        return {};
    }
    throw std::logic_error("not a json type:parse_null");
}

bool json::Parser::is_end_quote(int index) {
    //计算"前面的转义字符的个数
    int cnt = 0;
    index--;
    while (m_str[index] == '\\') {
        index--;
        cnt++;
    }
    return (cnt % 2) == 0;
}

