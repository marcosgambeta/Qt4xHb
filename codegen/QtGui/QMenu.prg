$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QRECT
REQUEST QMENU
REQUEST QICON
REQUEST QSIZE
#endif

CLASS QMenu INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD actionGeometry
   METHOD activeAction
   METHOD addAction1
   METHOD addAction2
   METHOD addAction3
   METHOD addAction4
   METHOD addAction5
   METHOD addAction
   METHOD addMenu1
   METHOD addMenu2
   METHOD addMenu3
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD defaultAction
   METHOD exec1
   METHOD exec2
   METHOD hideTearOffMenu
   METHOD icon
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isEmpty
   METHOD isTearOffEnabled
   METHOD isTearOffMenuVisible
   METHOD menuAction
   METHOD popup
   METHOD separatorsCollapsible
   METHOD setActiveAction
   METHOD setDefaultAction
   METHOD setIcon
   METHOD setSeparatorsCollapsible
   METHOD setTearOffEnabled
   METHOD setTitle
   METHOD title
   METHOD sizeHint
   METHOD exec3
   METHOD exec4
   METHOD exec

   METHOD onAboutToHide
   METHOD onAboutToShow
   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMenu
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMenu>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMenu ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENU_NEW1 )
{
  QMenu * o = new QMenu ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QMenu ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QMENU_NEW2 )
{
  QMenu * o = new QMenu ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QMenu ( QWidget * parent = 0 )
//[2]QMenu ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMENU_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMENU_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMENU_DELETE )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QAction * actionAt ( const QPoint & pt ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONAT )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->actionAt ( *PQPOINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QRect actionGeometry ( QAction * act ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONGEOMETRY )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->actionGeometry ( PQACTION(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENU_ACTIVEACTION )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->activeAction ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text )
*/
HB_FUNC_STATIC( QMENU_ADDACTION1 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
HB_FUNC_STATIC( QMENU_ADDACTION2 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QAction * ptr = obj->addAction ( par1, PQSTRING(2) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
HB_FUNC_STATIC( QMENU_ADDACTION3 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par2 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QKeySequence * par4 = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->addAction ( PQSTRING(1), par2, (const char *) hb_parc(3), *par4 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
HB_FUNC_STATIC( QMENU_ADDACTION4 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    const QObject * par3 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QKeySequence * par5 = (QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->addAction ( par1, PQSTRING(2), par3, (const char *) hb_parc(4), *par5 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QMENU_ADDACTION5 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QIcon & icon, const QString & text )
//[3]QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[4]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[5]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION1 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(2)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION2 );
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQKEYSEQUENCE(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION3 );
  }
  else if( ISBETWEEN(4,5) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) && (ISQKEYSEQUENCE(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION4 );
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDACTION5 );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QMENU_ADDMENU1 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addMenu ( PQMENU(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QMenu * addMenu ( const QString & title )
*/
HB_FUNC_STATIC( QMENU_ADDMENU2 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMenu * ptr = obj->addMenu ( PQSTRING(1) );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
HB_FUNC_STATIC( QMENU_ADDMENU3 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    QMenu * ptr = obj->addMenu ( par1, PQSTRING(2) );
    _qt4xhb_createReturnClass ( ptr, "QMENU" );
  }
}

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMENU_ADDMENU3 );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QMENU_ADDSEPARATOR )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->addSeparator ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QMENU_CLEAR )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QMENU_DEFAULTACTION )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->defaultAction ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * exec ()
*/
HB_FUNC_STATIC( QMENU_EXEC1 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->exec ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * exec ( const QPoint & p, QAction * action = 0 )
*/
HB_FUNC_STATIC( QMENU_EXEC2 )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par2 = ISNIL(2)? 0 : (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAction * ptr = obj->exec ( *PQPOINT(1), par2 );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void hideTearOffMenu ()
*/
HB_FUNC_STATIC( QMENU_HIDETEAROFFMENU )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->hideTearOffMenu ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QMENU_ICON )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENU_INSERTMENU )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->insertMenu ( PQACTION(1), PQMENU(2) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QMENU_INSERTSEPARATOR )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->insertSeparator ( PQACTION(1) );
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QMENU_ISEMPTY )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
bool isTearOffEnabled () const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFENABLED )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTearOffEnabled () );
  }
}

/*
bool isTearOffMenuVisible () const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFMENUVISIBLE )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isTearOffMenuVisible () );
  }
}

/*
QAction * menuAction () const
*/
HB_FUNC_STATIC( QMENU_MENUACTION )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * ptr = obj->menuAction ();
    _qt4xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void popup ( const QPoint & p, QAction * atAction = 0 )
*/
HB_FUNC_STATIC( QMENU_POPUP )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAction * par2 = ISNIL(2)? 0 : (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->popup ( *PQPOINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool separatorsCollapsible () const
*/
HB_FUNC_STATIC( QMENU_SEPARATORSCOLLAPSIBLE )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->separatorsCollapsible () );
  }
}

/*
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETACTIVEACTION )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setActiveAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETDEFAULTACTION )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDefaultAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QMENU_SETICON )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSeparatorsCollapsible ( bool collapse )
*/
HB_FUNC_STATIC( QMENU_SETSEPARATORSCOLLAPSIBLE )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSeparatorsCollapsible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTearOffEnabled ( bool )
*/
HB_FUNC_STATIC( QMENU_SETTEAROFFENABLED )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTearOffEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QMENU_SETTITLE )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString title () const
*/
HB_FUNC_STATIC( QMENU_TITLE )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->title () );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENU_SIZEHINT )
{
  QMenu * obj = (QMenu *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at, QWidget * parent )
*/
HB_FUNC_STATIC( QMENU_EXEC3 )
{
QList<QAction *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
  QAction * ptr = QMenu::exec ( par1, *PQPOINT(2), PQACTION(3), PQWIDGET(4) );
  _qt4xhb_createReturnClass ( ptr, "QACTION" );
}

/*
QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at = 0 )
*/
HB_FUNC_STATIC( QMENU_EXEC4 )
{
QList<QAction *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
  QAction * par3 = ISNIL(3)? 0 : (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAction * ptr = QMenu::exec ( par1, *PQPOINT(2), par3 );
  _qt4xhb_createReturnClass ( ptr, "QACTION" );
}

//[1]QAction * exec ()
//[2]QAction * exec ( const QPoint & p, QAction * action = 0 )
//[3]QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at, QWidget * parent )
//[4]QAction * exec ( QList<QAction *> actions, const QPoint & pos, QAction * at = 0 )

HB_FUNC_STATIC( QMENU_EXEC )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMENU_EXEC1 );
  }
  else if( ISBETWEEN(1,2) && ISQPOINT(1) && (ISQACTION(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QMENU_EXEC2 );
  }
  else if( ISNUMPAR(4) && ISARRAY(1) && ISQPOINT(2) && ISQACTION(3) && ISQWIDGET(4) )
  {
    HB_FUNC_EXEC( QMENU_EXEC1 );
  }
  else if( ISBETWEEN(2,3) && ISARRAY(1) && ISQPOINT(2) && (ISQACTION(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QMENU_EXEC2 );
  }
}

#pragma ENDDUMP