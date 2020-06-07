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

$beginClassFrom=QTextEdit

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextBrowser ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototypeV2=int backwardHistoryCount() const

$prototype=void clearHistory ()
$method=|void|clearHistory|

$prototypeV2=int forwardHistoryCount() const

$prototype=QString historyTitle ( int i ) const
$method=|QString|historyTitle|int

$prototype=QUrl historyUrl ( int i ) const
$method=|QUrl|historyUrl|int

$prototypeV2=bool isBackwardAvailable() const

$prototypeV2=bool isForwardAvailable() const

$prototypeV2=bool openExternalLinks() const

$prototypeV2=bool openLinks() const

$prototype=QStringList searchPaths () const
$method=|QStringList|searchPaths|

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setOpenLinks ( bool open )
$method=|void|setOpenLinks|bool

$prototype=void setSearchPaths ( const QStringList & paths )
$method=|void|setSearchPaths|const QStringList &

$prototype=QUrl source () const
$method=|QUrl|source|

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototype=virtual void backward ()
$virtualMethod=|void|backward|

$prototype=virtual void forward ()
$virtualMethod=|void|forward|

$prototype=virtual void home ()
$virtualMethod=|void|home|

$prototype=virtual void reload ()
$virtualMethod=|void|reload|

$prototype=virtual void setSource ( const QUrl & name )
$virtualMethod=|void|setSource|const QUrl &

$beginSignals
$signal=|anchorClicked(QUrl)
$signal=|backwardAvailable(bool)
$signal=|forwardAvailable(bool)
$beginGroup
$signal=|highlighted(QUrl)
$signal=|highlighted(QString)
$endGroup
$signal=|historyChanged()
$signal=|sourceChanged(QUrl)
$endSignals

#pragma ENDDUMP
