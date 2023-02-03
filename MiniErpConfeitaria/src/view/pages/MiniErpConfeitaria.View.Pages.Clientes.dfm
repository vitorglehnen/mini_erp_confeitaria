inherited PageClientes: TPageClientes
  Caption = 'PageClientes'
  ClientHeight = 794
  ClientWidth = 1350
  ExplicitLeft = -168
  ExplicitTop = -246
  ExplicitWidth = 1350
  ExplicitHeight = 794
  PixelsPerInch = 115
  TextHeight = 16
  inherited pnlMain: TPanel
    Width = 1350
    Height = 794
    ExplicitWidth = 1350
    ExplicitHeight = 794
    inherited CardPanel1: TCardPanel
      Width = 1348
      Height = 792
      ActiveCard = cardGrid
      ExplicitWidth = 1348
      ExplicitHeight = 792
      inherited cardGrid: TCard
        Width = 1348
        Height = 792
        ExplicitWidth = 1348
        ExplicitHeight = 792
        inherited pnlTop: TPanel
          Width = 1348
          ExplicitWidth = 1348
          inherited pnlPesquisa: TPanel
            Left = 960
            ExplicitLeft = 960
          end
          inherited pnlBodyCabecalho: TPanel
            inherited pnlTitulo: TPanel
              inherited lblNomePagina: TLabel
                Width = 229
                Height = 50
              end
            end
          end
        end
        inherited pnlBodyGrid: TPanel
          Width = 1348
          Height = 631
          ExplicitWidth = 1348
          ExplicitHeight = 631
          inherited pnlGrid: TPanel
            Width = 1348
            Height = 631
            ExplicitWidth = 1348
            ExplicitHeight = 631
            inherited DBGrid1: TDBGrid
              Width = 1148
              Height = 550
            end
            inherited pnlBotoesPage: TPanel
              Top = 570
              Width = 1148
              ExplicitTop = 570
              ExplicitWidth = 1148
              inherited btnProximaPagina: TSpeedButton
                Left = 1108
                ExplicitLeft = 1108
              end
              inherited lblNumeroPagina: TLabel
                Left = 1069
                Height = 41
                ExplicitLeft = 1069
              end
              inherited btnVoltarPagina: TSpeedButton
                Left = 1029
                ExplicitLeft = 1023
                ExplicitTop = 6
              end
            end
          end
        end
      end
      inherited cardCadastro: TCard
        Width = 1348
        Height = 792
        ExplicitWidth = 1348
        ExplicitHeight = 792
        inherited pnlBodyCadastro: TPanel
          Width = 1348
          Height = 731
          Align = alClient
          ExplicitWidth = 1348
          ExplicitHeight = 731
          object pnlCadastro: TPanel
            Left = 0
            Top = 0
            Width = 1348
            Height = 731
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 100
            Padding.Top = 100
            TabOrder = 0
            object pnlLeftCadastro: TStackPanel
              Left = 381
              Top = 100
              Width = 204
              Height = 631
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = lblDataNascimento
                end
                item
                  Control = dateNascimento
                end
                item
                  Control = lblUltimaTransacao
                end
                item
                  Control = dateUltimaTransacao
                end
                item
                  Control = lblCpf
                end
                item
                  Control = edtCpf
                end
                item
                  Control = lblCnpj
                end
                item
                  Control = edtCnpj
                end>
              Spacing = 6
              TabOrder = 0
              object lblDataNascimento: TLabel
                Left = 0
                Top = 0
                Width = 96
                Height = 16
                Caption = 'Data Nascimento'
              end
              object dateNascimento: TDateTimePicker
                Left = 0
                Top = 22
                Width = 186
                Height = 24
                Date = 44946.000000000000000000
                Time = 0.585676562499429600
                TabOrder = 0
              end
              object lblUltimaTransacao: TLabel
                Left = 0
                Top = 52
                Width = 100
                Height = 16
                Caption = #218'ltima Transa'#231#227'o'
              end
              object dateUltimaTransacao: TDateTimePicker
                Left = 0
                Top = 74
                Width = 186
                Height = 24
                Date = 44946.000000000000000000
                Time = 0.585120289353653800
                Kind = dtkTime
                TabOrder = 1
              end
              object lblCpf: TLabel
                Left = 0
                Top = 104
                Width = 22
                Height = 16
                Caption = 'CPF'
              end
              object edtCpf: TEdit
                Left = 0
                Top = 126
                Width = 180
                Height = 24
                TabOrder = 2
              end
              object lblCnpj: TLabel
                Left = 0
                Top = 156
                Width = 28
                Height = 16
                Caption = 'CNPJ'
              end
              object edtCnpj: TEdit
                Left = 0
                Top = 178
                Width = 180
                Height = 24
                TabOrder = 3
              end
            end
            object pnlRightCadastro: TStackPanel
              Left = 100
              Top = 100
              Width = 281
              Height = 631
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = lblCodigo
                end
                item
                  Control = edtCodigo
                end
                item
                  Control = lblCodigoOcupacao
                end
                item
                  Control = edtCodigoOcupacao
                end
                item
                  Control = lblNome
                end
                item
                  Control = edtNome
                end
                item
                  Control = lblTelefone
                end
                item
                  Control = edtTelefone
                end
                item
                  Control = lblProfissao
                end
                item
                  Control = edtProfissao
                end
                item
                  Control = lblSaldo
                end
                item
                  Control = edtSaldo
                end>
              Spacing = 6
              TabOrder = 1
              object lblCodigo: TLabel
                Left = 0
                Top = 0
                Width = 39
                Height = 16
                Caption = 'C'#243'digo'
              end
              object edtCodigo: TEdit
                Left = 0
                Top = 22
                Width = 180
                Height = 24
                TabStop = False
                TabOrder = 0
              end
              object lblCodigoOcupacao: TLabel
                Left = 0
                Top = 52
                Width = 117
                Height = 16
                Caption = 'C'#243'digo de Ocupa'#231#227'o'
              end
              object edtCodigoOcupacao: TEdit
                Left = 0
                Top = 74
                Width = 121
                Height = 24
                TabStop = False
                TabOrder = 5
              end
              object lblNome: TLabel
                Left = 0
                Top = 104
                Width = 33
                Height = 16
                Caption = 'Nome'
              end
              object edtNome: TEdit
                Left = 0
                Top = 126
                Width = 180
                Height = 24
                TabOrder = 1
              end
              object lblTelefone: TLabel
                Left = 0
                Top = 156
                Width = 50
                Height = 16
                Caption = 'Telefone'
              end
              object edtTelefone: TEdit
                Left = 0
                Top = 178
                Width = 180
                Height = 24
                TabOrder = 2
              end
              object lblProfissao: TLabel
                Left = 0
                Top = 208
                Width = 52
                Height = 16
                Caption = 'Profiss'#227'o'
              end
              object edtProfissao: TEdit
                Left = 0
                Top = 230
                Width = 180
                Height = 24
                TabOrder = 3
              end
              object lblSaldo: TLabel
                Left = 0
                Top = 260
                Width = 32
                Height = 16
                Caption = 'Saldo'
              end
              object edtSaldo: TEdit
                Left = 0
                Top = 282
                Width = 180
                Height = 24
                TabOrder = 4
              end
            end
            object pnlBodyImageCliente: TPanel
              Left = 585
              Top = 100
              Width = 296
              Height = 631
              Align = alLeft
              BevelOuter = bvNone
              Padding.Left = 40
              Padding.Right = 40
              Padding.Bottom = 40
              TabOrder = 2
              object pnlImageCliente: TPanel
                Left = 40
                Top = 0
                Width = 216
                Height = 224
                Align = alTop
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object imgCliente: TImage
                  Left = 0
                  Top = 0
                  Width = 216
                  Height = 224
                  Align = alClient
                  ExplicitLeft = 136
                  ExplicitTop = 112
                  ExplicitWidth = 105
                  ExplicitHeight = 105
                end
              end
            end
          end
        end
        inherited pnlBodyBotoes: TPanel
          Top = 731
          Width = 1348
          ExplicitTop = 731
          ExplicitWidth = 1348
        end
      end
    end
  end
end
