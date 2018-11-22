%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

/*
enum QEvent::Type
*/
#define QEvent_None                                                  0
#define QEvent_AccessibilityDescription                              130
#define QEvent_AccessibilityHelp                                     119
#define QEvent_AccessibilityPrepare                                  86
#define QEvent_ActionAdded                                           114
#define QEvent_ActionChanged                                         113
#define QEvent_ActionRemoved                                         115
#define QEvent_ActivationChange                                      99
#define QEvent_ApplicationActivate                                   121
#define QEvent_ApplicationActivated                                  QEvent_ApplicationActivate
#define QEvent_ApplicationDeactivate                                 122
#define QEvent_ApplicationFontChange                                 36
#define QEvent_ApplicationLayoutDirectionChange                      37
#define QEvent_ApplicationPaletteChange                              38
#define QEvent_ApplicationWindowIconChange                           35
#define QEvent_ChildAdded                                            68
#define QEvent_ChildInserted                                         70
#define QEvent_ChildPolished                                         69
#define QEvent_ChildRemoved                                          71
#define QEvent_Clipboard                                             40
#define QEvent_Close                                                 19
#define QEvent_CloseSoftwareInputPanel                               200
#define QEvent_ContentsRectChange                                    178
#define QEvent_ContextMenu                                           82
#define QEvent_CursorChange                                          183
#define QEvent_DeferredDelete                                        52
#define QEvent_DragEnter                                             60
#define QEvent_DragLeave                                             62
#define QEvent_DragMove                                              61
#define QEvent_Drop                                                  63
#define QEvent_EnabledChange                                         98
#define QEvent_Enter                                                 10
#define QEvent_EnterEditFocus                                        150
#define QEvent_EnterWhatsThisMode                                    124
#define QEvent_FileOpen                                              116
#define QEvent_FocusIn                                               8
#define QEvent_FocusOut                                              9
#define QEvent_FontChange                                            97
#define QEvent_GrabKeyboard                                          188
#define QEvent_GrabMouse                                             186
#define QEvent_GraphicsSceneContextMenu                              159
#define QEvent_GraphicsSceneDragEnter                                164
#define QEvent_GraphicsSceneDragLeave                                166
#define QEvent_GraphicsSceneDragMove                                 165
#define QEvent_GraphicsSceneDrop                                     167
#define QEvent_GraphicsSceneHelp                                     163
#define QEvent_GraphicsSceneHoverEnter                               160
#define QEvent_GraphicsSceneHoverLeave                               162
#define QEvent_GraphicsSceneHoverMove                                161
#define QEvent_GraphicsSceneMouseDoubleClick                         158
#define QEvent_GraphicsSceneMouseMove                                155
#define QEvent_GraphicsSceneMousePress                               156
#define QEvent_GraphicsSceneMouseRelease                             157
#define QEvent_GraphicsSceneMove                                     182
#define QEvent_GraphicsSceneResize                                   181
#define QEvent_GraphicsSceneWheel                                    168
#define QEvent_Hide                                                  18
#define QEvent_HideToParent                                          27
#define QEvent_HoverEnter                                            127
#define QEvent_HoverLeave                                            128
#define QEvent_HoverMove                                             129
#define QEvent_IconDrag                                              96
#define QEvent_IconTextChange                                        101
#define QEvent_InputMethod                                           83
#define QEvent_KeyPress                                              6
#define QEvent_KeyRelease                                            7
#define QEvent_LanguageChange                                        89
#define QEvent_LayoutDirectionChange                                 90
#define QEvent_LayoutRequest                                         76
#define QEvent_Leave                                                 11
#define QEvent_LeaveEditFocus                                        151
#define QEvent_LeaveWhatsThisMode                                    125
#define QEvent_LocaleChange                                          88
#define QEvent_NonClientAreaMouseButtonDblClick                      176
#define QEvent_NonClientAreaMouseButtonPress                         174
#define QEvent_NonClientAreaMouseButtonRelease                       175
#define QEvent_NonClientAreaMouseMove                                173
#define QEvent_MacSizeChange                                         177
#define QEvent_MenubarUpdated                                        153
#define QEvent_MetaCall                                              43
#define QEvent_ModifiedChange                                        102
#define QEvent_MouseButtonDblClick                                   4
#define QEvent_MouseButtonPress                                      2
#define QEvent_MouseButtonRelease                                    3
#define QEvent_MouseMove                                             5
#define QEvent_MouseTrackingChange                                   109
#define QEvent_Move                                                  13
#define QEvent_Paint                                                 12
#define QEvent_PaletteChange                                         39
#define QEvent_ParentAboutToChange                                   131
#define QEvent_ParentChange                                          21
#define QEvent_Polish                                                75
#define QEvent_PolishRequest                                         74
#define QEvent_QueryWhatsThis                                        123
#define QEvent_RequestSoftwareInputPanel                             199
#define QEvent_Resize                                                14
#define QEvent_Shortcut                                              117
#define QEvent_ShortcutOverride                                      51
#define QEvent_Show                                                  17
#define QEvent_ShowToParent                                          26
#define QEvent_SockAct                                               50
#define QEvent_StateMachineSignal                                    192
#define QEvent_StateMachineWrapped                                   193
#define QEvent_StatusTip                                             112
#define QEvent_StyleChange                                           100
#define QEvent_TabletMove                                            87
#define QEvent_TabletPress                                           92
#define QEvent_TabletRelease                                         93
#define QEvent_OkRequest                                             94
#define QEvent_TabletEnterProximity                                  171
#define QEvent_TabletLeaveProximity                                  172
#define QEvent_Timer                                                 1
#define QEvent_ToolBarChange                                         120
#define QEvent_ToolTip                                               110
#define QEvent_ToolTipChange                                         184
#define QEvent_UngrabKeyboard                                        189
#define QEvent_UngrabMouse                                           187
#define QEvent_UpdateLater                                           78
#define QEvent_UpdateRequest                                         77
#define QEvent_WhatsThis                                             111
#define QEvent_WhatsThisClicked                                      118
#define QEvent_Wheel                                                 31
#define QEvent_WinEventAct                                           132
#define QEvent_WindowActivate                                        24
#define QEvent_WindowBlocked                                         103
#define QEvent_WindowDeactivate                                      25
#define QEvent_WindowIconChange                                      34
#define QEvent_WindowStateChange                                     105
#define QEvent_WindowTitleChange                                     33
#define QEvent_WindowUnblocked                                       104
#define QEvent_ZOrderChange                                          126
#define QEvent_KeyboardLayoutChange                                  169
#define QEvent_DynamicPropertyChange                                 170
#define QEvent_TouchBegin                                            194
#define QEvent_TouchUpdate                                           195
#define QEvent_TouchEnd                                              196
#define QEvent_WinIdChange                                           203
#define QEvent_Gesture                                               198
#define QEvent_GestureOverride                                       202
#define QEvent_User                                                  1000
#define QEvent_MaxUser                                               65535
