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

$beginClassFrom=QAbstractScrollArea

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollArea ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototype=void ensureVisible ( int x, int y, int xmargin = 50, int ymargin = 50 )
$method=|void|ensureVisible|int,int,int=50,int=50

$prototype=void ensureWidgetVisible ( QWidget * childWidget, int xmargin = 50, int ymargin = 50 )
$method=|void|ensureWidgetVisible|QWidget *,int=50,int=50

$prototype=void setAlignment ( Qt::Alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=void setWidgetResizable ( bool resizable )
$method=|void|setWidgetResizable|bool

$prototype=QWidget * takeWidget ()
$method=|QWidget *|takeWidget|

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

$prototypeV2=bool widgetResizable() const

$prototype=virtual bool focusNextPrevChild ( bool next )
$virtualMethod=|bool|focusNextPrevChild|bool

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP
