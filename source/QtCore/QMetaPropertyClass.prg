/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMETAENUM
REQUEST QMETAMETHOD
REQUEST QVARIANT
REQUEST QMETAOBJECT

CLASS QMetaProperty

   DATA pointer
   DATA class_id INIT Class_Id_QMetaProperty
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD name
   METHOD typeName
   METHOD type
   METHOD userType
   METHOD propertyIndex
   METHOD isReadable
   METHOD isWritable
   METHOD isResettable
   METHOD isDesignable
   METHOD isScriptable
   METHOD isStored
   METHOD isEditable
   METHOD isUser
   METHOD isConstant
   METHOD isFinal
   METHOD isFlagType
   METHOD isEnumType
   METHOD enumerator
   METHOD hasNotifySignal
   METHOD notifySignal
   METHOD notifySignalIndex
   METHOD revision
   METHOD read
   METHOD write
   METHOD reset
   METHOD hasStdCppSet
   METHOD isValid
   METHOD enclosingMetaObject
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QMetaProperty
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QMetaProperty
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QMetaProperty
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QMetaProperty
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QMetaProperty
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QMetaProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMetaProperty>

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

/*
QMetaProperty()
*/
HB_FUNC_STATIC( QMETAPROPERTY_NEW )
{
  QMetaProperty * o = NULL;
  o = new QMetaProperty (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMetaProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QMETAPROPERTY_DELETE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const char *name() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NAME )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->name (  );
    hb_retc( str1 );
  }
}


/*
const char *typeName() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_TYPENAME )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->typeName (  );
    hb_retc( str1 );
  }
}


/*
QVariant::Type type() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_TYPE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
int userType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_USERTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->userType (  );
    hb_retni( i );
  }
}


/*
int propertyIndex() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_PROPERTYINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->propertyIndex (  );
    hb_retni( i );
  }
}


/*
bool isReadable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISREADABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isReadable (  ) );
  }
}


/*
bool isWritable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISWRITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
bool isResettable() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISRESETTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isResettable (  ) );
  }
}


/*
bool isDesignable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISDESIGNABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isDesignable ( par1 ) );
  }
}


/*
bool isScriptable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSCRIPTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isScriptable ( par1 ) );
  }
}


/*
bool isStored(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISSTORED )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isStored ( par1 ) );
  }
}


/*
bool isEditable(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISEDITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isEditable ( par1 ) );
  }
}


/*
bool isUser(const QObject *obj = 0) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISUSER )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isUser ( par1 ) );
  }
}


/*
bool isConstant() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISCONSTANT )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isConstant (  ) );
  }
}


/*
bool isFinal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISFINAL )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFinal (  ) );
  }
}


/*
bool isFlagType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISFLAGTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isFlagType (  ) );
  }
}


/*
bool isEnumType() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISENUMTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEnumType (  ) );
  }
}


/*
QMetaEnum enumerator() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENUMERATOR )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaEnum * ptr = new QMetaEnum( obj->enumerator (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAENUM" );
  }
}


/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_HASNOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasNotifySignal (  ) );
  }
}


/*
QMetaMethod notifySignal() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->notifySignal (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
int notifySignalIndex() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_NOTIFYSIGNALINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->notifySignalIndex (  );
    hb_retni( i );
  }
}


/*
int revision() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_REVISION )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->revision (  );
    hb_retni( i );
  }
}


/*
QVariant read(const QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_READ )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->read ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool write(QObject *obj, const QVariant &value) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_WRITE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->write ( par1, *par2 ) );
  }
}


/*
bool reset(QObject *obj) const
*/
HB_FUNC_STATIC( QMETAPROPERTY_RESET )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->reset ( par1 ) );
  }
}


/*
bool hasStdCppSet() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_HASSTDCPPSET )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasStdCppSet (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ISVALID )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAPROPERTY_ENCLOSINGMETAOBJECT )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}





#pragma ENDDUMP
