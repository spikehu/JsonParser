//
// Created by ASUS on 2022/9/7.
//

#ifndef JSONPARSER2_JOBJECT_H
#define JSONPARSER2_JOBJECT_H

/***
 * json 类型有 int double string null dict list bool
 *
 */
#include <string>
#include <map>
#include <vector>
#include <variant>

namespace json {


    class JObject;

    enum Valtype {
        NULL_T,
        BOOL_T,
        STRING_T,
        DICT_T,
        LIST_T,
        DOUBLE_T,
        INT_T
    };

    using int_t = int;
    using string_t = std::string;
    using double_t = double;
    using dict_t = std::map<std::string, JObject>;
    using null_t = std::string;
    using list_t = std::vector<JObject>;
    using bool_t = bool;

    using value_t = std::variant<int_t, string_t, double_t, dict_t, list_t, bool_t>;

    class JObject {
    private:
        Valtype j_type;
        value_t j_val;
    public:

        JObject()//默认构造函数为null
        {
            j_type = NULL_T;
            j_val = "null";
        }

        JObject(const bool_t val) {
            j_val = val;
            j_type = BOOL_T;
        }

        JObject(const string_t &str) {
            j_val = str;
            j_type = STRING_T;
        }

        JObject(const int_t val) {
            j_val = val;
            j_type = INT_T;
        }

        JObject(const double_t val) {
            j_val = val;
            j_type = DOUBLE_T;
        }

        JObject(const dict_t &val) {
            j_val = val;
            j_type = DICT_T;
        }

        JObject(const list_t &val) {
            j_val = val;
            j_type = LIST_T;
        }


        //如果是list类型 需要一个push_back
        void push_back(const JObject &item);

        //如果是dict_t 需要重写操作符 []
        JObject &operator[](const std::string &key);

        //获得实际的值
        template<class T>
        T &getVal();

        //将JObject变成字符串
        std::string to_string();
    };


}


#endif //JSONPARSER2_JOBJECT_H
