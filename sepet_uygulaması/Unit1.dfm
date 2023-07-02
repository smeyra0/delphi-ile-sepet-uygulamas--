object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 408
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 448
    Top = 41
    Width = 89
    Height = 25
    Caption = 'SEPET'
  end
  object Label2: TLabel
    Left = 29
    Top = 44
    Width = 21
    Height = 13
    Caption = 'ARA'
  end
  object ListBox1: TListBox
    Left = 56
    Top = 72
    Width = 201
    Height = 209
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 287
    Width = 75
    Height = 25
    Caption = 'SEPETE EKLE'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 287
    Width = 90
    Height = 25
    Caption = 'YEN'#304' '#220'R'#220'N EKLE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 201
    Top = 287
    Width = 75
    Height = 25
    Caption = #220'R'#220'N '#199'IKAR'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 566
    Top = 287
    Width = 75
    Height = 25
    Caption = #220'R'#220'N '#199'IKAR'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 38
    Top = 318
    Width = 75
    Height = 25
    Caption = 'D'#220'ZENLE'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 41
    Width = 201
    Height = 25
    TabOrder = 6
    OnChange = Edit1Change
  end
  object ListBox2: TListBox
    Left = 448
    Top = 72
    Width = 193
    Height = 209
    ItemHeight = 13
    TabOrder = 7
  end
end
