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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGesture ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=GestureCancelPolicy gestureCancelPolicy () const
$method=|QGesture::GestureCancelPolicy|gestureCancelPolicy|

$prototype=Qt::GestureType gestureType () const
$method=|Qt::GestureType|gestureType|

$prototypeV2=bool hasHotSpot() const

$prototype=QPointF hotSpot () const
$method=|QPointF|hotSpot|

$prototype=void setGestureCancelPolicy ( GestureCancelPolicy policy )
$method=|void|setGestureCancelPolicy|QGesture::GestureCancelPolicy

$prototype=void setHotSpot ( const QPointF & value )
$method=|void|setHotSpot|const QPointF &

$prototype=Qt::GestureState state () const
$method=|Qt::GestureState|state|

$prototype=void unsetHotSpot ()
$method=|void|unsetHotSpot|

#pragma ENDDUMP
