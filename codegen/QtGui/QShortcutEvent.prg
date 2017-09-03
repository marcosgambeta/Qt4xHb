$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QShortcutEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD key
   METHOD shortcutId
   METHOD isAmbiguous

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QShortcutEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QShortcutEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_NEW )
{
  QShortcutEvent * o = new QShortcutEvent ( *PQKEYSEQUENCE(1), PINT(2), OPBOOL(3,false) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QSHORTCUTEVENT_DELETE )
{
  QShortcutEvent * obj = (QShortcutEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
const QKeySequence &key()
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_KEY )
{
  QShortcutEvent * obj = (QShortcutEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QKeySequence * ptr = &obj->key ();
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE" );
  }
}

/*
int shortcutId()
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_SHORTCUTID )
{
  QShortcutEvent * obj = (QShortcutEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->shortcutId () );
  }
}

/*
bool isAmbiguous()
*/
HB_FUNC_STATIC( QSHORTCUTEVENT_ISAMBIGUOUS )
{
  QShortcutEvent * obj = (QShortcutEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAmbiguous () );
  }
}

#pragma ENDDUMP