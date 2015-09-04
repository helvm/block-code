
from __future__ import print_function
import sys
import re
import json
import yaml

from pycparser import c_parser

type_dict = {
  'void': '',

  'char': 'byte',
  'signed_char': 'sbyte',
  'unsigned_char': 'ubyte',

  'short' : 'hint',
  'int' : 'int',
  'long' : 'dint',

  'signed_short_int' : 'shint',
  'short_signed_int' : 'shint',
  'signed_int' : 'sint',
  'signed_long_int' : 'sdint',
  'long_signed_int' : 'sdint',

  'unsigned_short_int' : 'uhint',
  'short_unsigned_int' : 'uhint',
  'unsigned_int' : 'sint',
  'unsigned_long_int' : 'udint',
  'long_unsigned_int' : 'udint',

  'float' : 'real',
  'double' : 'dreal',
  'long_double' : 'ereal',
  'bool' : 'bit'
}

class_name_dict = {
    "FileAST": "Node",
    "IdentifierType": "IdType",
    "Assignment": "Assign",
    "Constant": "Const"
}

def main(name):
    path_src = '../src/' + name
    path_dest = '../js/' + name
    with open (path_src + ".c", "r") as myfile:
        code=myfile.read().replace('\n', '')

    parser = c_parser.CParser()
    ast = parser.parse(code)
    value = toValue(ast)
    with open(path_dest + '.js', 'w') as outfile:
        json.dump(value, outfile, indent=2)

#    with open(path_out + '.yml', 'w') as outfile:
#       outfile.write( yaml.dump(value, default_flow_style=False) )



#c_ast.py
def toValue(self):
    node_dict = {}
    self_class_name = self.__class__.__name__
    class_name = class_name_dict[self_class_name] if self_class_name in class_name_dict else self_class_name.replace('Func', 'Sub').replace('Ptr', 'Add').replace('Call', 'Goto')

    node_dict["class_name"] = class_name

    attrs = {}
    for n in self.attr_names:
        attr = getattr(self,n)
        if attr:
            attrs[n] = attr

    if class_name == 'IdType':
        attrs = convert_type_names(attrs)

    if attrs:
        node_dict["attrs"]  = attrs

    children_dict = {}
    children_list = []
    pattern = '\d+'
    for (child_key, child) in self.children():
        r = re.search(pattern, child_key)
        value = toValue(child)
        if r:
            group = r.group()
            index = int(group)
            children_list.insert (index, value)
        else:
            children_dict[child_key] = value

    if children_dict:
        node_dict["children"] = children_dict

    if children_list:
        node_dict["list"] = children_list

    return node_dict

def convert_type_names(attr):
    names = attr['names']
    del attr['names']
    key = '_'.join(names)
    name = type_dict[key]
    attr['name'] = name
    return attr

if __name__ == "__main__":
    if len(sys.argv) > 1:
        main(sys.argv[0])
    else:
        main('hw')
        main('tpk')

