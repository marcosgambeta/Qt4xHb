%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QIODevice

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLocalSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void abort()

$prototype=void connectToServer ( const QString & name, OpenMode openMode = ReadWrite )
$method=|void|connectToServer|const QString &,QIODevice::OpenMode=QIODevice::ReadWrite

$prototypeV2=void disconnectFromServer()

$prototypeV2=QLocalSocket::LocalSocketError error() const

$prototypeV2=bool flush()

$prototypeV2=QString fullServerName() const

$prototypeV2=bool isValid() const

$prototypeV2=qint64 readBufferSize() const

$prototypeV2=QString serverName() const

$prototypeV2=void setReadBufferSize( qint64 size )

$prototypeV2=QLocalSocket::LocalSocketState state() const

$prototype=bool waitForConnected ( int msecs = 30000 )
$method=|bool|waitForConnected|int=30000

$prototype=bool waitForDisconnected ( int msecs = 30000 )
$method=|bool|waitForDisconnected|int=30000

$prototypeV2=virtual qint64 bytesAvailable() const

$prototypeV2=virtual qint64 bytesToWrite() const

$prototypeV2=virtual bool canReadLine() const

$prototypeV2=virtual void close()

$prototypeV2=virtual bool isSequential() const

$prototype=virtual bool waitForBytesWritten ( int msecs = 30000 )
$virtualMethod=|bool|waitForBytesWritten|int=30000

$prototype=virtual bool waitForReadyRead ( int msecs = 30000 )
$virtualMethod=|bool|waitForReadyRead|int=30000

$beginSignals
$signal=|connected()
$signal=|disconnected()
$signal=|error(QLocalSocket::LocalSocketError)
$signal=|stateChanged(QLocalSocket::LocalSocketState)
$endSignals

#pragma ENDDUMP
