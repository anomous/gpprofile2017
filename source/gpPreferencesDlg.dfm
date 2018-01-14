object frmPreferences: TfrmPreferences
  Left = 374
  Top = 176
  BorderStyle = bsDialog
  Caption = 'GpProfile - Preferences'
  ClientHeight = 368
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
  Scaled = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 327
    Width = 483
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object oxButton1: TButton
      Left = 312
      Top = 8
      Width = 77
      Height = 27
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object oxButton2: TButton
      Left = 400
      Top = 8
      Width = 77
      Height = 27
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object PagePreferences: TPageControl
    Left = 0
    Top = 0
    Width = 483
    Height = 327
    ActivePage = tabAnalysis
    Align = alClient
    HotTrack = True
    TabOrder = 1
    object tabInstrumentation: TTabSheet
      Caption = 'Instrumentation'
      ImageIndex = -1
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 457
        Height = 81
        Caption = ' Settings '
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 60
          Height = 13
          Caption = '&Marker style:'
          FocusControl = cbxMarker
        end
        object Label2: TLabel
          Left = 16
          Top = 48
          Width = 80
          Height = 13
          Caption = '&Compiler version:'
          FocusControl = cbxCompilerVersion
        end
        object Label4: TLabel
          Left = 248
          Top = 24
          Width = 59
          Height = 13
          Caption = '&Speed/Size:'
          FocusControl = tbSpeedSize
        end
        object lblFasterTarget: TLabel
          Left = 340
          Top = 24
          Width = 56
          Height = 13
          Caption = 'faster target'
          OnClick = lblFasterTargetClick
          OnDblClick = lblFasterTargetClick
        end
        object lblSmallerFile: TLabel
          Left = 340
          Top = 54
          Width = 87
          Height = 13
          Caption = 'smaller profiling file'
          OnClick = lblSmallerFileClick
          OnDblClick = lblSmallerFileClick
        end
        object cbxMarker: TComboBox
          Left = 104
          Top = 20
          Width = 113
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            '{>>GpProfile}'
            '{$IFDEF GpProfile}')
        end
        object cbxCompilerVersion: TComboBox
          Left = 104
          Top = 44
          Width = 113
          Height = 21
          Style = csDropDownList
          TabOrder = 1
          OnChange = cbxCompilerVersionChange
        end
        object tbSpeedSize: TTrackBar
          Left = 312
          Top = 21
          Width = 25
          Height = 50
          Max = 3
          Min = 1
          Orientation = trVertical
          PageSize = 1
          Position = 1
          TabOrder = 2
          ThumbLength = 15
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 96
        Width = 457
        Height = 97
        Caption = ' Options '
        TabOrder = 1
        object cbProfilingAutostart: TCheckBox
          Left = 16
          Top = 44
          Width = 257
          Height = 17
          Caption = 'Start &profiling on target startup'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object cbShowAllFolders: TCheckBox
          Left = 16
          Top = 20
          Width = 257
          Height = 17
          Caption = 'Show &all folders'
          TabOrder = 0
        end
        object cbKeepFileDate: TCheckBox
          Left = 16
          Top = 108
          Width = 257
          Height = 17
          TabStop = False
          Caption = '&Keep file date unchanged when instrumenting'
          Enabled = False
          TabOrder = 3
          Visible = False
          OnClick = cbKeepFileDateClick
        end
        object cbUseFileDate: TCheckBox
          Left = 16
          Top = 132
          Width = 257
          Height = 17
          TabStop = False
          Caption = '&Use file date as file change indicator'
          Checked = True
          Enabled = False
          State = cbChecked
          TabOrder = 4
          Visible = False
        end
        object cbInstrumentAssembler: TCheckBox
          Left = 16
          Top = 68
          Width = 257
          Height = 17
          Caption = '&Instrument pure assembler procedures'
          TabOrder = 2
        end
      end
      object btnInstrumentationDefaults: TButton
        Left = 392
        Top = 259
        Width = 75
        Height = 25
        Caption = 'D&efaults'
        TabOrder = 2
        OnClick = btnInstrumentationDefaultsClick
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 199
        Width = 361
        Height = 90
        Caption = 'XE2 and up only'
        TabOrder = 3
        object Label3: TLabel
          Left = 16
          Top = 23
          Width = 80
          Height = 13
          Caption = 'Override platform'
        end
        object Label5: TLabel
          Left = 16
          Top = 55
          Width = 72
          Height = 13
          Caption = 'Override config'
        end
        object cbbXE2Platform: TComboBox
          Left = 104
          Top = 20
          Width = 145
          Height = 21
          DropDownCount = 3
          ItemIndex = 0
          TabOrder = 0
          Text = '(Read from .dproj file)'
          Items.Strings = (
            '(Read from .dproj file)'
            'Win32'
            'Win64')
        end
        object cbbXE2Config: TComboBox
          Left = 104
          Top = 52
          Width = 145
          Height = 21
          DropDownCount = 3
          ItemIndex = 0
          TabOrder = 1
          Text = 'Read from .dproj file'
          Items.Strings = (
            'Read from .dproj file'
            'Release'
            'Debug')
        end
      end
    end
    object tabAnalysis: TTabSheet
      Caption = 'Analysis'
      ImageIndex = -1
      object grpAnalysisSettings: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 79
        Width = 469
        Height = 49
        Align = alTop
        Caption = ' Options '
        TabOrder = 0
        object cbHideNotExecuted: TCheckBox
          Left = 16
          Top = 20
          Width = 241
          Height = 17
          Caption = ' &Hide procedures that were never executed'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object btnAnalysisDefaults: TButton
        Left = 392
        Top = 259
        Width = 75
        Height = 25
        Caption = 'D&efaults'
        TabOrder = 1
        OnClick = btnAnalysisDefaultsClick
      end
      object GroupBox7: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 469
        Height = 70
        Align = alTop
        Caption = ' Settings '
        TabOrder = 2
        object Label6: TLabel
          AlignWithMargins = True
          Left = 10
          Top = 23
          Width = 232
          Height = 13
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alTop
          Caption = 'Performance output file name: (without extension)'
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 10
          Top = 39
          Width = 449
          Height = 21
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel2'
          TabOrder = 0
          object edtPerformanceOutputFilename: TEdit
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 415
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 8
            Margins.Bottom = 0
            Align = alClient
            TabOrder = 0
          end
          object btnPrfPlaceholderSelection: TButton
            Left = 423
            Top = 0
            Width = 26
            Height = 21
            Align = alRight
            Caption = '...'
            TabOrder = 1
            OnClick = btnPrfPlaceholderSelectionClick
          end
        end
      end
    end
    object tabExcluded: TTabSheet
      Caption = 'Excluded units'
      ImageIndex = -1
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 457
        Height = 233
        Caption = ' Units '
        TabOrder = 0
        DesignSize = (
          457
          233)
        object memoExclUnits: TMemo
          Left = 16
          Top = 20
          Width = 209
          Height = 199
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object btnClear: TButton
          Left = 228
          Top = 202
          Width = 89
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'C&lear all'
          TabOrder = 2
          OnClick = btnClearClick
        end
        object btnAddFromFolder: TButton
          Left = 228
          Top = 185
          Width = 89
          Height = 17
          Anchors = [akTop, akRight]
          Caption = '&Add from folder'
          TabOrder = 1
          OnClick = btnAddFromFolderClick
        end
      end
      object btnUnitsDefaults: TButton
        Left = 392
        Top = 259
        Width = 75
        Height = 25
        Caption = 'D&efaults'
        TabOrder = 1
        OnClick = btnExcludedUnitsDefaultsClick
      end
    end
    object tabDefines: TTabSheet
      Caption = 'Conditional defines'
      ImageIndex = 3
      object GroupBox5: TGroupBox
        Left = 8
        Top = 8
        Width = 457
        Height = 233
        Caption = ' Symbols '
        TabOrder = 0
        object lvDefines: TListView
          Left = 16
          Top = 20
          Width = 209
          Height = 177
          Columns = <
            item
              Caption = 'Define'
              Width = 192
            end>
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          ShowColumnHeaders = False
          SmallImages = imgDefines
          SortType = stText
          TabOrder = 0
          ViewStyle = vsReport
          OnClick = lvDefinesClick
        end
        object cbStandardDefines: TCheckBox
          Left = 240
          Top = 22
          Width = 105
          Height = 17
          Caption = '&Compiler defines'
          TabOrder = 1
          OnClick = cbStandardDefinesClick
        end
        object cbProjectDefines: TCheckBox
          Left = 240
          Top = 58
          Width = 121
          Height = 17
          Caption = '&Project defines'
          TabOrder = 3
          OnClick = cbProjectDefinesClick
        end
        object cbConsoleDefines: TCheckBox
          Left = 240
          Top = 40
          Width = 121
          Height = 17
          Caption = 'C&onsole application'
          TabOrder = 4
          OnClick = cbConsoleDefinesClick
        end
        object btnAddDefine: TButton
          Left = 228
          Top = 135
          Width = 65
          Height = 17
          Action = actAddDefine
          TabOrder = 6
        end
        object btnRenameDefine: TButton
          Left = 228
          Top = 152
          Width = 65
          Height = 17
          Action = actRenameDefine
          TabOrder = 7
        end
        object btnDeleteDefine: TButton
          Left = 228
          Top = 169
          Width = 65
          Height = 17
          Action = actDeleteDefine
          TabOrder = 8
        end
        object inpDefine: TEdit
          Left = 16
          Top = 198
          Width = 209
          Height = 21
          TabOrder = 5
        end
        object cbxDelphiDefines: TComboBox
          Left = 352
          Top = 20
          Width = 89
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          OnChange = cbxDelphiDefinesChange
        end
        object btnClearUserDefines: TButton
          Left = 228
          Top = 186
          Width = 65
          Height = 17
          Action = actClearAllDefines
          Caption = 'Clear u&ser'
          TabOrder = 9
        end
        object cbDisableUserDefines: TCheckBox
          Left = 240
          Top = 76
          Width = 121
          Height = 17
          Caption = 'Disable &user defines'
          TabOrder = 10
          OnClick = cbDisableUserDefinesClick
        end
        object btnClearAllDefines: TButton
          Left = 228
          Top = 203
          Width = 65
          Height = 17
          Action = actClearAllDefines
          TabOrder = 11
        end
      end
      object btnDefinesDefaults: TButton
        Left = 392
        Top = 259
        Width = 75
        Height = 25
        Caption = 'D&efaults'
        TabOrder = 1
        OnClick = btnDefinesDefaultsClick
      end
    end
  end
  object imgDefines: TImageList
    Left = 396
    Top = 224
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000848484000000000084848400000000008484840000000000848484000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000848484000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000848484000000000084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00C6C6C600FFFF
      FF00C6C6C60000000000FFFFFF00FFFFFF00C6C6C6008484840084848400C6C6
      C600C6C6C6008484840084848400000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF0000000000FFFFFF00FFFFFF00C6C6C600C6C6C60084848400FFFF
      FF00C6C6C600C6C6C60084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00C6C6C600FFFF
      FF00C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF000000000084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00C6C6C600FFFF
      FF00C6C6C60000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      8400FFFFFF00FFFFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000C6C6C600FFFFFF00C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000084840000848400008484000084840000848400008484000084
      840000FFFF0000FFFF0000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00D555800100000000AAAB800100000000
      D555800100000000AAAB800100000000D555800100000000AAAB800100000000
      D555800100000000AAAB800100000000D555800100000000AAAB800100000000
      D555800100000000AABB801900000000D557801300000000AAAF800700000000
      D55F800F00000000FFFFFFFF0000000080008000FFFF80018000800000038001
      C631800000038001C631800000008001C631800000008001C631800000008001
      C631800000008001C631800000008001C6318000000080018000800000008001
      8000800000038001C001800000038019F007800000038013FC1F800000038007
      FE3F8000FFFF800FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Left = 436
    Top = 224
    object actAddDefine: TAction
      Category = 'Defines'
      Caption = '&Add'
      Hint = 'Add conditional symbol'
      OnExecute = actAddDefineExecute
      OnUpdate = actAddDefineUpdate
    end
    object actRenameDefine: TAction
      Category = 'Defines'
      Caption = '&Rename'
      Hint = 'Rename conditional symbol'
      OnExecute = actRenameDefineExecute
      OnUpdate = actRenameDefineUpdate
    end
    object actDeleteDefine: TAction
      Category = 'Defines'
      Caption = '&Delete'
      Hint = 'Delete conditional symbol'
      OnExecute = actDeleteDefineExecute
      OnUpdate = actDeleteDefineUpdate
    end
    object actClearAllDefines: TAction
      Category = 'Defines'
      Caption = 'C&lear all'
      Hint = 'Clear all conditional symbols'
      OnExecute = actClearAllDefinesExecute
      OnUpdate = actClearAllDefinesUpdate
    end
  end
end
