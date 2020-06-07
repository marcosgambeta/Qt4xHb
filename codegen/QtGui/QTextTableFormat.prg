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

$beginClassFrom=QTextFrameFormat

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextTableFormat ()
$constructor=|new|

$deleteMethod

$prototype=Qt::Alignment alignment () const
$method=|Qt::Alignment|alignment|

$prototypeV2=qreal cellPadding() const

$prototypeV2=qreal cellSpacing() const

$prototype=void clearColumnWidthConstraints ()
$method=|void|clearColumnWidthConstraints|

$prototype=QVector<QTextLength> columnWidthConstraints () const
$method=|QVector<QTextLength>|columnWidthConstraints|

$prototypeV2=int columns() const

$prototypeV2=int headerRowCount() const

$prototypeV2=bool isValid() const

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=void setCellPadding ( qreal padding )
$method=|void|setCellPadding|qreal

$prototype=void setCellSpacing ( qreal spacing )
$method=|void|setCellSpacing|qreal

$prototype=void setColumnWidthConstraints ( const QVector<QTextLength> & constraints )
$method=|void|setColumnWidthConstraints|const QVector<QTextLength> &

$prototype=void setHeaderRowCount ( int count )
$method=|void|setHeaderRowCount|int

#pragma ENDDUMP
