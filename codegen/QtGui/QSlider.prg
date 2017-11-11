$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSlider INHERIT QAbstractSlider

   METHOD new
   METHOD delete
   METHOD setTickInterval
   METHOD setTickPosition
   METHOD tickInterval
   METHOD tickPosition
   METHOD event
   METHOD minimumSizeHint
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSlider>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSlider ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QSlider ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

//[1]QSlider ( QWidget * parent = 0 )
//[2]QSlider ( Qt::Orientation orientation, QWidget * parent = 0 )

HB_FUNC_STATIC( QSLIDER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QSlider_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QSlider_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setTickInterval ( int ti )
*/
$method=|void|setTickInterval|int

/*
void setTickPosition ( TickPosition position )
*/
$method=|void|setTickPosition|QSlider::TickPosition

/*
int tickInterval () const
*/
$method=|int|tickInterval|

/*
TickPosition tickPosition () const
*/
$method=|QSlider::TickPosition|tickPosition|

/*
virtual bool event ( QEvent * event )
*/
$virtualMethod=|bool|event|QEvent *

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
