unit ufrmAutoWipe;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, udmStyles,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, ufrmAutoWipeItem;

type
  TfrmAutoWipe = class(TForm)
    statFooter: TStatusBar;
    tlbHeader: TToolBar;
    lblHeader: TLabel;
    btnCancel: TButton;
    btnSave: TButton;
    tbcAutoWipes: TTabControl;
    btnAddAutoWipe: TButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnAddAutoWipeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
//  frmAutoWipe: TfrmAutoWipe;

implementation

{$R *.fmx}

procedure TfrmAutoWipe.btnAddAutoWipeClick(Sender: TObject);
begin
  var tab := tbcAutoWipes.Add;
  var wipe := TfrmAutoWipeItem.Create(tab);
  while wipe.ChildrenCount > 0 do
    wipe.Children[0].Parent := tab;
end;

procedure TfrmAutoWipe.btnCancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TfrmAutoWipe.btnSaveClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

end.

