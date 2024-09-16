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
        LoggedUser: Record "Logged User";
    begin
        if not LoggedUser.get() then begin
            LoggedUser.Init();
            LoggedUser.Insert();
        end;

    end;

}
