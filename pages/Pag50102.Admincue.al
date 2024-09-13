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
            }
            cuegroup(NoOfUsers)
            {
                ShowCaption = false;
                field("No Of Users Logged"; Rec."No Of Users Logged")
                {
                    ApplicationArea = basic, suite;
                    DrillDownPageId = "Concurrent Session List";
                }
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
}
