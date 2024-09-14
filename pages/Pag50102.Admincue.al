/// <summary>
/// Page Admin cue (ID 50102).
/// </summary>
page 50102 "Admin cue"
{
    ApplicationArea = All;
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = "Admin Cue";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(Activities)
            {
                CuegroupLayout = wide;
                Caption = 'sales invoice';
                field(OpenInvoices; Rec.OpenInvoices)
                {
                    ApplicationArea = basic, suite;
                    DrillDownPageId = "Sales Invoice List";
                }
                field("No Of Users Logged"; Rec."No Of Users Logged")
                {
                    ApplicationArea = basic, suite;
                    DrillDownPageId = "Concurrent Session List";
                }
                field("No Of Minutes Logged On"; Rec."No Of Minutes Logged On")
                {
                    ApplicationArea = basic, suite;
                    DrillDownPageId = "User Time Registers";
                }
            }
            cuegroup(HyperLinks)
            {
                actions
                {
                    action(InstaPage)
                    {
                        ApplicationArea = basic, suite;
                        Image = TileBrickCalendar;
                        trigger OnAction()
                        var
                            myInt: Integer;
                        begin
                            Hyperlink('https://www.instagram.com/alexis_devr/');
                        end;
                    }
                    action(gmail)
                    {
                        ApplicationArea = basic, suite;
                        Image = TileGreen;
                        trigger OnAction()
                        var
                            myInt: Integer;
                        begin
                            Hyperlink('https://mail.google.com/mail/u/0/#inbox');
                        end;

                    }
                    action("Purchase invoices")
                    {
                        ApplicationArea = basic, suite;
                        Image = TileCamera;
                        trigger OnAction()
                        var
                            myInt: Integer;
                        begin
                            Page.Run(Page::"Purchase Invoice");
                        end;

                    }

                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Set Up Cues")
            {
                ApplicationArea = basic, suite;
                Caption = 'Set Up Cues';
                ToolTip = 'set up the cues (status tiles) related to the role.';
                Image = Setup;
                trigger OnAction()
                var
                    CuesAndKPIs: Codeunit "Cues And KPIs";
                    CueRecordRef: RecordRef;
                begin
                    CueRecordRef.GetTable(Rec);
                    CuesAndKPIs.OpenCustomizePageForCurrentUser(CueRecordRef.Number);
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;

    trigger OnAfterGetCurrRecord()
    var

        AdminCue: Record "Admin Cue";
    begin
        Rec."No Of Minutes Logged On" := Rec.NoOfMinutesLoggedOnUsers()
    end;

}
