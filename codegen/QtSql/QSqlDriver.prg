%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtSql

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

#include <QSqlError>
#include <QSqlIndex>
#include <QSqlRecord>
#include <QVariant>

$deleteMethod

$prototype=virtual bool beginTransaction ()
$virtualMethod=|bool|beginTransaction|

$prototype=virtual void close () = 0
$virtualMethod=|void|close|

$prototype=virtual bool commitTransaction ()
$virtualMethod=|bool|commitTransaction|

$prototype=virtual QSqlResult * createResult () const = 0
$virtualMethod=|QSqlResult *|createResult|

$prototype=virtual QString escapeIdentifier ( const QString & identifier, IdentifierType type ) const
$virtualMethod=|QString|escapeIdentifier|const QString &,QSqlDriver::IdentifierType

$prototype=virtual QString formatValue ( const QSqlField & field, bool trimStrings = false ) const
$virtualMethod=|QString|formatValue|const QSqlField &,bool=false

$prototype=virtual QVariant handle () const
$virtualMethod=|QVariant|handle|

$prototype=virtual bool hasFeature ( DriverFeature feature ) const = 0
$virtualMethod=|bool|hasFeature|QSqlDriver::DriverFeature

$prototype=bool isIdentifierEscaped ( const QString & identifier, IdentifierType type ) const
$method=|bool|isIdentifierEscaped|const QString &,QSqlDriver::IdentifierType

$prototype=virtual bool isOpen () const
$virtualMethod=|bool|isOpen|

$prototype=bool isOpenError () const
$method=|bool|isOpenError|

$prototype=QSqlError lastError () const
$method=|QSqlError|lastError|

$prototype=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

$prototype=virtual bool open ( const QString & db, const QString & user = QString(), const QString & password = QString(), const QString & host = QString(), int port = -1, const QString & options = QString() ) = 0
$virtualMethod=|bool|open|const QString &,const QString &=QString(),const QString &=QString(),const QString &=QString(),int=-1,const QString &=QString()

$prototype=virtual QSqlIndex primaryIndex ( const QString & tableName ) const
$virtualMethod=|QSqlIndex|primaryIndex|const QString &

$prototype=virtual QSqlRecord record ( const QString & tableName ) const
$virtualMethod=|QSqlRecord|record|const QString &

$prototype=virtual bool rollbackTransaction ()
$virtualMethod=|bool|rollbackTransaction|

$prototype=void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

$prototype=virtual QString sqlStatement ( StatementType type, const QString & tableName, const QSqlRecord & rec, bool preparedStatement ) const
$virtualMethod=|QString|sqlStatement|QSqlDriver::StatementType,const QString &,const QSqlRecord &,bool

$prototype=QString stripDelimiters ( const QString & identifier, IdentifierType type ) const
$method=|QString|stripDelimiters|const QString &,QSqlDriver::IdentifierType

$prototype=bool subscribeToNotification ( const QString & name )
$method=|bool|subscribeToNotification|const QString &

$prototype=QStringList subscribedToNotifications () const
$method=|QStringList|subscribedToNotifications|

$prototype=virtual QStringList tables ( QSql::TableType tableType ) const
$virtualMethod=|QStringList|tables|QSql::TableType

$prototype=bool unsubscribeFromNotification ( const QString & name )
$method=|bool|unsubscribeFromNotification|const QString &

$beginSignals
$signal=|notification(QString)
$endSignals

#pragma ENDDUMP
