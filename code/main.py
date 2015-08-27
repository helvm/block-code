
from __future__ import print_function
import sys
import json
import yaml

from pycparser import c_parser



def toValue(self):
	node_dict = {}
	node_dict["nodenames"] = self.__class__.__name__

	
	attr_names = {}
	for n in self.attr_names:
		attr_names[n] = getattr(self,n)
	node_dict["attr_names"]	= attr_names
	
	children_array = []
	for (child_key, child) in self.children():
		child_value = toValue(child)
		child_dict = [child_key, child_value]
		
		children_array += child_dict
	
	node_dict["children"] = children_array
	
	return node_dict

def main(name):
    path_code = '../src/' + name
    path_out = '../out/' + name
    with open (path + ".c", "r") as myfile:
        code=myfile.read().replace('\n', '')

    parser = c_parser.CParser()
    ast = parser.parse(code)
    value = toValue(ast)
    with open(path_out + '.js', 'w') as outfile:
        json.dump(value, outfile, indent=2)

#    with open(path_out + '.yml', 'w') as outfile:
#       outfile.write( yaml.dump(value, default_flow_style=False) )
	

if __name__ == "__main__":
    if len(sys.argv) > 1:
		main(sys.argv[0])
    else:
        #main('hw')	
        main('tpk')	

