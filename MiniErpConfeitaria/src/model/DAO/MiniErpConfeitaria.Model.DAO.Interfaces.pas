unit MiniErpConfeitaria.Model.DAO.Interfaces;

interface

uses
  Data.DB;

type

  IDAOInterface = interface
    ['{AB4D72D6-A6E3-4522-B2EB-2FE7E8F830A9}']
    function Get : iDAOInterface;
    function Post : iDAOInterface;
    function Put : iDAOInterface;
    function Delete : iDAOInterface;
    function DataSource ( aValue : TDataSource ) : iDAOInterface;
    function DataSet : TDataSet;
    function AddParam (aKey : String; aValue : String) : iDAOInterface;
    function Page : Integer; overload;
    function Page ( aValue : Integer) : IDAOInterface; overload;
    function Limit : Integer; overload;
    function Limit ( aValue : Integer) : IDAOInterface; overload;
    function Total : Integer; overload;
    function Total ( aValue : Integer) : IDAOInterface; overload;
    function Pages : Integer; overload;
    function Pages ( aValue : Integer) : IDAOInterface; overload;
  end;

implementation

end.
