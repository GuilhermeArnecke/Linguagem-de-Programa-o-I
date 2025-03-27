unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Samples.Spin, Vcl.FileCtrl, Vcl.CheckLst, Vcl.WinXCalendars, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    RadioGroup: TRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    CheckBox: TCheckBox;
    StaticText1: TStaticText;
    Edit1: TEdit;
    DriveComboBox1: TDriveComboBox;
    SpinEdit1: TSpinEdit;
    MaskEdit1: TMaskEdit;
    Image1: TImage;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Button1: TButton;
    CheckListBox1: TCheckListBox;
    StaticText2: TStaticText;
    LabeledEdit1: TLabeledEdit;
    ColorListBox1: TColorListBox;
    Button2: TButton;
    ColorBox1: TColorBox;
    GroupBox2: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    RichEdit: TRichEdit;
    ToggleSwitch1: TToggleSwitch;
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
