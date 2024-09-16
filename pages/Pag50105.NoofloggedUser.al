/// <summary>
/// Page No of logged User (ID 50105).
/// </summary>
page 50105 "No of logged User"
{
    ApplicationArea = All;
    Caption = 'No of logged User';
    PageType = CardPart;
    SourceTable = "Logged User";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(Users)
            {
                field("No of logged user"; Rec."No of logged user")
                {
                    ApplicationArea = basic, suite;
                    DrillDownPageId = "Concurrent Session List";
                }
            }
        }
    }
    trigger OnOpenPage()
    var

    begin
        if not rec.Get() then begin
            rec.Init();
            Rec.Insert();
        end;
    end;

}
