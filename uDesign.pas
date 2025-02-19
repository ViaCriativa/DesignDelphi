unit uDesign;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani, FMX.Objects, System.Skia,
  FMX.Skia, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit, FMX.ListBox,
  FMX.MultiView, FMX.Colors, FMX.ComboEdit, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, Alcinoe.FMX.StdCtrls, Alcinoe.FMX.Objects,
  Alcinoe.FMX.Edit;

type
  TFormDesign = class(TForm)
    RectBut: TRectangle;
    CoAni: TColorAnimation;
    SkLText: TSkLabel;
    ShadEff23: TShadowEffect;
    FloAni: TFloatAnimation;
    SkAnimatedImage1: TSkAnimatedImage;
    SkSvg1: TSkSvg;
    RectNome: TRectangle;
    Edit: TEdit;
    RectNomeDesc: TRectangle;
    ShadowEffect2: TShadowEffect;
    LayoutButton: TLayout;
    Layout2: TLayout;
    SkLDesc: TSkLabel;
    LayoutEditCustom: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    SkSvg2: TSkSvg;
    SkSvgAlert1: TSkSvg;
    LayoutComboBox: TLayout;
    Rectangle1: TRectangle;
    SkSvgAlert2: TSkSvg;
    ShadowEffect1: TShadowEffect;
    Layout3: TLayout;
    Layout6: TLayout;
    Rectangle2: TRectangle;
    SkLabel1: TSkLabel;
    Layout7: TLayout;
    SkSvg5: TSkSvg;
    ComboBox1: TComboBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    StyleBook1: TStyleBook;
    SkSvg6: TSkSvg;
    Layout8: TLayout;
    LayoutTop: TLayout;
    RectPesq: TRectangle;
    EditPesq: TEdit;
    Line2: TLine;
    sbPesq: TRectangle;
    LayFiltro: TLayout;
    sbFiltro: TRectangle;
    mvFiltro: TMultiView;
    CalloutRectangle1: TCalloutRectangle;
    VertScrollBox1: TVertScrollBox;
    LayoutMV: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Text1: TText;
    Line1: TLine;
    RectFundo: TRectangle;
    ColorAnimation1: TColorAnimation;
    FloatAnimation1: TFloatAnimation;
    ShadowEffect3: TShadowEffect;
    ColorAnimation2: TColorAnimation;
    FloatAnimation2: TFloatAnimation;
    ShadowEffect4: TShadowEffect;
    ShadowEffect5: TShadowEffect;
    Timer1: TTimer;
    LayoutCli: TLayout;
    SkSvg3: TSkSvg;
    SkSvg4: TSkSvg;
    Layout1: TLayout;
    MultiView1: TMultiView;
    Rect12: TRectangle;
    LaySair: TLayout;
    Label10: TLabel;
    Rectangle4: TRectangle;
    Layout12: TLayout;
    LayCasd: TLayout;
    Label18: TLabel;
    Layout14: TLayout;
    Rectangle8: TRectangle;
    LayMenu: TLayout;
    Rectangle13: TRectangle;
    Layout17: TLayout;
    RectMenu: TRectangle;
    Label22: TLabel;
    TextNumPed: TText;
    Layout18: TLayout;
    RectWhite: TRectangle;
    SkSvg7: TSkSvg;
    SkSvg8: TSkSvg;
    FloatAnimation3: TFloatAnimation;
    ShadowEffect6: TShadowEffect;
    SkSvg9: TSkSvg;
    FloatAnimation4: TFloatAnimation;
    ShadowEffect7: TShadowEffect;
    Layout13: TLayout;
    Rectangle3: TRectangle;
    ColorAnimation3: TColorAnimation;
    FloatAnimation5: TFloatAnimation;
    ShadowEffect8: TShadowEffect;
    SkAnimatedImage2: TSkAnimatedImage;
    Rectangle5: TRectangle;
    SkSvg10: TSkSvg;
    Layout9: TLayout;
    Rectangle6: TRectangle;
    SkSvg11: TSkSvg;
    Rectangle7: TRectangle;
    RectmvT: TRectangle;
    mvTransp: TMultiView;
    ListBox1: TListBox;
    Layout15: TLayout;
    Layout16: TLayout;
    Rectangle9: TRectangle;
    SkLabel2: TSkLabel;
    edCodTransp: TEdit;
    SkSvg12: TSkSvg;
    RectPesqT: TRectangle;
    FloatAnimation15: TFloatAnimation;
    ShadowEffect27: TShadowEffect;
    SkSvg13: TSkSvg;
    SkSvgTClear: TSkSvg;
    Layout19: TLayout;
    Layout20: TLayout;
    Layout21: TLayout;
    Rectangle10: TRectangle;
    ShadowEffect9: TShadowEffect;
    Switch1: TSwitch;
    procedure RectButMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Single);
    procedure RectButMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Single);
    procedure EditEnter(Sender: TObject);
    procedure EditExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
    procedure SkAnimatedImage2AnimationFinish(Sender: TObject);
    procedure SkSvg10Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
    procedure RectPesqTClick(Sender: TObject);

  private
    { Private declarations }

    //cor do swith
    const SwtColCheck = $FF00A9A7;
    const SwtColnoCheck = TAlphaColors.White;
    const SwtColnoCheckBk = TAlphaColors.Silver;
    //cor do Tedit
    const RectEditColEnter = TAlphaColors.Blue;
    const RectEditColExit = TAlphaColors.Black;
    const RectEditColExitEmpy = TAlphaColors.Red;
  public
    { Public declarations }
    procedure CarregarListBox(const Texto: array of string);
  end;

var
  FormDesign: TFormDesign;
  Texto : array of string;

implementation

{$R *.fmx}


//Cor ao clicar no TEdit--------------------------------------------------------

procedure TFormDesign.EditEnter(Sender: TObject);
Var
  I, j : Integer;
  Rect : TRectangle;
  skLabel : TSkLabel;
  skSvg : TSkSvg;
begin
  if Sender is TEdit then
  begin
    Rect := TRectangle(TEdit(Sender).Parent);

    for I := 0 to TEdit(Sender).ControlsCount - 1 do
      if TEdit(Sender).Controls[i] is TSkSvg then
      begin
        TSkSvg(TEdit(Sender).Controls[i]).Visible := False;
        Break;
      end;
  end;

  if Sender is TComboBox then
  begin
    Rect := TRectangle(TComboBox(Sender).Parent);

    for I := 0 to TComboBox(Sender).ControlsCount - 1 do
      if TComboBox(Sender).Controls[i] is TSkSvg then
      begin
        TSkSvg(TComboBox(Sender).Controls[i]).Visible := False;
        Break;
      end;
  end;

  for I := 0 to Rect.ControlsCount - 1 do
    if Rect.Controls[i] is TLayout then
    begin
      TSkLabel(
        TRectangle(
          TLayout(
            TLayout(
              Rect
            .Controls[i])
          .Controls[0])
        .Controls[0])
      .Controls[0]).TextSettings.FontColor := RectEditColEnter;
      Break;
    end;

  Rect.Stroke.Color := RectEditColEnter;

end;
//Cor ao sair do TEdit----------------------------------------------------------
procedure TFormDesign.EditExit(Sender: TObject);
var
  I, j : Integer;
  Rect : TRectangle;
  skLabel : TSkLabel;
  skSvg : TSkSvg;
  Combo : TComboBox;
  Check : Boolean;
begin
  Check := False;

  if Sender is TEdit then
  begin
    Rect := TRectangle(TEdit(Sender).Parent);

    for I := 0 to TEdit(Sender).ControlsCount - 1 do
      if TEdit(Sender).Controls[i] is TSkSvg then
      begin
        skSvg := TSkSvg(TEdit(Sender).Controls[i]);
        Break;
      end;

    if (TEdit(Sender).Text = '') and TEdit(Sender).Enabled then
      Check := True;

  end;

  if Sender is TComboBox then
  begin
    Rect := TRectangle(TComboBox(Sender).Parent);

    for I := 0 to TComboBox(Sender).ControlsCount - 1 do
      if TComboBox(Sender).Controls[i] is TSkSvg then
      begin
        skSvg := TSkSvg(TComboBox(Sender).Controls[i]);
        Break;
      end;

    if (TComboBox(Sender).ItemIndex < 1) and TComboBox(Sender).Enabled then
      Check := True;
  end;

  for I := 0 to Rect.ControlsCount - 1 do
    if Rect.Controls[i] is TLayout then
      Break;
  skLabel := TSkLabel(
               TRectangle(
                 TLayout(
                   TLayout(
                     Rect.Controls[i])
                   .Controls[0])
                 .Controls[0])
               .Controls[0]);

  if Check then
  begin
    skSvg.Visible := True;
    Rect.Stroke.Color := TAlphaColors.Red;
    skLabel.TextSettings.FontColor := RectEditColExitEmpy;
  end
  else
  begin
    skSvg.Visible := False;
    Rect.Stroke.Color := TAlphaColors.Black;
    skLabel.TextSettings.FontColor := RectEditColExit;
  end;


end;

procedure TFormDesign.FormResize(Sender: TObject);
begin
    if Self.Width < 385 then
  begin
    LayoutCli.Margins.Left := -45;
    MultiView1.Mode := TMultiViewMode.Drawer;
    //GridLayout1.Align := TAlignLayout.HorzCenter;
    //GridLayout1.Width := 175;
    //GridLayout1.Height := 50;
  end
  else
  begin
    MultiView1.Mode := TMultiViewMode.NavigationPane;
    LayoutCli.Margins.Left := 0;
    //GridLayout1.Align := TAlignLayout.Center;
    //GridLayout1.Width := 350;
    //GridLayout1.Height := 50;
  end;


  if Self.Width < 385 then
    RectPesq.Align        := TAlignLayout.Client
  else
  begin
    RectPesq.Align        := TAlignLayout.Right;
    RectPesq.Width        := 330;
  end;
end;

procedure TFormDesign.Rectangle3Click(Sender: TObject);
var
  i : Integer;
  fClose: Double;
begin
  if TRectangle(Sender).TagString = 'S' then Exit;
  TRectangle(Sender).TagString := 'S';

  for I := 0 to TRectangle(Sender).ChildrenCount -1 do
    if TRectangle(Sender).Children[i] is TSkAnimatedImage then
      Break;

  TSkAnimatedImage(TRectangle(Sender).Children[i]).Animation.Start;
end;

procedure TFormDesign.Rectangle6Click(Sender: TObject);
begin
  MultiView1.ShowMaster;
end;

procedure TFormDesign.RectButMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Single);
var
  I : Integer;
begin
  for I := 0 to TRectangle(Sender).ChildrenCount -1 do
    if TRectangle(Sender).Children[i] is TSkAnimatedImage then
      if TRectangle(Sender).TagString = 'S' then Exit;

  TRectangle(Sender).opacity := 0.8;
end;

procedure TFormDesign.RectButMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Single);
begin
  TRectangle(Sender).opacity := 1;
end;

procedure TFormDesign.RectPesqTClick(Sender: TObject);
begin
  mvTransp.HideMaster;
  mvTransp.Width := RectmvT.Width;

  CarregarListBox(Texto);

  mvTransp.ShowMaster;

end;

procedure TFormDesign.SkAnimatedImage2AnimationFinish(Sender: TObject);
var
  fClose : Double;
begin
  fClose := 0.12;
  if TSkAnimatedImage(Sender).Animation.Progress = fClose then
    TSkAnimatedImage(Sender).Animation.Inverse := False
  else
    TSkAnimatedImage(Sender).Animation.Inverse := True;

  TRectangle(TSkAnimatedImage(Sender).Parent).TagString := '';
end;

procedure TFormDesign.SkSvg10Click(Sender: TObject);
begin
  TEdit(TSkSvg(Sender).Parent).Text := '';
end;

procedure TFormDesign.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  SkSvgAlert1.Visible := False;
  SkSvgAlert2.Visible := False;


  SetLength(Texto, 5);
  Texto[0] := 'Ma��';
  Texto[1] := 'Laranja';
  Texto[2] := 'Banana';
  Texto[3] := 'Morango';
  Texto[4] := 'Abacaxi';

  // Chama a fun��o CarregarListView passando o array de strings

end;

procedure TFormDesign.CarregarListBox(const Texto: array of string);
var
  Item: TListBoxItem;
  I : Integer;
begin
  // Limpa o ListBox antes de adicionar novos itens
  ListBox1.Clear;

  // Adiciona cada texto como um item separado no ListBox
  for I := 0 to Length(Texto) - 1 do
  begin
    // Cria um novo item para cada texto
    Item := TListBoxItem.Create(ListBox1);
    Item.Text := Texto[I];
    Item.Height := 25; // Define a altura do item

    ListBox1.AddObject(Item);
  end;
end;



end.
