%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimeLine ( int duration = 1000, QObject * parent = 0 )
$constructor=|new|int=1000,QObject *=0

$deleteMethod

$prototypeV2=int currentFrame() const

$prototypeV2=int currentTime() const

$prototypeV2=qreal currentValue() const

$prototype=CurveShape curveShape () const
$method=|QTimeLine::CurveShape|curveShape|

$prototype=Direction direction () const
$method=|QTimeLine::Direction|direction|

$prototypeV2=int duration() const

$prototypeV2=int endFrame() const

$prototype=int frameForTime ( int msec ) const
$method=|int|frameForTime|int

$prototypeV2=int loopCount() const

$prototype=void setCurveShape ( CurveShape shape )
$method=|void|setCurveShape|QTimeLine::CurveShape

$prototype=void setDirection ( Direction direction )
$method=|void|setDirection|QTimeLine::Direction

$prototype=void setDuration ( int duration )
$method=|void|setDuration|int

$prototype=void setEasingCurve ( const QEasingCurve & curve )
$method=|void|setEasingCurve|const QEasingCurve &

$prototype=void setEndFrame ( int frame )
$method=|void|setEndFrame|int

$prototype=void setFrameRange ( int startFrame, int endFrame )
$method=|void|setFrameRange|int,int

$prototype=void setLoopCount ( int count )
$method=|void|setLoopCount|int

$prototype=void setStartFrame ( int frame )
$method=|void|setStartFrame|int

$prototype=void setUpdateInterval ( int interval )
$method=|void|setUpdateInterval|int

$prototypeV2=int startFrame() const

$prototype=State state () const
$method=|QTimeLine::State|state|

$prototypeV2=int updateInterval() const

$prototype=virtual qreal valueForTime ( int msec ) const
$virtualMethod=|qreal|valueForTime|int

$prototype=void resume ()
$method=|void|resume|

$prototype=void setCurrentTime ( int msec )
$method=|void|setCurrentTime|int

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

$prototype=void start ()
$method=|void|start|

$prototype=void stop ()
$method=|void|stop|

$prototype=void toggleDirection ()
$method=|void|toggleDirection|

$beginSignals
$signal=|finished()
$signal=|frameChanged(int)
$signal=|stateChanged(QTimeLine::State)
$signal=|valueChanged(qreal)
$endSignals

#pragma ENDDUMP
