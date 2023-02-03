object PageAlterarSenha: TPageAlterarSenha
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'PageAlterarSenha'
  ClientHeight = 406
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 115
  TextHeight = 16
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 475
    Height = 406
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 120
    Padding.Top = 100
    Padding.Right = 120
    Padding.Bottom = 100
    ParentBackground = False
    TabOrder = 0
    object StackPanel1: TStackPanel
      Left = 120
      Top = 100
      Width = 235
      Height = 206
      Align = alClient
      BevelOuter = bvNone
      ControlCollection = <
        item
          Control = lblEmailEsqueceuSenha
          HorizontalPositioning = sphpLeft
          VerticalPositioning = spvpFill
        end
        item
          Control = edtEmailEsqueceuSenha
          HorizontalPositioning = sphpLeft
          VerticalPositioning = spvpFill
        end
        item
          Control = lblUsuarioEsqueceuSenha
          HorizontalPositioning = sphpLeft
          VerticalPositioning = spvpFill
        end
        item
          Control = edtUsuarioEsqueceuSenha
          HorizontalPositioning = sphpLeft
          VerticalPositioning = spvpFill
        end
        item
          Control = pnlInvisivel5
        end
        item
          Control = btnEnviarEmail
          HorizontalPositioning = sphpRight
          VerticalPositioning = spvpFill
        end
        item
          Control = pnlInvisivel6
        end>
      HorizontalPositioning = sphpCenter
      TabOrder = 0
      ExplicitLeft = 150
      ExplicitWidth = 175
      object lblEmailEsqueceuSenha: TLabel
        Left = 0
        Top = 0
        Width = 205
        Height = 19
        Align = alLeft
        AutoSize = False
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtEmailEsqueceuSenha: TEdit
        Left = 0
        Top = 21
        Width = 233
        Height = 20
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        PasswordChar = '*'
        ShowHint = False
        TabOrder = 1
      end
      object lblUsuarioEsqueceuSenha: TLabel
        Left = 0
        Top = 43
        Width = 231
        Height = 19
        Align = alLeft
        AutoSize = False
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtUsuarioEsqueceuSenha: TEdit
        Left = 0
        Top = 64
        Width = 105
        Height = 20
        Align = alLeft
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object pnlInvisivel5: TPanel
        Left = 14
        Top = 86
        Width = 206
        Height = 3
        BevelOuter = bvNone
        TabOrder = 2
      end
      object btnEnviarEmail: TPanel
        Left = 136
        Top = 91
        Width = 99
        Height = 26
        Cursor = crHandPoint
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Cadastrar'
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
      end
      object pnlInvisivel6: TPanel
        Left = 25
        Top = 119
        Width = 185
        Height = 61
        BevelOuter = bvNone
        TabOrder = 3
      end
    end
    object btnFechar: TPanel
      Left = 360
      Top = 0
      Width = 91
      Height = 34
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Fechar'
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnFecharClick
    end
  end
end
