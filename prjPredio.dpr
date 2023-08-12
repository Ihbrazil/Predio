program prjPredio;

uses
  Vcl.Forms,
  untPredio in 'untPredio.pas' {frmPredio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPredio, frmPredio);
  Application.Run;
end.
