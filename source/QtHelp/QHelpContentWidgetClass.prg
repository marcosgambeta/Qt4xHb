/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpContentWidget INHERIT QTreeView

   METHOD indexOf

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpContentWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpContentWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QModelIndex indexOf ( const QUrl & link )
*/
HB_FUNC_STATIC( QHELPCONTENTWIDGET_INDEXOF )
{
  QHelpContentWidget * obj = (QHelpContentWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->indexOf ( *PQURL(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

void QHelpContentWidgetSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHELPCONTENTWIDGET_ONLINKACTIVATED )
{
  QHelpContentWidgetSlots_connect_signal( "linkActivated(QUrl)", "linkActivated(QUrl)" );
}


#pragma ENDDUMP
