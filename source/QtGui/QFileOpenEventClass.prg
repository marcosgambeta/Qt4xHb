/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QURL

CLASS QFileOpenEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QFileOpenEvent
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD file
   METHOD openFile
   METHOD url
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileOpenEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFileOpenEvent>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QUrl>

/*
QFileOpenEvent(const QString &file)
*/
HB_FUNC_STATIC( QFILEOPENEVENT_NEW1 )
{
  QFileOpenEvent * o = NULL;
  QFileOpenEvent * par1 = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFileOpenEvent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileOpenEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QFileOpenEvent(const QUrl &url)
*/
HB_FUNC_STATIC( QFILEOPENEVENT_NEW2 )
{
  QFileOpenEvent * o = NULL;
  QFileOpenEvent * par1 = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFileOpenEvent ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFileOpenEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QFileOpenEvent(const QString &file)
//[2]QFileOpenEvent(const QUrl &url)

HB_FUNC_STATIC( QFILEOPENEVENT_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILEOPENEVENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QFILEOPENEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILEOPENEVENT_DELETE )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString file () const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_FILE )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->file (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool openFile ( QFile & file, QIODevice::OpenMode flags ) const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_OPENFILE )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFile * par1 = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    hb_retl( obj->openFile ( *par1,  (QIODevice::OpenMode) par2 ) );
  }
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QFILEOPENEVENT_URL )
{
  QFileOpenEvent * obj = (QFileOpenEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}




#pragma ENDDUMP
