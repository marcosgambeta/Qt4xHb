%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGradient

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QConicalGradient()
$internalConstructor=|new1|

$prototype=QConicalGradient(const QPointF &center, qreal startAngle)
$internalConstructor=|new2|const QPointF &,qreal

$prototype=QConicalGradient(qreal cx, qreal cy, qreal startAngle)
$internalConstructor=|new3|qreal,qreal,qreal

/*
[1]QConicalGradient()
[2]QConicalGradient(const QPointF &center, qreal startAngle)
[3]QConicalGradient(qreal cx, qreal cy, qreal startAngle)
*/

HB_FUNC_STATIC( QCONICALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QConicalGradient_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    QConicalGradient_new2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QConicalGradient_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=qreal angle() const

$prototype=QPointF center () const
$method=|QPointF|center|

$prototype=void setAngle ( qreal angle )
$method=|void|setAngle|qreal

$prototype=void setCenter ( const QPointF & center )
$internalMethod=|void|setCenter,setCenter1|const QPointF &

$prototype=void setCenter ( qreal x, qreal y )
$internalMethod=|void|setCenter,setCenter2|qreal,qreal

/*
[1]void setCenter ( const QPointF & center )
[2]void setCenter ( qreal x, qreal y )
*/

HB_FUNC_STATIC( QCONICALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QConicalGradient_setCenter1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QConicalGradient_setCenter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCenter

#pragma ENDDUMP
