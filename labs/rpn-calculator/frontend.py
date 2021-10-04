#!/usr/bin/env python

import const

def get_ast_from_f(filename):
    ast_list = []
    with open(filename) as f:
        lines = f.readlines()
        for line in lines:
            line = line.replace('\n', '')
            for tok in line.split(' '):
                if tok.isdigit():
                    ast_list.append((const.ast_NUM, tok))
                if "+-*/".__contains__(tok):
                    ast_list.append((const.ast_OP, tok))
    return ast_list

def get_ins_from_ast(ast_list):
    ins_list = []
    for ast_node in ast_list:
        ast_type, ast_val = ast_node
        if ast_type == const.ast_NUM:
            ins_list.append((const.ins_PUSH, int(ast_val)))
        if ast_type == const.ast_OP:
            if ast_val == "+":
                ins_list.append((const.ins_ADD, None))
            if ast_val == "-":
                ins_list.append((const.ins_SUB, None))
            if ast_val == "*":
                ins_list.append((const.ins_MUL, None))
            if ast_val == "/":
                ins_list.append((const.ins_DIV, None))
    return ins_list
