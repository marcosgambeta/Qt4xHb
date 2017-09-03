$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATE
#endif

CLASS QDate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addDays
   METHOD addMonths
   METHOD addYears
   METHOD day
   METHOD dayOfWeek
   METHOD dayOfYear
   METHOD daysInMonth
   METHOD daysInYear
   METHOD daysTo
   METHOD getDate
   METHOD isNull
   METHOD isValid1
   METHOD month
   METHOD setDate
   METHOD toJulianDay
   METHOD toString1
   METHOD toString2
   METHOD toString
   METHOD weekNumber
   METHOD year
   METHOD currentDate
   METHOD fromJulianDay
   METHOD fromString1
   METHOD fromString2
   METHOD fromString
   METHOD isLeapYear
   METHOD isValid2
   METHOD isValid
   METHOD longDayName1
   METHOD longDayName2
   METHOD longDayName
   METHOD longMonthName1
   METHOD longMonthName2
   METHOD longMonthName
   METHOD shortDayName1
   METHOD shortDayName2
   METHOD shortDayName
   METHOD shortMonthName1
   METHOD shortMonthName2
   METHOD shortMonthName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDate ()
*/
HB_FUNC_STATIC( QDATE_NEW1 )
{
  QDate * o = new QDate ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDate ( int y, int m, int d )
*/
HB_FUNC_STATIC( QDATE_NEW2 )
{
  QDate * o = new QDate ( PINT(1), PINT(2), PINT(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDate ()
//[2]QDate ( int y, int m, int d )

HB_FUNC_STATIC( QDATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATE_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDATE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QDATE_DELETE )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDate addDays ( int ndays ) const
*/
HB_FUNC_STATIC( QDATE_ADDDAYS )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->addDays ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QDate addMonths ( int nmonths ) const
*/
HB_FUNC_STATIC( QDATE_ADDMONTHS )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->addMonths ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QDate addYears ( int nyears ) const
*/
HB_FUNC_STATIC( QDATE_ADDYEARS )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->addYears ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
int day () const
*/
HB_FUNC_STATIC( QDATE_DAY )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->day () );
  }
}


/*
int dayOfWeek () const
*/
HB_FUNC_STATIC( QDATE_DAYOFWEEK )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->dayOfWeek () );
  }
}


/*
int dayOfYear () const
*/
HB_FUNC_STATIC( QDATE_DAYOFYEAR )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->dayOfYear () );
  }
}


/*
int daysInMonth () const
*/
HB_FUNC_STATIC( QDATE_DAYSINMONTH )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->daysInMonth () );
  }
}


/*
int daysInYear () const
*/
HB_FUNC_STATIC( QDATE_DAYSINYEAR )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->daysInYear () );
  }
}


/*
int daysTo ( const QDate & d ) const
*/
HB_FUNC_STATIC( QDATE_DAYSTO )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->daysTo ( *PQDATE(1) ) );
  }
}


/*
void getDate ( int * year, int * month, int * day )
*/
HB_FUNC_STATIC( QDATE_GETDATE )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    int par2;
    int par3;
    obj->getDate ( &par1, &par2, &par3 );
    hb_storni( par1, 1 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QDATE_ISNULL )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QDATE_ISVALID1 )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int month () const
*/
HB_FUNC_STATIC( QDATE_MONTH )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->month () );
  }
}


/*
bool setDate ( int year, int month, int day )
*/
HB_FUNC_STATIC( QDATE_SETDATE )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->setDate ( PINT(1), PINT(2), PINT(3) ) );
  }
}


/*
int toJulianDay () const
*/
HB_FUNC_STATIC( QDATE_TOJULIANDAY )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->toJulianDay () );
  }
}


/*
QString toString ( const QString & format ) const
*/
HB_FUNC_STATIC( QDATE_TOSTRING1 )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( PQSTRING(1) ) );
  }
}


/*
QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/
HB_FUNC_STATIC( QDATE_TOSTRING2 )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( ISNIL(1)? Qt::TextDate : (Qt::DateFormat) hb_parni(1) ) );
  }
}


//[1]QString toString ( const QString & format ) const
//[2]QString toString ( Qt::DateFormat format = Qt::TextDate ) const

HB_FUNC_STATIC( QDATE_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDATE_TOSTRING1 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDATE_TOSTRING2 );
  }
}

/*
int weekNumber ( int * yearNumber = 0 ) const
*/
HB_FUNC_STATIC( QDATE_WEEKNUMBER )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1;
    RINT( obj->weekNumber ( &par1 ) );
    hb_storni( par1, 1 );
  }
}


/*
int year () const
*/
HB_FUNC_STATIC( QDATE_YEAR )
{
  QDate * obj = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->year () );
  }
}



/*
QDate currentDate ()
*/
HB_FUNC_STATIC( QDATE_CURRENTDATE )
{
  QDate * ptr = new QDate( QDate::currentDate () );
  _qt4xhb_createReturnClass ( ptr, "QDATE", true );
}


/*
QDate fromJulianDay ( int jd )
*/
HB_FUNC_STATIC( QDATE_FROMJULIANDAY )
{
  QDate * ptr = new QDate( QDate::fromJulianDay ( PINT(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QDATE", true );
}


/*
QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
HB_FUNC_STATIC( QDATE_FROMSTRING1 )
{
  QDate * ptr = new QDate( QDate::fromString ( PQSTRING(1), ISNIL(2)? Qt::TextDate : (Qt::DateFormat) hb_parni(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QDATE", true );
}


/*
QDate fromString ( const QString & string, const QString & format )
*/
HB_FUNC_STATIC( QDATE_FROMSTRING2 )
{
  QDate * ptr = new QDate( QDate::fromString ( PQSTRING(1), PQSTRING(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QDATE", true );
}


//[1]QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
//[2]QDate fromString ( const QString & string, const QString & format )

HB_FUNC_STATIC( QDATE_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATE_FROMSTRING1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDATE_FROMSTRING2 );
  }
}

/*
bool isLeapYear ( int year )
*/
HB_FUNC_STATIC( QDATE_ISLEAPYEAR )
{
  RBOOL( QDate::isLeapYear ( PINT(1) ) );
}


/*
bool isValid ( int year, int month, int day )
*/
HB_FUNC_STATIC( QDATE_ISVALID2 )
{
  RBOOL( QDate::isValid ( PINT(1), PINT(2), PINT(3) ) );
}


//[1]bool isValid () const
//[2]bool isValid ( int year, int month, int day )

HB_FUNC_STATIC( QDATE_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATE_ISVALID1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDATE_ISVALID2 );
  }
}

/*
QString longDayName ( int weekday )
*/
HB_FUNC_STATIC( QDATE_LONGDAYNAME1 )
{
  RQSTRING( QDate::longDayName ( PINT(1) ) );
}


/*
QString longDayName ( int weekday, MonthNameType type )
*/
HB_FUNC_STATIC( QDATE_LONGDAYNAME2 )
{
  RQSTRING( QDate::longDayName ( PINT(1), (QDate::MonthNameType) hb_parni(2) ) );
}


//[1]QString longDayName ( int weekday )
//[2]QString longDayName ( int weekday, MonthNameType type )

HB_FUNC_STATIC( QDATE_LONGDAYNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_LONGDAYNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_LONGDAYNAME2 );
  }
}

/*
QString longMonthName ( int month )
*/
HB_FUNC_STATIC( QDATE_LONGMONTHNAME1 )
{
  RQSTRING( QDate::longMonthName ( PINT(1) ) );
}


/*
QString longMonthName ( int month, MonthNameType type )
*/
HB_FUNC_STATIC( QDATE_LONGMONTHNAME2 )
{
  RQSTRING( QDate::longMonthName ( PINT(1), (QDate::MonthNameType) hb_parni(2) ) );
}


//[1]QString longMonthName ( int month )
//[2]QString longMonthName ( int month, MonthNameType type )

HB_FUNC_STATIC( QDATE_LONGMONTHNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_LONGMONTHNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_LONGMONTHNAME2 );
  }
}

/*
QString shortDayName ( int weekday )
*/
HB_FUNC_STATIC( QDATE_SHORTDAYNAME1 )
{
  RQSTRING( QDate::shortDayName ( PINT(1) ) );
}


/*
QString shortDayName ( int weekday, MonthNameType type )
*/
HB_FUNC_STATIC( QDATE_SHORTDAYNAME2 )
{
  RQSTRING( QDate::shortDayName ( PINT(1), (QDate::MonthNameType) hb_parni(2) ) );
}


//[1]QString shortDayName ( int weekday )
//[2]QString shortDayName ( int weekday, MonthNameType type )

HB_FUNC_STATIC( QDATE_SHORTDAYNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_SHORTDAYNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_SHORTDAYNAME2 );
  }
}

/*
QString shortMonthName ( int month )
*/
HB_FUNC_STATIC( QDATE_SHORTMONTHNAME1 )
{
  RQSTRING( QDate::shortMonthName ( PINT(1) ) );
}


/*
QString shortMonthName ( int month, MonthNameType type )
*/
HB_FUNC_STATIC( QDATE_SHORTMONTHNAME2 )
{
  RQSTRING( QDate::shortMonthName ( PINT(1), (QDate::MonthNameType) hb_parni(2) ) );
}


//[1]QString shortMonthName ( int month )
//[2]QString shortMonthName ( int month, MonthNameType type )

HB_FUNC_STATIC( QDATE_SHORTMONTHNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_SHORTMONTHNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_SHORTMONTHNAME2 );
  }
}


HB_FUNC_STATIC( QDATE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDATE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDATE_NEWFROM );
}

HB_FUNC_STATIC( QDATE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDATE_NEWFROM );
}

HB_FUNC_STATIC( QDATE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDATE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP