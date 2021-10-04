#!/usr/bin/env python

import const

def get_ast_from_f(filename):
    ast_list = []
    with open(filename) as f:
        lines = f.readlines()
        for line in lines:
            line = line.replace('\n', '')
            print(line)
            for tok in line.split(' '):
                print(tok)
                if tok.isdigit():
                    ast_list.append((const.ast_NUM, tok))
                if "+-*/".__contains__(tok):
                    ast_list.append((const.ast_OP, tok))
    return ast_list

ast_list = get_ast_from_f("test.rpn")

def get_ins_from_ast(ast_list):
    ins_list = []
    for ast_node in ast_list:
        ast_type, ast_val = ast_node
        if ast_type == const.ast_NUM:
            ins_list.append((const.ins_PUSH, ast_val))
        if ast_type == const.ast_OP:
            if ast_val == "+":
                ins_list.append((const.ins_ADD, ast_val))
            if ast_val == "-":
                ins_list.append((const.ins_SUB, ast_val))
            if ast_val == "*":
                ins_list.append((const.ins_MUL, ast_val))
            if ast_val == "/":
                ins_list.append((const.ins_DIV, ast_val))
    return ins_list

print(get_ins_from_ast(ast_list))
