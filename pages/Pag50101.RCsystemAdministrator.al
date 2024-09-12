/// <summary>
/// Page RC system Administrator (ID 50101).
/// </summary>
page 50101 "RC system Administrator"
{
    ApplicationArea = All;
    Caption = 'RC system Administrator';
    PageType = HeadlinePart;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group("&Greetings")
            {
                ShowCaption = false;
                Visible = IsGreeting;
                field(greetings; RCHeadlinesPageCommon.GetGreetingText())
                {
                    ApplicationArea = basic, suite;
                    Editable = false;
                    Caption = 'greetings';
                }
            }
            group("$Sales")
            {
                field(sales; StrSubstNo(Insignts, BiggestSalesOrder()))
                {
                    Caption = 'Biggest Sales Order';
                    ApplicationArea = basic, suite;
                    Visible = true;
                    DrillDown = true;
                    trigger OnDrillDown()
                    var
                        myInt: Integer;
                    begin
                        page.Run(page::"Sales Order");
                    end;
                }
            }
            group("$Users")
            {
                ShowCaption = false;
                field(Users; StrSubstNo(Users, GetNoOfUsers()))
                {
                    ApplicationArea = basic, suite;
                    Editable = false;
                    DrillDown = true;
                    trigger OnDrillDown()
                    var
                        myInt: Integer;
                    begin
                        page.Run(page::"Concurrent Session List");
                    end;
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        RCHeadlinesPageCommon.HeadlineOnOpenPage(Page::"RC system Administrator");
        IsGreeting := RCHeadlinesPageCommon.IsUserGreetingVisible();
    end;

    local procedure BiggestSalesOrder(): Decimal
    var
        salesOrds: Record "Sales Header";
        MaxAmount: Decimal;
        UpperLimit: Decimal;
    begin
        maxAmount := 0;
        UpperLimit := 999999999999999.99;
        salesOrds.Reset();
        salesOrds.SetRange(Amount, 0, UpperLimit);
        if salesOrds.FindSet() then begin
            repeat
                if salesOrds.Amount > MaxAmount then
                    MaxAmount := salesOrds.Amount;
            until salesOrds.Next() = 0;
        end;
        exit(MaxAmount);
    end;

    local procedure GetNoOfUsers(): Integer
    var
        ActiveSession: Record "Active Session";
    begin
        ActiveSession.Reset();
        ActiveSession.SetRange("Client Type", ActiveSession."Client Type"::"Web Client");
        exit(ActiveSession.Count());

    end;


    var
        RCHeadlinesPageCommon: Codeunit "RC Headlines Page Common";
        IsGreeting: Boolean;
        Insignts: label '<qualifier>Insights from last week</qualifier><payload>The biggest sales Order was for <emphasize>%1</emphasize></payload>';
        Users: label '<qualifier>Users</qualifier><payload>The number of users <emphasize>%1</emphasize></payload>';
}
