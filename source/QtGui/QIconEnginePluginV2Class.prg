/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICONENGINEV2
#endif

CLASS QIconEnginePluginV2 INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIconEnginePluginV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QIconEnginePluginV2>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QICONENGINEPLUGINV2_DELETE )
{
  QIconEnginePluginV2 * obj = (QIconEnginePluginV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
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
virtual QIconEngineV2 * create ( const QString & filename = QString() ) = 0
*/
HB_FUNC_STATIC( QICONENGINEPLUGINV2_CREATE )
{
  QIconEnginePluginV2 * obj = (QIconEnginePluginV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIconEngineV2 * ptr = obj->create ( OPQSTRING(1,QString()) );
    _qt4xhb_createReturnClass ( ptr, "QICONENGINEV2" );
  }
}

/*
virtual QStringList keys () const = 0
*/
HB_FUNC_STATIC( QICONENGINEPLUGINV2_KEYS )
{
  QIconEnginePluginV2 * obj = (QIconEnginePluginV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->keys () );
  }
}

#pragma ENDDUMP
