$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
REQUEST QRECT
REQUEST UCHAR
#endif

CLASS QDirectPainter INHERIT QObject

   METHOD new
   METHOD delete
   METHOD allocatedRegion
   METHOD endPainting
   METHOD flush
   METHOD geometry
   METHOD lower
   METHOD raise
   METHOD regionChanged
   METHOD requestedRegion
   METHOD setGeometry
   METHOD setRegion
   METHOD startPainting
   METHOD frameBuffer
   METHOD linestep
   METHOD lock
   METHOD screenDepth
   METHOD screenHeight
   METHOD screenWidth
   METHOD unlock

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDirectPainter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDirectPainter ( QObject * parent = 0, SurfaceFlag flag = NonReserved )
*/
HB_FUNC_STATIC( QDIRECTPAINTER_NEW )
{
  int par2 = ISNIL(2)? (int) QDirectPainter::NonReserved : hb_parni(2);
  QDirectPainter * o = new QDirectPainter ( OPQOBJECT(1,0), (QDirectPainter::SurfaceFlag) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QRegion allocatedRegion () const
*/
$method=|QRegion|allocatedRegion|

/*
void endPainting ()
*/
$internalMethod=|void|endPainting,endPainting1|

/*
void endPainting ( const QRegion & region )
*/
$internalMethod=|void|endPainting,endPainting2|const QRegion &

//[1]void endPainting ()
//[2]void endPainting ( const QRegion & region )

HB_FUNC_STATIC( QDIRECTPAINTER_ENDPAINTING )
{
  if( ISNUMPAR(0) )
  {
    QDirectPainter_endPainting1();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QDirectPainter_endPainting2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void flush ( const QRegion & region )
*/
$method=|void|flush|const QRegion &

/*
QRect geometry () const
*/
$method=|QRect|geometry|

/*
void lower ()
*/
$method=|void|lower|

/*
void raise ()
*/
$method=|void|raise|

/*
virtual void regionChanged ( const QRegion & newRegion )
*/
$virtualMethod=|void|regionChanged|const QRegion &

/*
QRegion requestedRegion () const
*/
$method=|QRegion|requestedRegion|

/*
void setGeometry ( const QRect & rectangle )
*/
$method=|void|setGeometry|const QRect &

/*
void setRegion ( const QRegion & region )
*/
$method=|void|setRegion|const QRegion &

/*
void startPainting ( bool lockDisplay = true )
*/
$method=|void|startPainting|bool=true

/*
uchar * frameBuffer ()
*/
HB_FUNC_STATIC( QDIRECTPAINTER_FRAMEBUFFER )
{
  uchar * ptr = QDirectPainter::frameBuffer ();
  _qt4xhb_createReturnClass ( ptr, "UCHAR" );
}

/*
static int linestep ()
*/
$staticMethod=|int|linestep|

/*
static void lock ()
*/
$staticMethod=|void|lock|

/*
static int screenDepth ()
*/
$staticMethod=|int|screenDepth|

/*
static int screenHeight ()
*/
$staticMethod=|int|screenHeight|

/*
static int screenWidth ()
*/
$staticMethod=|int|screenWidth|

/*
static void unlock ()
*/
$staticMethod=|void|unlock|

#pragma ENDDUMP
