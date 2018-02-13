%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|contentsChanged()
$slot=|databaseQuotaExceeded( QWebFrame * frame, QString databaseName )
$slot=|downloadRequested( const QNetworkRequest & request )
$slot=|frameCreated( QWebFrame * frame )
$slot=|geometryChangeRequested( const QRect & geom )
$slot=|linkClicked( const QUrl & url )
$slot=|linkHovered( const QString & link, const QString & title, const QString & textContent )
$slot=|loadFinished( bool ok )
$slot=|loadProgress( int progress )
$slot=|loadStarted()
$slot=|menuBarVisibilityChangeRequested( bool visible )
$slot=|microFocusChanged()
$slot=|printRequested( QWebFrame * frame )
$slot=|repaintRequested( const QRect & dirtyRect )
$slot=|restoreFrameStateRequested( QWebFrame * frame )
$slot=|saveFrameStateRequested( QWebFrame * frame, QWebHistoryItem * item )
$slot=|scrollRequested( int dx, int dy, const QRect & rectToScroll )
$slot=|selectionChanged()
$slot=|statusBarMessage( const QString & text )
$slot=|statusBarVisibilityChangeRequested( bool visible )
$slot=|toolBarVisibilityChangeRequested( bool visible )
$slot=|unsupportedContent( QNetworkReply * reply )
$slot=|windowCloseRequested()
$endSlotsClass

$signalMethod=|contentsChanged()
$signalMethod=|databaseQuotaExceeded(QWebFrame*,QString)
$signalMethod=|downloadRequested(QNetworkRequest)
$signalMethod=|frameCreated(QWebFrame*)
$signalMethod=|geometryChangeRequested(QRect)
$signalMethod=|linkClicked(QUrl)
$signalMethod=|linkHovered(QString,QString,QString)
$signalMethod=|loadFinished(bool)
$signalMethod=|loadProgress(int)
$signalMethod=|loadStarted()
$signalMethod=|menuBarVisibilityChangeRequested(bool)
$signalMethod=|microFocusChanged()
$signalMethod=|printRequested(QWebFrame*)
$signalMethod=|repaintRequested(QRect)
$signalMethod=|restoreFrameStateRequested(QWebFrame*)
$signalMethod=|saveFrameStateRequested(QWebFrame*,QWebHistoryItem*)
$signalMethod=|scrollRequested(int,int,QRect)
$signalMethod=|selectionChanged()
$signalMethod=|statusBarMessage(QString)
$signalMethod=|statusBarVisibilityChangeRequested(bool)
$signalMethod=|toolBarVisibilityChangeRequested(bool)
$signalMethod=|unsupportedContent(QNetworkReply*)
$signalMethod=|windowCloseRequested()