import const

def vm(program):
    stack   = []
    prog_counter = 0
    while prog_counter < len(program):
        ins, value = program[prog_counter]
        if ins == const.ins_PUSH:
            stack.append(value)
        if ins == const.ins_ADD:
            while len(stack) > 1:
                right = stack.pop()
                left  = stack.pop()
                stack.append(left + right)
        if ins == const.ins_SUB:
            while len(stack) > 1:
                right = stack.pop()
                left  = stack.pop()
                stack.append(left - right)
        if ins == const.ins_MUL:
            while len(stack) > 1:
                right = stack.pop()
                left  = stack.pop()
                stack.append(left * right)
        if ins == const.ins_DIV:
            while len(stack) > 1:
                right = stack.pop()
                left  = stack.pop()
                stack.append(left // right)
        prog_counter += 1
    print(stack)

