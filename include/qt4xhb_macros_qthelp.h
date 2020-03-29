/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTHELP_H
#define QT4XHB_MACROS_QTHELP_H

#define ISQHELPCONTENTITEM(n)                               Qt4xHb::isObjectDerivedFrom(n,"QHelpContentItem")
#define ISQHELPCONTENTMODEL(n)                              Qt4xHb::isObjectDerivedFrom(n,"QHelpContentModel")
#define ISQHELPCONTENTWIDGET(n)                             Qt4xHb::isObjectDerivedFrom(n,"QHelpContentWidget")
#define ISQHELPENGINE(n)                                    Qt4xHb::isObjectDerivedFrom(n,"QHelpEngine")
#define ISQHELPENGINECORE(n)                                Qt4xHb::isObjectDerivedFrom(n,"QHelpEngineCore")
#define ISQHELPINDEXMODEL(n)                                Qt4xHb::isObjectDerivedFrom(n,"QHelpIndexModel")
#define ISQHELPINDEXWIDGET(n)                               Qt4xHb::isObjectDerivedFrom(n,"QHelpIndexWidget")
#define ISQHELPSEARCHENGINE(n)                              Qt4xHb::isObjectDerivedFrom(n,"QHelpSearchEngine")
#define ISQHELPSEARCHQUERY(n)                               Qt4xHb::isObjectDerivedFrom(n,"QHelpSearchQuery")
#define ISQHELPSEARCHQUERYWIDGET(n)                         Qt4xHb::isObjectDerivedFrom(n,"QHelpSearchQueryWidget")
#define ISQHELPSEARCHRESULTWIDGET(n)                        Qt4xHb::isObjectDerivedFrom(n,"QHelpSearchResultWidget")

#define PQHELPCONTENTITEM(n)                                (QHelpContentItem *) Qt4xHb::itemGetPtr(n)
#define PQHELPCONTENTMODEL(n)                               (QHelpContentModel *) Qt4xHb::itemGetPtr(n)
#define PQHELPCONTENTWIDGET(n)                              (QHelpContentWidget *) Qt4xHb::itemGetPtr(n)
#define PQHELPENGINE(n)                                     (QHelpEngine *) Qt4xHb::itemGetPtr(n)
#define PQHELPENGINECORE(n)                                 (QHelpEngineCore *) Qt4xHb::itemGetPtr(n)
#define PQHELPINDEXMODEL(n)                                 (QHelpIndexModel *) Qt4xHb::itemGetPtr(n)
#define PQHELPINDEXWIDGET(n)                                (QHelpIndexWidget *) Qt4xHb::itemGetPtr(n)
#define PQHELPSEARCHENGINE(n)                               (QHelpSearchEngine *) Qt4xHb::itemGetPtr(n)
#define PQHELPSEARCHQUERY(n)                                (QHelpSearchQuery *) Qt4xHb::itemGetPtr(n)
#define PQHELPSEARCHQUERYWIDGET(n)                          (QHelpSearchQueryWidget *) Qt4xHb::itemGetPtr(n)
#define PQHELPSEARCHRESULTWIDGET(n)                         (QHelpSearchResultWidget *) Qt4xHb::itemGetPtr(n)

#define OPQHELPCONTENTITEM(n,v)                             ISNIL(n)? v : (QHelpContentItem *) Qt4xHb::itemGetPtr(n)
#define OPQHELPCONTENTMODEL(n,v)                            ISNIL(n)? v : (QHelpContentModel *) Qt4xHb::itemGetPtr(n)
#define OPQHELPCONTENTWIDGET(n,v)                           ISNIL(n)? v : (QHelpContentWidget *) Qt4xHb::itemGetPtr(n)
#define OPQHELPENGINE(n,v)                                  ISNIL(n)? v : (QHelpEngine *) Qt4xHb::itemGetPtr(n)
#define OPQHELPENGINECORE(n,v)                              ISNIL(n)? v : (QHelpEngineCore *) Qt4xHb::itemGetPtr(n)
#define OPQHELPINDEXMODEL(n,v)                              ISNIL(n)? v : (QHelpIndexModel *) Qt4xHb::itemGetPtr(n)
#define OPQHELPINDEXWIDGET(n,v)                             ISNIL(n)? v : (QHelpIndexWidget *) Qt4xHb::itemGetPtr(n)
#define OPQHELPSEARCHENGINE(n,v)                            ISNIL(n)? v : (QHelpSearchEngine *) Qt4xHb::itemGetPtr(n)
#define OPQHELPSEARCHQUERY(n,v)                             ISNIL(n)? v : (QHelpSearchQuery *) Qt4xHb::itemGetPtr(n)
#define OPQHELPSEARCHQUERYWIDGET(n,v)                       ISNIL(n)? v : (QHelpSearchQueryWidget *) Qt4xHb::itemGetPtr(n)
#define OPQHELPSEARCHRESULTWIDGET(n,v)                      ISNIL(n)? v : (QHelpSearchResultWidget *) Qt4xHb::itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTHELP_H */
