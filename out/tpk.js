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
            "name": "f"
          }, 
          "children": [
            "type", 
            {
              "nodenames": "FuncDecl", 
              "attr_names": {}, 
              "children": [
                "args", 
                {
                  "nodenames": "ParamList", 
                  "attr_names": {}, 
                  "children": [
                    "params[0]", 
                    {
                      "nodenames": "Decl", 
                      "attr_names": {
                        "quals": [], 
                        "funcspec": [], 
                        "storage": [], 
                        "name": "x"
                      }, 
                      "children": [
                        "type", 
                        {
                          "nodenames": "TypeDecl", 
                          "attr_names": {
                            "quals": [], 
                            "declname": "x"
                          }, 
                          "children": [
                            "type", 
                            {
                              "nodenames": "IdentifierType", 
                              "attr_names": {
                                "names": [
                                  "double"
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
                "type", 
                {
                  "nodenames": "TypeDecl", 
                  "attr_names": {
                    "quals": [], 
                    "declname": "f"
                  }, 
                  "children": [
                    "type", 
                    {
                      "nodenames": "IdentifierType", 
                      "attr_names": {
                        "names": [
                          "double"
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
              "nodenames": "Return", 
              "attr_names": {}, 
              "children": [
                "expr", 
                {
                  "nodenames": "BinaryOp", 
                  "attr_names": {
                    "op": "+"
                  }, 
                  "children": [
                    "left", 
                    {
                      "nodenames": "FuncCall", 
                      "attr_names": {}, 
                      "children": [
                        "name", 
                        {
                          "nodenames": "ID", 
                          "attr_names": {
                            "name": "sqrt"
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
                              "nodenames": "FuncCall", 
                              "attr_names": {}, 
                              "children": [
                                "name", 
                                {
                                  "nodenames": "ID", 
                                  "attr_names": {
                                    "name": "fabs"
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
                                      "nodenames": "ID", 
                                      "attr_names": {
                                        "name": "x"
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
                    }, 
                    "right", 
                    {
                      "nodenames": "BinaryOp", 
                      "attr_names": {
                        "op": "*"
                      }, 
                      "children": [
                        "left", 
                        {
                          "nodenames": "Constant", 
                          "attr_names": {
                            "type": "float", 
                            "value": "5.0"
                          }, 
                          "children": []
                        }, 
                        "right", 
                        {
                          "nodenames": "FuncCall", 
                          "attr_names": {}, 
                          "children": [
                            "name", 
                            {
                              "nodenames": "ID", 
                              "attr_names": {
                                "name": "pow"
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
                                  "nodenames": "ID", 
                                  "attr_names": {
                                    "name": "x"
                                  }, 
                                  "children": []
                                }, 
                                "exprs[1]", 
                                {
                                  "nodenames": "Constant", 
                                  "attr_names": {
                                    "type": "float", 
                                    "value": "3.0"
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
          ]
        }
      ]
    }, 
    "ext[1]", 
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
                "args", 
                {
                  "nodenames": "ParamList", 
                  "attr_names": {}, 
                  "children": [
                    "params[0]", 
                    {
                      "nodenames": "Decl", 
                      "attr_names": {
                        "quals": [], 
                        "funcspec": [], 
                        "storage": [], 
                        "name": "argc"
                      }, 
                      "children": [
                        "type", 
                        {
                          "nodenames": "TypeDecl", 
                          "attr_names": {
                            "quals": [], 
                            "declname": "argc"
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
                    }, 
                    "params[1]", 
                    {
                      "nodenames": "Decl", 
                      "attr_names": {
                        "quals": [], 
                        "funcspec": [], 
                        "storage": [], 
                        "name": "argv"
                      }, 
                      "children": [
                        "type", 
                        {
                          "nodenames": "ArrayDecl", 
                          "attr_names": {
                            "dim_quals": []
                          }, 
                          "children": [
                            "type", 
                            {
                              "nodenames": "PtrDecl", 
                              "attr_names": {
                                "quals": []
                              }, 
                              "children": [
                                "type", 
                                {
                                  "nodenames": "TypeDecl", 
                                  "attr_names": {
                                    "quals": [], 
                                    "declname": "argv"
                                  }, 
                                  "children": [
                                    "type", 
                                    {
                                      "nodenames": "IdentifierType", 
                                      "attr_names": {
                                        "names": [
                                          "char"
                                        ]
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
                }, 
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
              "nodenames": "Decl", 
              "attr_names": {
                "quals": [], 
                "funcspec": [], 
                "storage": [], 
                "name": "A"
              }, 
              "children": [
                "type", 
                {
                  "nodenames": "ArrayDecl", 
                  "attr_names": {
                    "dim_quals": []
                  }, 
                  "children": [
                    "type", 
                    {
                      "nodenames": "TypeDecl", 
                      "attr_names": {
                        "quals": [], 
                        "declname": "A"
                      }, 
                      "children": [
                        "type", 
                        {
                          "nodenames": "IdentifierType", 
                          "attr_names": {
                            "names": [
                              "double"
                            ]
                          }, 
                          "children": []
                        }
                      ]
                    }, 
                    "dim", 
                    {
                      "nodenames": "Constant", 
                      "attr_names": {
                        "type": "int", 
                        "value": "11"
                      }, 
                      "children": []
                    }
                  ]
                }
              ]
            }, 
            "block_items[1]", 
            {
              "nodenames": "Decl", 
              "attr_names": {
                "quals": [], 
                "funcspec": [], 
                "storage": [], 
                "name": "y"
              }, 
              "children": [
                "type", 
                {
                  "nodenames": "TypeDecl", 
                  "attr_names": {
                    "quals": [], 
                    "declname": "y"
                  }, 
                  "children": [
                    "type", 
                    {
                      "nodenames": "IdentifierType", 
                      "attr_names": {
                        "names": [
                          "double"
                        ]
                      }, 
                      "children": []
                    }
                  ]
                }
              ]
            }, 
            "block_items[2]", 
            {
              "nodenames": "Decl", 
              "attr_names": {
                "quals": [], 
                "funcspec": [], 
                "storage": [], 
                "name": "i"
              }, 
              "children": [
                "type", 
                {
                  "nodenames": "TypeDecl", 
                  "attr_names": {
                    "quals": [], 
                    "declname": "i"
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
            }, 
            "block_items[3]", 
            {
              "nodenames": "For", 
              "attr_names": {}, 
              "children": [
                "init", 
                {
                  "nodenames": "Assignment", 
                  "attr_names": {
                    "op": "="
                  }, 
                  "children": [
                    "lvalue", 
                    {
                      "nodenames": "ID", 
                      "attr_names": {
                        "name": "i"
                      }, 
                      "children": []
                    }, 
                    "rvalue", 
                    {
                      "nodenames": "Constant", 
                      "attr_names": {
                        "type": "int", 
                        "value": "0"
                      }, 
                      "children": []
                    }
                  ]
                }, 
                "cond", 
                {
                  "nodenames": "BinaryOp", 
                  "attr_names": {
                    "op": "<"
                  }, 
                  "children": [
                    "left", 
                    {
                      "nodenames": "ID", 
                      "attr_names": {
                        "name": "i"
                      }, 
                      "children": []
                    }, 
                    "right", 
                    {
                      "nodenames": "Constant", 
                      "attr_names": {
                        "type": "int", 
                        "value": "11"
                      }, 
                      "children": []
                    }
                  ]
                }, 
                "next", 
                {
                  "nodenames": "UnaryOp", 
                  "attr_names": {
                    "op": "p++"
                  }, 
                  "children": [
                    "expr", 
                    {
                      "nodenames": "ID", 
                      "attr_names": {
                        "name": "i"
                      }, 
                      "children": []
                    }
                  ]
                }, 
                "stmt", 
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
                            "name": "scanf"
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
                                "value": "\"%lf\""
                              }, 
                              "children": []
                            }, 
                            "exprs[1]", 
                            {
                              "nodenames": "UnaryOp", 
                              "attr_names": {
                                "op": "&"
                              }, 
                              "children": [
                                "expr", 
                                {
                                  "nodenames": "ArrayRef", 
                                  "attr_names": {}, 
                                  "children": [
                                    "name", 
                                    {
                                      "nodenames": "ID", 
                                      "attr_names": {
                                        "name": "A"
                                      }, 
                                      "children": []
                                    }, 
                                    "subscript", 
                                    {
                                      "nodenames": "ID", 
                                      "attr_names": {
                                        "name": "i"
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
              ]
            }, 
            "block_items[4]", 
            {
              "nodenames": "For", 
              "attr_names": {}, 
              "children": [
                "init", 
                {
                  "nodenames": "Assignment", 
                  "attr_names": {
                    "op": "="
                  }, 
                  "children": [
                    "lvalue", 
                    {
                      "nodenames": "ID", 
                      "attr_names": {
                        "name": "i"
                      }, 
                      "children": []
                    }, 
                    "rvalue", 
                    {
                      "nodenames": "Constant", 
                      "attr_names": {
                        "type": "int", 
                        "value": "10"
                      }, 
                      "children": []
                    }
                  ]
                }, 
                "cond", 
                {
                  "nodenames": "BinaryOp", 
                  "attr_names": {
                    "op": ">="
                  }, 
                  "children": [
                    "left", 
                    {
                      "nodenames": "ID", 
                      "attr_names": {
                        "name": "i"
                      }, 
                      "children": []
                    }, 
                    "right", 
                    {
                      "nodenames": "Constant", 
                      "attr_names": {
                        "type": "int", 
                        "value": "0"
                      }, 
                      "children": []
                    }
                  ]
                }, 
                "next", 
                {
                  "nodenames": "UnaryOp", 
                  "attr_names": {
                    "op": "p--"
                  }, 
                  "children": [
                    "expr", 
                    {
                      "nodenames": "ID", 
                      "attr_names": {
                        "name": "i"
                      }, 
                      "children": []
                    }
                  ]
                }, 
                "stmt", 
                {
                  "nodenames": "Compound", 
                  "attr_names": {}, 
                  "children": [
                    "block_items[0]", 
                    {
                      "nodenames": "Assignment", 
                      "attr_names": {
                        "op": "="
                      }, 
                      "children": [
                        "lvalue", 
                        {
                          "nodenames": "ID", 
                          "attr_names": {
                            "name": "y"
                          }, 
                          "children": []
                        }, 
                        "rvalue", 
                        {
                          "nodenames": "FuncCall", 
                          "attr_names": {}, 
                          "children": [
                            "name", 
                            {
                              "nodenames": "ID", 
                              "attr_names": {
                                "name": "f"
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
                                  "nodenames": "ArrayRef", 
                                  "attr_names": {}, 
                                  "children": [
                                    "name", 
                                    {
                                      "nodenames": "ID", 
                                      "attr_names": {
                                        "name": "A"
                                      }, 
                                      "children": []
                                    }, 
                                    "subscript", 
                                    {
                                      "nodenames": "ID", 
                                      "attr_names": {
                                        "name": "i"
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
                    }, 
                    "block_items[1]", 
                    {
                      "nodenames": "If", 
                      "attr_names": {}, 
                      "children": [
                        "cond", 
                        {
                          "nodenames": "BinaryOp", 
                          "attr_names": {
                            "op": ">"
                          }, 
                          "children": [
                            "left", 
                            {
                              "nodenames": "ID", 
                              "attr_names": {
                                "name": "y"
                              }, 
                              "children": []
                            }, 
                            "right", 
                            {
                              "nodenames": "Constant", 
                              "attr_names": {
                                "type": "float", 
                                "value": "400.0"
                              }, 
                              "children": []
                            }
                          ]
                        }, 
                        "iftrue", 
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
                                        "value": "\"%d TOO LARGE\\n\""
                                      }, 
                                      "children": []
                                    }, 
                                    "exprs[1]", 
                                    {
                                      "nodenames": "ID", 
                                      "attr_names": {
                                        "name": "i"
                                      }, 
                                      "children": []
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }, 
                        "iffalse", 
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
                                        "value": "\"%d %f\\n\""
                                      }, 
                                      "children": []
                                    }, 
                                    "exprs[1]", 
                                    {
                                      "nodenames": "ID", 
                                      "attr_names": {
                                        "name": "i"
                                      }, 
                                      "children": []
                                    }, 
                                    "exprs[2]", 
                                    {
                                      "nodenames": "ID", 
                                      "attr_names": {
                                        "name": "y"
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
              ]
            }, 
            "block_items[5]", 
            {
              "nodenames": "Return", 
              "attr_names": {}, 
              "children": [
                "expr", 
                {
                  "nodenames": "Constant", 
                  "attr_names": {
                    "type": "int", 
                    "value": "0"
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