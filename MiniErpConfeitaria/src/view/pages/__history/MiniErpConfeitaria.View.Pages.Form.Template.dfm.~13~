object FormTemplate: TFormTemplate
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FormTemplate'
  ClientHeight = 623
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 115
  TextHeight = 16
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1106
    Height = 623
    Align = alClient
    TabOrder = 0
    object CardPanel1: TCardPanel
      Left = 1
      Top = 1
      Width = 1104
      Height = 621
      Align = alClient
      ActiveCard = cardGrid
      BevelOuter = bvNone
      Caption = 'CardPanel1'
      TabOrder = 0
      object cardGrid: TCard
        Left = 0
        Top = 0
        Width = 1104
        Height = 621
        Caption = 'cardGrid'
        CardIndex = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 1104
          Height = 161
          Align = alTop
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Padding.Left = 100
          Padding.Right = 100
          ParentFont = False
          TabOrder = 0
          object pnlPesquisa: TPanel
            Left = 716
            Top = 0
            Width = 288
            Height = 161
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object lblPesquisa: TLabel
              Left = 0
              Top = 114
              Width = 288
              Height = 20
              Align = alBottom
              Caption = 'Pesquisar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitTop = 109
              ExplicitWidth = 61
            end
            object edtPesquisa: TEdit
              Left = 0
              Top = 134
              Width = 288
              Height = 25
              Align = alBottom
              BevelOuter = bvNone
              BorderStyle = bsNone
              TabOrder = 0
            end
            object pnlLinhaPesquisa: TPanel
              Left = 0
              Top = 159
              Width = 288
              Height = 2
              Align = alBottom
              TabOrder = 1
            end
          end
          object pnlBodyCabecalho: TPanel
            Left = 100
            Top = 0
            Width = 229
            Height = 161
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object pnlTitulo: TPanel
              Left = 0
              Top = 0
              Width = 229
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object lblNomePagina: TLabel
                Left = 0
                Top = 0
                Width = 229
                Height = 50
                Align = alClient
                Caption = 'T'#237'tulo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -20
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                Layout = tlCenter
                ExplicitWidth = 50
                ExplicitHeight = 28
              end
            end
            object pnlBotoes: TPanel
              Left = 0
              Top = 50
              Width = 229
              Height = 85
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object btnAtualizar: TSpeedButton
                Left = 73
                Top = 0
                Width = 73
                Height = 85
                Align = alLeft
                Caption = 'Atualizar'
                Flat = True
                Layout = blGlyphTop
                ExplicitHeight = 45
              end
              object btnAdicionar: TSpeedButton
                Left = 0
                Top = 0
                Width = 73
                Height = 85
                Align = alLeft
                Caption = 'Adicionar'
                Flat = True
                Layout = blGlyphTop
                OnClick = btnAdicionarClick
                ExplicitLeft = -6
                ExplicitTop = 6
              end
            end
          end
        end
        object pnlBodyGrid: TPanel
          Left = 0
          Top = 161
          Width = 1104
          Height = 460
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnlGrid: TPanel
            Left = 0
            Top = 0
            Width = 1104
            Height = 460
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 100
            Padding.Top = 20
            Padding.Right = 100
            Padding.Bottom = 20
            TabOrder = 0
            ExplicitTop = 4
            object DBGrid1: TDBGrid
              Left = 100
              Top = 20
              Width = 904
              Height = 379
              Align = alClient
              BorderStyle = bsNone
              DataSource = DataSource1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
            object Panel1: TPanel
              Left = 100
              Top = 399
              Width = 904
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitLeft = 592
              ExplicitTop = 272
              ExplicitWidth = 185
              object btnProximaPagina: TSpeedButton
                Left = 864
                Top = 0
                Width = 40
                Height = 41
                Align = alRight
                Flat = True
              end
              object Label1: TLabel
                Left = 792
                Top = 0
                Width = 72
                Height = 41
                Align = alRight
                Alignment = taCenter
                Caption = 'P'#225'gina'
                Layout = tlCenter
              end
              object btnVoltarPagina: TSpeedButton
                Left = 752
                Top = 0
                Width = 40
                Height = 41
                Align = alRight
                Flat = True
                ExplicitLeft = 740
                ExplicitTop = 6
              end
            end
          end
        end
      end
      object cardCadastro: TCard
        Left = 0
        Top = 0
        Width = 1104
        Height = 621
        Caption = 'cardCadastro'
        CardIndex = 1
        TabOrder = 1
        object pnlBodyCadastro: TPanel
          Left = 0
          Top = 0
          Width = 345
          Height = 560
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 621
        end
        object pnlBodyBotoes: TPanel
          Left = 0
          Top = 560
          Width = 1104
          Height = 61
          Align = alBottom
          BevelOuter = bvNone
          Padding.Left = 100
          TabOrder = 1
          object pnlBotoesCrud: TPanel
            Left = 100
            Top = 0
            Width = 297
            Height = 61
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitTop = 6
            object btnExcluir: TSpeedButton
              Left = 130
              Top = 0
              Width = 65
              Height = 61
              Align = alLeft
              Caption = 'Excluir'
              Flat = True
              Layout = blGlyphTop
              ExplicitLeft = 136
              ExplicitTop = 6
            end
            object btnFechar: TSpeedButton
              Left = 65
              Top = 0
              Width = 65
              Height = 61
              Align = alLeft
              Caption = 'Fechar'
              Flat = True
              Layout = blGlyphTop
              OnClick = btnFecharClick
              ExplicitLeft = 59
              ExplicitTop = 6
            end
            object btnSalvar: TSpeedButton
              Left = 0
              Top = 0
              Width = 65
              Height = 61
              Align = alLeft
              Caption = 'Salvar'
              Flat = True
              Layout = blGlyphTop
              ExplicitTop = 6
            end
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    Left = 960
    Top = 469
  end
end
