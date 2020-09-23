VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   240
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   885
   ControlBox      =   0   'False
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   240
   ScaleWidth      =   885
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   2400
      Top             =   1560
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      Height          =   195
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   480
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'**********************************************
'This software is a freeware But Let Me Known
'Developed By : Mishra Kamlesh
'Email : mi_kamlesh@rediffmailcom
'**********************************************

Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Type POINTAPI
        x As Long
        y As Long
End Type
Dim pos As POINTAPI
Private Declare Function SetWindowPos Lib "user32" (ByVal hWnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

Private Sub Form_Load()
With Label1
.Caption = Time
.Top = 10
.Left = 10
.AutoSize = True
.BackStyle = 0
BackColor = vbWhite
Height = .Height + 50
Width = .Width - 190
End With
End Sub

Private Sub Timer1_Timer()
SetWindowPos hWnd, -1, 0, 0, 0, 0, 1 Or 2
Label1.Caption = Time
GetCursorPos pos
Move pos.x * 15 + 10 * 15, pos.y * 15 + 20 * 15
End Sub
