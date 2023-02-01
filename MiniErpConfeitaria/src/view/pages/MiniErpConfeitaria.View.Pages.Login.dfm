object PageLogin: TPageLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'PageLogin'
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
    Anchors = []
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 170
    Padding.Top = 80
    Padding.Right = 170
    Padding.Bottom = 100
    ParentBackground = False
    TabOrder = 0
    object btnCadastrarUsuario: TSpeedButton
      Left = 296
      Top = 312
      Width = 129
      Height = 29
      Caption = 'Cadastrar usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCadastrarUsuarioClick
    end
    object pnlLogin: TStackPanel
      Left = 170
      Top = 80
      Width = 135
      Height = 226
      Align = alClient
      Anchors = []
      BevelOuter = bvNone
      ControlCollection = <
        item
          Control = lblUsuario
        end
        item
          Control = edtUsuario
        end
        item
          Control = lblSenha
        end
        item
          Control = edtSenha
        end
        item
          Control = pnlInvisivel
        end
        item
          Control = chkMostrarSenhaLogin
        end
        item
          Control = btnEntrar
          HorizontalPositioning = sphpRight
          VerticalPositioning = spvpFill
        end
        item
          Control = pnlInvisivel3
        end
        item
          Control = lblEsqueceuSenha
        end
        item
          Control = pnlInvisivel2
        end
        item
          Control = btnCadastrarNovoUsuario
          HorizontalPositioning = sphpLeft
          VerticalPositioning = spvpFill
        end>
      HorizontalPositioning = sphpCenter
      TabOrder = 0
      DesignSize = (
        135
        226)
      object lblUsuario: TLabel
        Left = 10
        Top = 0
        Width = 114
        Height = 19
        AutoSize = False
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtUsuario: TEdit
        Left = 7
        Top = 21
        Width = 121
        Height = 20
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object lblSenha: TLabel
        Left = 9
        Top = 43
        Width = 117
        Height = 19
        AutoSize = False
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtSenha: TEdit
        Left = 7
        Top = 64
        Width = 121
        Height = 20
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
      object pnlInvisivel: TPanel
        Left = -35
        Top = 86
        Width = 206
        Height = 3
        Anchors = []
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 2
      end
      object chkMostrarSenhaLogin: TCheckBox
        Left = 8
        Top = 91
        Width = 118
        Height = 17
        Cursor = crHandPoint
        Caption = 'Mostrar senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = chkMostrarSenhaLoginClick
      end
      object btnEntrar: TSpeedButton
        Left = 44
        Top = 110
        Width = 91
        Height = 24
        Cursor = crHandPoint
        Align = alRight
        Caption = 'Entrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Layout = blGlyphRight
        ParentFont = False
        OnClick = btnEntrarClick
      end
      object pnlInvisivel3: TPanel
        Left = -25
        Top = 136
        Width = 185
        Height = 25
        BevelOuter = bvNone
        TabOrder = 5
      end
      object lblEsqueceuSenha: TLabel
        Left = 14
        Top = 163
        Width = 106
        Height = 22
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Esqueceu a senha?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        OnClick = lblEsqueceuSenhaClick
        OnMouseEnter = lblEsqueceuSenhaMouseEnter
        OnMouseLeave = lblEsqueceuSenhaMouseLeave
      end
      object pnlInvisivel2: TPanel
        Left = -25
        Top = 187
        Width = 185
        Height = 61
        BevelOuter = bvNone
        TabOrder = 3
      end
      object btnCadastrarNovoUsuario: TSpeedButton
        Left = 0
        Top = 250
        Width = 137
        Height = 29
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Cadastrar novo usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
