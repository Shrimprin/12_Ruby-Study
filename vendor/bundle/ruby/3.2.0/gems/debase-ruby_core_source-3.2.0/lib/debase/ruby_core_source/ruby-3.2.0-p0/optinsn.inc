/* -*- C -*- */

/* This is  an auto-generated file  and is a  part of the  programming language
 * Ruby.   The person  who  created  a program  to  generate  this file  (``I''
 * hereafter) would like  to refrain from defining licensing  of this generated
 * source code.
 *
 * This file consists of many small  parts of codes copyrighted by each author,
 * not  only  the  ``I''  person.   Those  original  authors  agree  with  some
 * open-source license.  I  believe that the license we agree  is the condition
 * mentioned in  the file COPYING.  It  states "4.  You may  modify and include
 * the part of the software into any  other software ...".  But the problem is,
 * the license never makes it clear if  such modified parts still remain in the
 * same  license, or  not.   The fact  that  we agree  with  the source  code's
 * licensing terms does not automatically  define that of generated ones.  This
 * is the reason why this file is  under an unclear situation.  All what I know
 * is that above provision guarantees this file to exist.
 *
 * Please let me hesitate to declare  something about this nuanced contract.  I
 * am not in the position to take  over other authors' license to merge into my
 * one.  Changing them to (say) GPLv3 is not doable by myself.  Perhaps someday
 * it might turn  out to be okay to  say this file is under a  license.  I wish
 * the situation would become more clear in the future. */
/*******************************************************************/
/*******************************************************************/
/*******************************************************************/
/**
  This file is for threaded code.

  ----
  This file is auto generated by insns2vm.rb
  DO NOT TOUCH!

  If you want to fix something, you must edit "tool/ruby_vm/views/optinsn.inc.erb"
  or tool/insns2vm.rb
 */

static INSN *
insn_operands_unification(INSN *iobj)
{
#ifdef OPT_OPERANDS_UNIFICATION
    VALUE *op = iobj->operands;

    switch (iobj->insn_id) {
    default:
        /* do nothing */;
        break;

    case BIN(getlocal):

        /* getlocal_WC_0(idx)()(val) */
        if ( op[1] == LONG2NUM(0) ) {
            iobj->insn_id      = BIN(getlocal_WC_0);
            iobj->operand_size = 1;
            break;
        }

        /* getlocal_WC_1(idx)()(val) */
        if ( op[1] == LONG2NUM(1) ) {
            iobj->insn_id      = BIN(getlocal_WC_1);
            iobj->operand_size = 1;
            break;
        }

        break;
    case BIN(setlocal):

        /* setlocal_WC_0(idx)(val)() */
        if ( op[1] == LONG2NUM(0) ) {
            iobj->insn_id      = BIN(setlocal_WC_0);
            iobj->operand_size = 1;
            break;
        }

        /* setlocal_WC_1(idx)(val)() */
        if ( op[1] == LONG2NUM(1) ) {
            iobj->insn_id      = BIN(setlocal_WC_1);
            iobj->operand_size = 1;
            break;
        }

        break;
    case BIN(putobject):

        /* putobject_INT2FIX_0_()()(val) */
        if ( op[0] == INT2FIX(0) ) {
            iobj->insn_id      = BIN(putobject_INT2FIX_0_);
            iobj->operand_size = 0;
            break;
        }

        /* putobject_INT2FIX_1_()()(val) */
        if ( op[0] == INT2FIX(1) ) {
            iobj->insn_id      = BIN(putobject_INT2FIX_1_);
            iobj->operand_size = 0;
            break;
        }

        break;
    }
#endif
    return iobj;
}

int
rb_insn_unified_local_var_level(VALUE insn)
{
#ifdef OPT_OPERANDS_UNIFICATION
    /* optimize rule */
    switch (insn) {
      default:
        return -1; /* do nothing */;
      case BIN(getlocal_WC_0):
        return 0;
      case BIN(getlocal_WC_1):
        return 1;
      case BIN(setlocal_WC_0):
        return 0;
      case BIN(setlocal_WC_1):
        return 1;
      case BIN(putobject_INT2FIX_0_):
        return INT2FIX(0);
      case BIN(putobject_INT2FIX_1_):
        return INT2FIX(1);
    }
#endif
    return -1;
}
