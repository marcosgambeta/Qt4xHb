/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTTEST_H
#define QT4XHB_MACROS_QTTEST_H

#define ISQTESTEVENTLIST(n)                                 _qt4xhb_isObjectDerivedFrom(n,"QTestEventList")

#define PQTESTEVENTLIST(n)                                  (QTestEventList *) _qt4xhb_itemGetPtr(n)

#define OPQTESTEVENTLIST(n,v)                               ISNIL(n)? v : (QTestEventList *) _qt4xhb_itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTTEST_H */
