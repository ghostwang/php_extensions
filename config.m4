dnl $Id$
dnl config.m4 for extension ghosttest

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(ghosttest, for ghosttest support,
Make sure that the comment is aligned:
[  --with-ghosttest             Include ghosttest support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(ghosttest, whether to enable ghosttest support,
dnl Make sure that the comment is aligned:
dnl [  --enable-ghosttest           Enable ghosttest support])

if test "$PHP_GHOSTTEST" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-ghosttest -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/ghosttest.h"  # you most likely want to change this
  dnl if test -r $PHP_GHOSTTEST/$SEARCH_FOR; then # path given as parameter
  dnl   GHOSTTEST_DIR=$PHP_GHOSTTEST
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for ghosttest files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       GHOSTTEST_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$GHOSTTEST_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the ghosttest distribution])
  dnl fi

  dnl # --with-ghosttest -> add include path
  dnl PHP_ADD_INCLUDE($GHOSTTEST_DIR/include)

  dnl # --with-ghosttest -> check for lib and symbol presence
  dnl LIBNAME=ghosttest # you may want to change this
  dnl LIBSYMBOL=ghosttest # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $GHOSTTEST_DIR/$PHP_LIBDIR, GHOSTTEST_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_GHOSTTESTLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong ghosttest lib version or lib not found])
  dnl ],[
  dnl   -L$GHOSTTEST_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(GHOSTTEST_SHARED_LIBADD)

  PHP_NEW_EXTENSION(ghosttest, ghosttest.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
