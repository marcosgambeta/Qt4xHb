$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSPLITTERHANDLE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QSplitter INHERIT QFrame

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD childrenCollapsible
   METHOD count
   METHOD getRange
   METHOD handle
   METHOD handleWidth
   METHOD indexOf
   METHOD insertWidget
   METHOD isCollapsible
   METHOD opaqueResize
   METHOD orientation
   METHOD refresh
   METHOD restoreState
   METHOD saveState
   METHOD setChildrenCollapsible
   METHOD setCollapsible
   METHOD setHandleWidth
   METHOD setOpaqueResize
   METHOD setOrientation
   METHOD setSizes
   METHOD setStretchFactor
   METHOD sizes
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint

   METHOD onSplitterMoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSplitter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSplitter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSplitter ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSPLITTER_NEW1 )
{
  QSplitter * o = new QSplitter ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSPLITTER_NEW2 )
{
  QSplitter * o = new QSplitter ( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QSplitter ( QWidget * parent = 0 )
//[2]QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSPLITTER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSPLITTER_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSPLITTER_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSPLITTER_DELETE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSPLITTER_ADDWIDGET )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool childrenCollapsible () const
*/
HB_FUNC_STATIC( QSPLITTER_CHILDRENCOLLAPSIBLE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->childrenCollapsible () );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QSPLITTER_COUNT )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
void getRange ( int index, int * min, int * max ) const
*/
HB_FUNC_STATIC( QSPLITTER_GETRANGE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2;
    int par3;
    obj->getRange ( PINT(1), &par2, &par3 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSplitterHandle * handle ( int index ) const
*/
HB_FUNC_STATIC( QSPLITTER_HANDLE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSplitterHandle * ptr = obj->handle ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QSPLITTERHANDLE" );
  }
}

/*
int handleWidth () const
*/
HB_FUNC_STATIC( QSPLITTER_HANDLEWIDTH )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->handleWidth () );
  }
}

/*
int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QSPLITTER_INDEXOF )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexOf ( PQWIDGET(1) ) );
  }
}

/*
void insertWidget ( int index, QWidget * widget )
*/
HB_FUNC_STATIC( QSPLITTER_INSERTWIDGET )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertWidget ( PINT(1), PQWIDGET(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isCollapsible ( int index ) const
*/
HB_FUNC_STATIC( QSPLITTER_ISCOLLAPSIBLE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCollapsible ( PINT(1) ) );
  }
}

/*
bool opaqueResize () const
*/
HB_FUNC_STATIC( QSPLITTER_OPAQUERESIZE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->opaqueResize () );
  }
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QSPLITTER_ORIENTATION )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RENUM( obj->orientation () );
  }
}

/*
void refresh ()
*/
HB_FUNC_STATIC( QSPLITTER_REFRESH )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->refresh ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool restoreState ( const QByteArray & state )
*/
HB_FUNC_STATIC( QSPLITTER_RESTORESTATE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->restoreState ( *PQBYTEARRAY(1) ) );
  }
}

/*
QByteArray saveState () const
*/
HB_FUNC_STATIC( QSPLITTER_SAVESTATE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveState () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setChildrenCollapsible ( bool )
*/
HB_FUNC_STATIC( QSPLITTER_SETCHILDRENCOLLAPSIBLE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setChildrenCollapsible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCollapsible ( int index, bool collapse )
*/
HB_FUNC_STATIC( QSPLITTER_SETCOLLAPSIBLE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCollapsible ( PINT(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHandleWidth ( int )
*/
HB_FUNC_STATIC( QSPLITTER_SETHANDLEWIDTH )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHandleWidth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOpaqueResize ( bool opaque = true )
*/
HB_FUNC_STATIC( QSPLITTER_SETOPAQUERESIZE )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOpaqueResize ( OPBOOL(1,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( Qt::Orientation )
*/
HB_FUNC_STATIC( QSPLITTER_SETORIENTATION )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOrientation ( (Qt::Orientation) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizes ( const QList<int> & list )
*/
HB_FUNC_STATIC( QSPLITTER_SETSIZES )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<int> par1;
PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aValues1);
int temp1;
for (i1=0;i1<nLen1;i1++)
{
temp1 = hb_arrayGetNI(aValues1, i1+1);
par1 << temp1;
}
    obj->setSizes ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStretchFactor ( int index, int stretch )
*/
HB_FUNC_STATIC( QSPLITTER_SETSTRETCHFACTOR )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStretchFactor ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<int> sizes () const
*/
HB_FUNC_STATIC( QSPLITTER_SIZES )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<int> list = obj->sizes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QSPLITTER_WIDGET )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ( PINT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QSPLITTER_MINIMUMSIZEHINT )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSPLITTER_SIZEHINT )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP