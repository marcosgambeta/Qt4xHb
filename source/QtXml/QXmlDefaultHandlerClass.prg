/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QXmlDefaultHandler INHERIT QXmlContentHandler,QXmlErrorHandler,QXmlDTDHandler,QXmlEntityResolver,QXmlLexicalHandler,QXmlDeclHandler

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD attributeDecl
   METHOD characters
   METHOD comment
   METHOD endCDATA
   METHOD endDTD
   METHOD endDocument
   METHOD endElement
   METHOD endEntity
   METHOD endPrefixMapping
   METHOD error
   METHOD errorString
   METHOD externalEntityDecl
   METHOD fatalError
   METHOD ignorableWhitespace
   METHOD internalEntityDecl
   METHOD notationDecl
   METHOD processingInstruction
   METHOD setDocumentLocator
   METHOD skippedEntity
   METHOD startCDATA
   METHOD startDTD
   METHOD startDocument
   METHOD startElement
   METHOD startEntity
   METHOD startPrefixMapping
   METHOD unparsedEntityDecl
   METHOD warning

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlDefaultHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlDefaultHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlDefaultHandler ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlDefaultHandler * o = new QXmlDefaultHandler ();
    _qt4xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLDEFAULTHANDLER_DELETE )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ATTRIBUTEDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(5) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) && ISCHAR(5) )
    {
      RBOOL( obj->attributeDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4), PQSTRING(5) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool characters ( const QString & ch )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_CHARACTERS )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->characters ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool comment ( const QString & ch )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_COMMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->comment ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool endCDATA ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDCDATA )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->endCDATA () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool endDTD ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDDTD )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->endDTD () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool endDocument ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDDOCUMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->endDocument () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool endElement ( const QString & namespaceURI, const QString & localName, const QString & qName )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDELEMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
    {
      RBOOL( obj->endElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool endEntity ( const QString & name )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->endEntity ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool endPrefixMapping ( const QString & prefix )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ENDPREFIXMAPPING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->endPrefixMapping ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool error ( const QXmlParseException & exception )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ERROR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLPARSEEXCEPTION(1) )
    {
      RBOOL( obj->error ( *PQXMLPARSEEXCEPTION(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString errorString () const
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_ERRORSTRING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_EXTERNALENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
    {
      RBOOL( obj->externalEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool fatalError ( const QXmlParseException & exception )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_FATALERROR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLPARSEEXCEPTION(1) )
    {
      RBOOL( obj->fatalError ( *PQXMLPARSEEXCEPTION(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool ignorableWhitespace ( const QString & ch )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_IGNORABLEWHITESPACE )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->ignorableWhitespace ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool internalEntityDecl ( const QString & name, const QString & value )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_INTERNALENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      RBOOL( obj->internalEntityDecl ( PQSTRING(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId )
*/

/*
virtual bool processingInstruction ( const QString & target, const QString & data )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_PROCESSINGINSTRUCTION )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      RBOOL( obj->processingInstruction ( PQSTRING(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setDocumentLocator ( QXmlLocator * locator )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_SETDOCUMENTLOCATOR )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLLOCATOR(1) )
    {
      obj->setDocumentLocator ( PQXMLLOCATOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool skippedEntity ( const QString & name )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_SKIPPEDENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->skippedEntity ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool startCDATA ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTCDATA )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->startCDATA () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId )
*/

/*
virtual bool startDocument ()
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTDOCUMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->startDocument () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool startElement ( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTELEMENT )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISQXMLATTRIBUTES(4) )
    {
      RBOOL( obj->startElement ( PQSTRING(1), PQSTRING(2), PQSTRING(3), *PQXMLATTRIBUTES(4) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool startEntity ( const QString & name )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTENTITY )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->startEntity ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool startPrefixMapping ( const QString & prefix, const QString & uri )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_STARTPREFIXMAPPING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      RBOOL( obj->startPrefixMapping ( PQSTRING(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_UNPARSEDENTITYDECL )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(4) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) && ISCHAR(4) )
    {
      RBOOL( obj->unparsedEntityDecl ( PQSTRING(1), PQSTRING(2), PQSTRING(3), PQSTRING(4) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool warning ( const QXmlParseException & exception )
*/
HB_FUNC_STATIC( QXMLDEFAULTHANDLER_WARNING )
{
  QXmlDefaultHandler * obj = (QXmlDefaultHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLPARSEEXCEPTION(1) )
    {
      RBOOL( obj->warning ( *PQXMLPARSEEXCEPTION(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
