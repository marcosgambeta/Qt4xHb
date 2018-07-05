%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QTextBlock>
#include <QTextDocumentFragment>
#include <QTextList>
#include <QTextTable>
#include <QTextDocument>

$prototype=QTextCursor ()
$internalConstructor=|new1|

$prototype=QTextCursor ( QTextDocument * document )
$internalConstructor=|new2|QTextDocument *

$prototype=QTextCursor ( QTextFrame * frame )
$internalConstructor=|new3|QTextFrame *

$prototype=QTextCursor ( const QTextBlock & block )
$internalConstructor=|new4|const QTextBlock &

$prototype=QTextCursor ( const QTextCursor & cursor )
$internalConstructor=|new5|const QTextCursor &

//[1]QTextCursor ()
//[2]QTextCursor ( QTextDocument * document )
//[3]QTextCursor ( QTextFrame * frame )
//[4]QTextCursor ( const QTextBlock & block )
//[5]QTextCursor ( const QTextCursor & cursor )

HB_FUNC_STATIC( QTEXTCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextCursor_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextCursor_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
  {
    QTextCursor_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    QTextCursor_new4();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextCursor_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int anchor () const
$method=|int|anchor|

$prototype=bool atBlockEnd () const
$method=|bool|atBlockEnd|

$prototype=bool atBlockStart () const
$method=|bool|atBlockStart|

$prototype=bool atEnd () const
$method=|bool|atEnd|

$prototype=bool atStart () const
$method=|bool|atStart|

$prototype=void beginEditBlock ()
$method=|void|beginEditBlock|

$prototype=QTextBlock block () const
$method=|QTextBlock|block|

$prototype=QTextCharFormat blockCharFormat () const
$method=|QTextCharFormat|blockCharFormat|

$prototype=QTextBlockFormat blockFormat () const
$method=|QTextBlockFormat|blockFormat|

$prototype=int blockNumber () const
$method=|int|blockNumber|

$prototype=QTextCharFormat charFormat () const
$method=|QTextCharFormat|charFormat|

$prototype=void clearSelection ()
$method=|void|clearSelection|

$prototype=int columnNumber () const
$method=|int|columnNumber|

$prototype=QTextList * createList ( const QTextListFormat & format )
$internalMethod=|QTextList *|createList,createList1|const QTextListFormat &

$prototype=QTextList * createList ( QTextListFormat::Style style )
$internalMethod=|QTextList *|createList,createList2|QTextListFormat::Style

//[1]QTextList * createList ( const QTextListFormat & format )
//[2]QTextList * createList ( QTextListFormat::Style style )

HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    QTextCursor_createList1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCursor_createList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextFrame * currentFrame () const
$method=|QTextFrame *|currentFrame|

$prototype=QTextList * currentList () const
$method=|QTextList *|currentList|

$prototype=QTextTable * currentTable () const
$method=|QTextTable *|currentTable|

$prototype=void deleteChar ()
$method=|void|deleteChar|

$prototype=void deletePreviousChar ()
$method=|void|deletePreviousChar|

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=void endEditBlock ()
$method=|void|endEditBlock|

$prototype=bool hasComplexSelection () const
$method=|bool|hasComplexSelection|

$prototype=bool hasSelection () const
$method=|bool|hasSelection|

$prototype=void insertBlock ()
$internalMethod=|void|insertBlock,insertBlock1|

$prototype=void insertBlock ( const QTextBlockFormat & format )
$internalMethod=|void|insertBlock,insertBlock2|const QTextBlockFormat &

$prototype=void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )
$internalMethod=|void|insertBlock,insertBlock3|const QTextBlockFormat &,const QTextCharFormat &

//[1]void insertBlock ()
//[2]void insertBlock ( const QTextBlockFormat & format )
//[3]void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK )
{
  if( ISNUMPAR(0) )
  {
    QTextCursor_insertBlock1();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1) )
  {
    QTextCursor_insertBlock2();
  }
  else if( ISNUMPAR(2) && ISQTEXTBLOCKFORMAT(1) && ISQTEXTCHARFORMAT(2) )
  {
    QTextCursor_insertBlock3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void insertFragment ( const QTextDocumentFragment & fragment )
$method=|void|insertFragment|const QTextDocumentFragment &

$prototype=QTextFrame * insertFrame ( const QTextFrameFormat & format )
$method=|QTextFrame *|insertFrame|const QTextFrameFormat &

$prototype=void insertHtml ( const QString & html )
$method=|void|insertHtml|const QString &

$prototype=void insertImage ( const QTextImageFormat & format )
$internalMethod=|void|insertImage,insertImage1|const QTextImageFormat &

$prototype=void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
$internalMethod=|void|insertImage,insertImage2|const QTextImageFormat &,QTextFrameFormat::Position

$prototype=void insertImage ( const QString & name )
$internalMethod=|void|insertImage,insertImage3|const QString &

$prototype=void insertImage ( const QImage & image, const QString & name = QString() )
$internalMethod=|void|insertImage,insertImage4|const QImage &,const QString &=QString()

//[1]void insertImage ( const QTextImageFormat & format )
//[2]void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
//[3]void insertImage ( const QString & name )
//[4]void insertImage ( const QImage & image, const QString & name = QString() )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE )
{
  if( ISNUMPAR(1) && ISQTEXTIMAGEFORMAT(1) )
  {
    QTextCursor_insertImage1();
  }
  else if( ISNUMPAR(2) && ISQTEXTIMAGEFORMAT(1) && ISNUM(2) )
  {
    QTextCursor_insertImage2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCursor_insertImage3();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QTextCursor_insertImage4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextList * insertList ( const QTextListFormat & format )
$internalMethod=|QTextList *|insertList,insertList1|const QTextListFormat &

$prototype=QTextList * insertList ( QTextListFormat::Style style )
$internalMethod=|QTextList *|insertList,insertList2|QTextListFormat::Style

//[1]QTextList * insertList ( const QTextListFormat & format )
//[2]QTextList * insertList ( QTextListFormat::Style style )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    QTextCursor_insertList1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCursor_insertList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
$internalMethod=|QTextTable *|insertTable,insertTable1|int,int,const QTextTableFormat &

$prototype=QTextTable * insertTable ( int rows, int columns )
$internalMethod=|QTextTable *|insertTable,insertTable2|int,int

//[1]QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
//[2]QTextTable * insertTable ( int rows, int columns )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTEXTTABLEFORMAT(3) )
  {
    QTextCursor_insertTable1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextCursor_insertTable2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void insertText ( const QString & text )
$internalMethod=|void|insertText,insertText1|const QString &

$prototype=void insertText ( const QString & text, const QTextCharFormat & format )
$internalMethod=|void|insertText,insertText2|const QString &,const QTextCharFormat &

//[1]void insertText ( const QString & text )
//[2]void insertText ( const QString & text, const QTextCharFormat & format )

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCursor_insertText1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTCHARFORMAT(2) )
  {
    QTextCursor_insertText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isCopyOf ( const QTextCursor & other ) const
$method=|bool|isCopyOf|const QTextCursor &

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=void joinPreviousEditBlock ()
$method=|void|joinPreviousEditBlock|

$prototype=bool keepPositionOnInsert () const
$method=|bool|keepPositionOnInsert|

$prototype=void mergeBlockCharFormat ( const QTextCharFormat & modifier )
$method=|void|mergeBlockCharFormat|const QTextCharFormat &

$prototype=void mergeBlockFormat ( const QTextBlockFormat & modifier )
$method=|void|mergeBlockFormat|const QTextBlockFormat &

$prototype=void mergeCharFormat ( const QTextCharFormat & modifier )
$method=|void|mergeCharFormat|const QTextCharFormat &

$prototype=bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor, int n = 1 )
$method=|bool|movePosition|QTextCursor::MoveOperation,QTextCursor::MoveMode=QTextCursor::MoveAnchor,int=1

$prototype=int position () const
$method=|int|position|

$prototype=int positionInBlock () const
$method=|int|positionInBlock|

$prototype=void removeSelectedText ()
$method=|void|removeSelectedText|

$prototype=void select ( SelectionType selection )
$method=|void|select|QTextCursor::SelectionType

$prototype=void selectedTableCells ( int * firstRow, int * numRows, int * firstColumn, int * numColumns ) const
$method=|void|selectedTableCells|int *,int *,int *,int *

$prototype=QString selectedText () const
$method=|QString|selectedText|

$prototype=QTextDocumentFragment selection () const
$method=|QTextDocumentFragment|selection|

$prototype=int selectionEnd () const
$method=|int|selectionEnd|

$prototype=int selectionStart () const
$method=|int|selectionStart|

$prototype=void setBlockCharFormat ( const QTextCharFormat & format )
$method=|void|setBlockCharFormat|const QTextCharFormat &

$prototype=void setBlockFormat ( const QTextBlockFormat & format )
$method=|void|setBlockFormat|const QTextBlockFormat &

$prototype=void setCharFormat ( const QTextCharFormat & format )
$method=|void|setCharFormat|const QTextCharFormat &

$prototype=void setKeepPositionOnInsert ( bool b )
$method=|void|setKeepPositionOnInsert|bool

$prototype=void setPosition ( int pos, MoveMode m = MoveAnchor )
$method=|void|setPosition|int,QTextCursor::MoveMode=QTextCursor::MoveAnchor

$prototype=void setVerticalMovementX ( int x )
$method=|void|setVerticalMovementX|int

$prototype=void setVisualNavigation ( bool b )
$method=|void|setVisualNavigation|bool

$prototype=int verticalMovementX () const
$method=|int|verticalMovementX|

$prototype=bool visualNavigation () const
$method=|bool|visualNavigation|

$extraMethods

#pragma ENDDUMP
