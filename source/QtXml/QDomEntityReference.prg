/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QDomEntityReference INHERIT QDomNode

   METHOD new
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomEntityReference
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXml/QDomEntityReference>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomEntityReference ()
*/
void QDomEntityReference_new1()
{
  QDomEntityReference * o = new QDomEntityReference();
  _qt4xhb_returnNewObject( o, true );
}

/*
QDomEntityReference ( const QDomEntityReference & x )
*/
void QDomEntityReference_new2()
{
  QDomEntityReference * o = new QDomEntityReference( *PQDOMENTITYREFERENCE(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QDomEntityReference ()
//[2]QDomEntityReference ( const QDomEntityReference & x )

HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomEntityReference_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMENTITYREFERENCE(1) )
  {
    QDomEntityReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NODETYPE )
{
  QDomEntityReference * obj = (QDomEntityReference *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
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
