/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessiblePlugin INHERIT QObject,QAccessible

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAccessiblePlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QAccessiblePlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

HB_FUNC_STATIC( QACCESSIBLEPLUGIN_DELETE )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QAccessibleInterface * create ( const QString & key, QObject * object ) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEPLUGIN_CREATE )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
    {
#endif
      QAccessibleInterface * ptr = obj->create( PQSTRING(1), PQOBJECT(2) );
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QACCESSIBLEINTERFACE", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEPLUGIN_KEYS )
{
  QAccessiblePlugin * obj = (QAccessiblePlugin *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->keys() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
