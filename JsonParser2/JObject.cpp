//
// Created by spikeHu on 2022/9/7.
//

#include <sstream>
#include "JObject.h"

namespace json {
    std::string JObject::to_string() {
        std::ostringstream os;
        switch (j_type) {
            case NULL_T:
                os << "null";
                break;
            case INT_T:
                os << getVal<int_t>();
                break;
            case BOOL_T:
                if (getVal<bool_t>())
                    os << "true";
                else
                    os << "false";
                break;
            case DOUBLE_T:
                os << getVal<double_t>();
                break;
            case LIST_T: {
                os << "[";
                list_t &list = getVal<list_t>();
                for (int i = 0; i < list.size(); i++) {
                    os << list[i].to_string();
                    if (i != list.size() - 1)os << ",";
                }
                os<<"]";
            }
                break;
            case DICT_T:

            {
                os<<"{";
                dict_t &dict = getVal<dict_t>();
                for(dict_t::iterator it = dict.begin(); it!=dict.end();it++)
                {
                    if(it!=dict.begin())
                    {
                        os<<",";
                    }
                    os<<it->first;
                    os<<":";
                    os<<it->second.to_string();
                }
                os<<"}";
            }
                break;
            case STRING_T:
                os<<"\""<<getVal<string_t>()<<"\"";
                break;
            default:
                break;
        }
        return os.str();

    }

    JObject &JObject::operator[](const std::string &key) {
        if (j_type == DICT_T) {
            auto &dict = getVal<dict_t>();
            return dict[key];
        }
        throw std::logic_error("wrong key or not a dict_t type.");
    }

    template<class T>
    T &JObject::getVal() {
        return *((T *) (std::get_if<T>(&j_val)));
    }

    void JObject::push_back(const JObject &item) {
        if (j_type == LIST_T) {
            list_t &list = getVal<list_t>();
            list.push_back(item);
            return;
        }
        throw std::logic_error("not a list type.");
    }
}