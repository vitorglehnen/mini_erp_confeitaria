inherited PagePedidos: TPagePedidos
  Caption = 'PagePedidos'
  ExplicitLeft = -343
  PixelsPerInch = 115
  TextHeight = 16
  inherited pnlMain: TPanel
    inherited CardPanel1: TCardPanel
      ActiveCard = cardGrid
      inherited cardGrid: TCard
        inherited pnlTop: TPanel
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
          inherited pnlGrid: TPanel
            inherited pnlBotoesPage: TPanel
              inherited lblNumeroPagina: TLabel
                Height = 41
              end
            end
          end
        end
      end
    end
  end
end
