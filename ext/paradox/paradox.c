#include "paradox.h"

VALUE rb_mParadox;

void
Init_paradox(void)
{
  rb_mParadox = rb_define_module("Paradox");
}
