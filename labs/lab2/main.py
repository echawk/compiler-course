import frontend
import vm

vm.vm(frontend.get_ins_from_ast(frontend.get_ast_from_f("test.rpn")))

