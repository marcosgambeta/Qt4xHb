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

CLASS QDomNotation INHERIT QDomNode

   METHOD new
   METHOD nodeType
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomNotation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXml/QDomNotation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomNotation()
*/
void QDomNotation_new1()
{
  QDomNotation * obj = new QDomNotation();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QDomNotation( const QDomNotation & x )
*/
void QDomNotation_new2()
{
  QDomNotation * obj = new QDomNotation( *PQDOMNOTATION(1) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QDOMNOTATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomNotation_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMNOTATION(1) )
  {
    QDomNotation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomNode::NodeType nodeType() const
*/
HB_FUNC_STATIC( QDOMNOTATION_NODETYPE )
{
  QDomNotation * obj = (QDomNotation *) Qt4xHb::itemGetPtrStackSelfItem();

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

/*
QString publicId() const
*/
HB_FUNC_STATIC( QDOMNOTATION_PUBLICID )
{
  QDomNotation * obj = (QDomNotation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->publicId() );
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
QString systemId() const
*/
HB_FUNC_STATIC( QDOMNOTATION_SYSTEMID )
{
  QDomNotation * obj = (QDomNotation *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->systemId() );
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
