/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTSQL_H
#define QT4XHB_MACROS_QTSQL_H

#define ISQSQLDATABASE(n)                                   Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlDatabase")
#define ISQSQLDRIVER(n)                                     Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlDriver")
#define ISQSQLDRIVERCREATOR(n)                              Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlDriverCreator")
#define ISQSQLDRIVERCREATORBASE(n)                          Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlDriverCreatorBase")
#define ISQSQLDRIVERPLUGIN(n)                               Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlDriverPlugin")
#define ISQSQLERROR(n)                                      Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlError")
#define ISQSQLFIELD(n)                                      Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlField")
#define ISQSQLINDEX(n)                                      Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlIndex")
#define ISQSQLQUERY(n)                                      Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlQuery")
#define ISQSQLQUERYMODEL(n)                                 Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlQueryModel")
#define ISQSQLRECORD(n)                                     Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlRecord")
#define ISQSQLRELATION(n)                                   Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlRelation")
#define ISQSQLRELATIONALDELEGATE(n)                         Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlRelationalDelegate")
#define ISQSQLRELATIONALTABLEMODEL(n)                       Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlRelationalTableModel")
#define ISQSQLRESULT(n)                                     Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlResult")
#define ISQSQLTABLEMODEL(n)                                 Qt4xHb::_qt4xhb_isObjectDerivedFrom(n,"QSqlTableModel")

#define PQSQLDATABASE(n)                                    (QSqlDatabase *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLDRIVER(n)                                      (QSqlDriver *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLDRIVERCREATOR(n)                               (QSqlDriverCreator *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLDRIVERCREATORBASE(n)                           (QSqlDriverCreatorBase *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLDRIVERPLUGIN(n)                                (QSqlDriverPlugin *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLERROR(n)                                       (QSqlError *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLFIELD(n)                                       (QSqlField *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLINDEX(n)                                       (QSqlIndex *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLQUERY(n)                                       (QSqlQuery *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLQUERYMODEL(n)                                  (QSqlQueryModel *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLRECORD(n)                                      (QSqlRecord *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLRELATION(n)                                    (QSqlRelation *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLRELATIONALDELEGATE(n)                          (QSqlRelationalDelegate *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLRELATIONALTABLEMODEL(n)                        (QSqlRelationalTableModel *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLRESULT(n)                                      (QSqlResult *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define PQSQLTABLEMODEL(n)                                  (QSqlTableModel *) Qt4xHb::_qt4xhb_itemGetPtr(n)

#define OPQSQLDATABASE(n,v)                                 ISNIL(n)? v : (QSqlDatabase *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLDRIVER(n,v)                                   ISNIL(n)? v : (QSqlDriver *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLDRIVERCREATOR(n,v)                            ISNIL(n)? v : (QSqlDriverCreator *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLDRIVERCREATORBASE(n,v)                        ISNIL(n)? v : (QSqlDriverCreatorBase *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLDRIVERPLUGIN(n,v)                             ISNIL(n)? v : (QSqlDriverPlugin *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLERROR(n,v)                                    ISNIL(n)? v : (QSqlError *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLFIELD(n,v)                                    ISNIL(n)? v : (QSqlField *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLINDEX(n,v)                                    ISNIL(n)? v : (QSqlIndex *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLQUERY(n,v)                                    ISNIL(n)? v : (QSqlQuery *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLQUERYMODEL(n,v)                               ISNIL(n)? v : (QSqlQueryModel *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLRECORD(n,v)                                   ISNIL(n)? v : (QSqlRecord *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLRELATION(n,v)                                 ISNIL(n)? v : (QSqlRelation *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLRELATIONALDELEGATE(n,v)                       ISNIL(n)? v : (QSqlRelationalDelegate *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLRELATIONALTABLEMODEL(n,v)                     ISNIL(n)? v : (QSqlRelationalTableModel *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLRESULT(n,v)                                   ISNIL(n)? v : (QSqlResult *) Qt4xHb::_qt4xhb_itemGetPtr(n)
#define OPQSQLTABLEMODEL(n,v)                               ISNIL(n)? v : (QSqlTableModel *) Qt4xHb::_qt4xhb_itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTSQL_H */
