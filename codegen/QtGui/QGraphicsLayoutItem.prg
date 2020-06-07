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

$deleteMethod

$prototype=QRectF contentsRect () const
$method=|QRectF|contentsRect|

$prototype=QSizeF effectiveSizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
$method=|QSizeF|effectiveSizeHint|Qt::SizeHint,const QSizeF &=QSizeF()

$prototype=QRectF geometry () const
$method=|QRectF|geometry|

$prototype=virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$virtualMethod=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

$prototype=QGraphicsItem * graphicsItem () const
$method=|QGraphicsItem *|graphicsItem|

$prototypeV2=bool isLayout() const

$prototypeV2=qreal maximumHeight() const

$prototype=QSizeF maximumSize () const
$method=|QSizeF|maximumSize|

$prototypeV2=qreal maximumWidth() const

$prototypeV2=qreal minimumHeight() const

$prototype=QSizeF minimumSize () const
$method=|QSizeF|minimumSize|

$prototypeV2=qreal minimumWidth() const

$prototypeV2=bool ownedByLayout() const

$prototype=QGraphicsLayoutItem * parentLayoutItem () const
$method=|QGraphicsLayoutItem *|parentLayoutItem|

$prototypeV2=qreal preferredHeight() const

$prototype=QSizeF preferredSize () const
$method=|QSizeF|preferredSize|

$prototypeV2=qreal preferredWidth() const

$prototype=virtual void setGeometry ( const QRectF & rect )
$virtualMethod=|void|setGeometry|const QRectF &

$prototype=void setMaximumHeight ( qreal height )
$method=|void|setMaximumHeight|qreal

$prototype=void setMaximumSize ( const QSizeF & size )
$internalMethod=|void|setMaximumSize,setMaximumSize1|const QSizeF &

$prototype=void setMaximumSize ( qreal w, qreal h )
$internalMethod=|void|setMaximumSize,setMaximumSize2|qreal,qreal

/*
[1]void setMaximumSize ( const QSizeF & size )
[2]void setMaximumSize ( qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setMaximumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setMaximumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setMaximumSize

$prototype=void setMaximumWidth ( qreal width )
$method=|void|setMaximumWidth|qreal

$prototype=void setMinimumHeight ( qreal height )
$method=|void|setMinimumHeight|qreal

$prototype=void setMinimumSize ( const QSizeF & size )
$internalMethod=|void|setMinimumSize,setMinimumSize1|const QSizeF &

$prototype=void setMinimumSize ( qreal w, qreal h )
$internalMethod=|void|setMinimumSize,setMinimumSize2|qreal,qreal

/*
[1]void setMinimumSize ( const QSizeF & size )
[2]void setMinimumSize ( qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setMinimumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setMinimumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setMinimumSize

$prototype=void setMinimumWidth ( qreal width )
$method=|void|setMinimumWidth|qreal

$prototype=void setParentLayoutItem ( QGraphicsLayoutItem * parent )
$method=|void|setParentLayoutItem|QGraphicsLayoutItem *

$prototype=void setPreferredHeight ( qreal height )
$method=|void|setPreferredHeight|qreal

$prototype=void setPreferredSize ( const QSizeF & size )
$internalMethod=|void|setPreferredSize,setPreferredSize1|const QSizeF &

$prototype=void setPreferredSize ( qreal w, qreal h )
$internalMethod=|void|setPreferredSize,setPreferredSize2|qreal,qreal

/*
[1]void setPreferredSize ( const QSizeF & size )
[2]void setPreferredSize ( qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETPREFERREDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsLayoutItem_setPreferredSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsLayoutItem_setPreferredSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPreferredSize

$prototype=void setPreferredWidth ( qreal width )
$method=|void|setPreferredWidth|qreal

$prototype=void setSizePolicy ( const QSizePolicy & policy )
$internalMethod=|void|setSizePolicy,setSizePolicy1|const QSizePolicy &

$prototype=void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )
$internalMethod=|void|setSizePolicy,setSizePolicy2|QSizePolicy::Policy,QSizePolicy::Policy,QSizePolicy::ControlType=QSizePolicy::DefaultType

/*
[1]void setSizePolicy ( const QSizePolicy & policy )
[2]void setSizePolicy ( QSizePolicy::Policy hPolicy, QSizePolicy::Policy vPolicy, QSizePolicy::ControlType controlType = QSizePolicy::DefaultType )
*/

HB_FUNC_STATIC( QGRAPHICSLAYOUTITEM_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    QGraphicsLayoutItem_setSizePolicy1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QGraphicsLayoutItem_setSizePolicy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSizePolicy

$prototype=QSizePolicy sizePolicy () const
$method=|QSizePolicy|sizePolicy|

$prototype=virtual void updateGeometry ()
$virtualMethod=|void|updateGeometry|

#pragma ENDDUMP
