{
 "nodenames": "FileAST", 
 "attr_names": {}, 
 "children": [
  "ext[0]", 
  {
   "nodenames": "FuncDef", 
   "attr_names": {}, 
   "children": [
    "decl", 
    {
     "nodenames": "Decl", 
     "attr_names": {
      "quals": [], 
      "funcspec": [], 
      "storage": [], 
      "name": "main"
     }, 
     "children": [
      "type", 
      {
       "nodenames": "FuncDecl", 
       "attr_names": {}, 
       "children": [
        "type", 
        {
         "nodenames": "TypeDecl", 
         "attr_names": {
          "quals": [], 
          "declname": "main"
         }, 
         "children": [
          "type", 
          {
           "nodenames": "IdentifierType", 
           "attr_names": {
            "names": [
             "int"
            ]
           }, 
           "children": []
          }
         ]
        }
       ]
      }
     ]
    }, 
    "body", 
    {
     "nodenames": "Compound", 
     "attr_names": {}, 
     "children": [
      "block_items[0]", 
      {
       "nodenames": "FuncCall", 
       "attr_names": {}, 
       "children": [
        "name", 
        {
         "nodenames": "ID", 
         "attr_names": {
          "name": "printf"
         }, 
         "children": []
        }, 
        "args", 
        {
         "nodenames": "ExprList", 
         "attr_names": {}, 
         "children": [
          "exprs[0]", 
          {
           "nodenames": "Constant", 
           "attr_names": {
            "type": "string", 
            "value": "\"hello, world\""
           }, 
           "children": []
          }
         ]
        }
       ]
      }
     ]
    }
   ]
  }
 ]
}