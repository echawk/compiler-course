#!/usr/bin/env python

filename="test.rpn"

ast_NUM = 1
ast_OP  = 2

ast_list = []

with open(filename) as f:
    lines = f.readlines()
    for line in lines:
        line = line.replace('\n', '')
        print(line)
        for tok in line.split(' '):
            print(tok)
            if tok.isdigit():
                ast_list.append((ast_NUM, tok))
            if "+-*/".__contains__(tok):
                ast_list.append((ast_OP, tok))

print(ast_list)

ins_PUSH = 0
ins_ADD = 1
ins_MUL = 2
ins_SUB = 3
ins_DIV = 4

ins_list = []

for ast_node in ast_list:
    ast_type, ast_val = ast_node
    if ast_type == ast_NUM:
        ins_list.append((ins_PUSH, ast_val))
    if ast_type == ast_OP:
        if ast_val == "+":
            ins_list.append((ins_ADD, ast_val))
        if ast_val == "-":
            ins_list.append((ins_SUB, ast_val))
        if ast_val == "*":
            ins_list.append((ins_MUL, ast_val))
        if ast_val == "/":
            ins_list.append((ins_DIV, ast_val))

print(ins_list)

