$header

#include "hbclass.ch"


CLASS QDesignerWidgetBoxInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD fileName
   METHOD load
   METHOD save
   METHOD setFileName
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerWidgetBoxInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDesignerWidgetBoxInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_DELETE )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString fileName () const = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_FILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fileName () );
  }
}


/*
virtual bool load () = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_LOAD )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->load () );
  }
}


/*
virtual bool save () = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_SAVE )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->save () );
  }
}


/*
virtual void setFileName ( const QString & fileName ) = 0
*/
HB_FUNC_STATIC( QDESIGNERWIDGETBOXINTERFACE_SETFILENAME )
{
  QDesignerWidgetBoxInterface * obj = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP