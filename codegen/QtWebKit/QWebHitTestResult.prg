%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWebKit/QWebElement>

$prototype=QWebHitTestResult ()
$internalConstructor=|new1|

$prototype=QWebHitTestResult ( const QWebHitTestResult & other )
$internalConstructor=|new2|const QWebHitTestResult &

/*
[1]QWebHitTestResult ()
[2]QWebHitTestResult ( const QWebHitTestResult & other )
*/

HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWebHitTestResult_new1();
  }
  else if( ISNUMPAR(1) && ISQWEBHITTESTRESULT(1) )
  {
    QWebHitTestResult_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QString alternateText () const
$method=|QString|alternateText|

$prototype=QRect boundingRect () const
$method=|QRect|boundingRect|

$prototype=QWebElement element () const
$method=|QWebElement|element|

$prototype=QWebElement enclosingBlockElement () const
$method=|QWebElement|enclosingBlockElement|

$prototype=QWebFrame * frame () const
$method=|QWebFrame *|frame|

$prototype=QUrl imageUrl () const
$method=|QUrl|imageUrl|

$prototypeV2=bool isContentEditable() const

$prototypeV2=bool isContentSelected() const

$prototypeV2=bool isNull() const

$prototype=QWebElement linkElement () const
$method=|QWebElement|linkElement|

$prototype=QWebFrame * linkTargetFrame () const
$method=|QWebFrame *|linkTargetFrame|

$prototype=QString linkText () const
$method=|QString|linkText|

$prototype=QUrl linkTitle () const
$method=|QUrl|linkTitle|

$prototype=QUrl linkUrl () const
$method=|QUrl|linkUrl|

$prototype=QPixmap pixmap () const
$method=|QPixmap|pixmap|

$prototype=QPoint pos () const
$method=|QPoint|pos|

$prototype=QString title () const
$method=|QString|title|

$extraMethods

#pragma ENDDUMP
