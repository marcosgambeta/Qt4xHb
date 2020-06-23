%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDomNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomProcessingInstruction ()
$internalConstructor=|new1|

$prototype=QDomProcessingInstruction ( const QDomProcessingInstruction & x )
$internalConstructor=|new2|const QDomProcessingInstruction &

/*
[1]QDomProcessingInstruction ()
[2]QDomProcessingInstruction ( const QDomProcessingInstruction & x )
*/

HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomProcessingInstruction_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMPROCESSINGINSTRUCTION(1) )
  {
    QDomProcessingInstruction_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=QString data() const

$prototypeV2=QDomNode::NodeType nodeType() const

$prototypeV2=void setData( const QString & d )

$prototypeV2=QString target() const

#pragma ENDDUMP
