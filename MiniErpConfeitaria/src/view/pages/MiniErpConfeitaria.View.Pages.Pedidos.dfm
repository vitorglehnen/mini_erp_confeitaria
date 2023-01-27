inherited PagePedidos: TPagePedidos
  Caption = 'PagePedidos'
  ExplicitLeft = 2
  PixelsPerInch = 115
  TextHeight = 16
  inherited pnlMain: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1106
    ExplicitHeight = 623
    inherited CardPanel1: TCardPanel
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1104
      ExplicitHeight = 621
      inherited cardGrid: TCard
        ExplicitWidth = 1104
        ExplicitHeight = 621
        inherited pnlTop: TPanel
          inherited pnlPesquisa: TPanel
            inherited lblPesquisa: TLabel
              Top = 114
              Height = 20
              ExplicitTop = 109
              ExplicitWidth = 61
              ExplicitHeight = 20
            end
            inherited edtPesquisa: TEdit
              ExplicitTop = 114
            end
            inherited pnlLinhaPesquisa: TPanel
              ExplicitTop = 139
              ExplicitWidth = 288
            end
          end
          inherited pnlBodyCabecalho: TPanel
            ExplicitHeight = 161
            inherited pnlTitulo: TPanel
              ExplicitWidth = 229
            end
            inherited pnlBotoes: TPanel
              ExplicitTop = 50
            end
          end
        end
        inherited pnlBodyGrid: TPanel
          ExplicitLeft = 0
          ExplicitTop = 161
          ExplicitWidth = 1104
          ExplicitHeight = 460
          inherited pnlGrid: TPanel
            ExplicitLeft = 0
            ExplicitTop = 20
            ExplicitHeight = 440
          end
        end
      end
      inherited cardCadastro: TCard
        ExplicitWidth = 1104
        ExplicitHeight = 621
      end
    end
  end
end
