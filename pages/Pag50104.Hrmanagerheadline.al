/// <summary>
/// Page Hr manager headline (ID 50104).
/// </summary>
page 50104 "Hr manager headline"
{
    ApplicationArea = All;
    Caption = 'Hr manager headline';
    PageType = HeadlinePart;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            group("&Greetings")
            {
                ShowCaption = false;
                Visible = IsGreetings;
                field(Greeting; RCHeadlinesPageCommon.GetGreetingText())
                {
                    ApplicationArea = basic, suite;
                    Caption = 'Greetings';
                    Editable = false;
                }
            }
            group(insights)
            {
                ShowCaption = false;
                field(item; StrSubstNo(ItemHeadlineQuote, GetItemsSold(), GetQuantityOfItem()))
                {
                    ApplicationArea = basic, suite;
                    DrillDownPageId = "Sales Lines";
                }
                field(CustomerHeadlineQuote; StrSubstNo(CustomerHeadlineQuote, GetCustomerBiggestSales(), GetCustomerSaleLCY()))
                {
                    ApplicationArea = basic, suite;
                    DrillDown = true;
                    Editable = false;
                    trigger OnDrillDown()
                    var
                        myInt: Integer;
                    begin
                        page.Run(page::"Customer List");
                    end;
                }
            }

        }

    }
    local procedure GetItemsSold() ItemName: Text
    var
        Item: Record Item;
    begin
        Item.Reset();
        Item.SetFilter("Unit Price", '>%1', Item."Unit Price");
        Item.Ascending(false);
        if Item.FindFirst() then begin
            ItemName := Item.Description;
        end;

    end;

    local procedure GetQuantityOfItem() ItemQuantity: Decimal
    var
        Item: Record Item;
    begin
        Item.Reset();
        Item.SetFilter("Maximum Order Quantity", '>%1', Item."Maximum Order Quantity");
        Item.Ascending(false);
        if Item.FindFirst() then begin
            ItemQuantity := Item."Maximum Order Quantity";
        end;

    end;

    local procedure GetCustomerBiggestSales() CustomerName: Text
    var
        Cust: Record Customer;
    begin
        Cust.Reset();
        Cust.SetCurrentKey("Sales (LCY)");
        Cust.Ascending(false);
        if Cust.FindFirst() then begin
            CustomerName := Cust.Name;
        end;

    end;

    local procedure GetCustomerSaleLCY() SalesLcy: Decimal
    var
        Cust: Record Customer;
    begin
        cust.Reset();
        Cust.SetCurrentKey("Sales (LCY)");
        Cust.Ascending(false);
        if Cust.FindFirst() then begin
            SalesLcy := Cust."Sales (LCY)";
        end;


    end;


    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        RCHeadlinesPageCommon.HeadlineOnOpenPage(Page::"Hr manager headline");
        IsGreetings := RCHeadlinesPageCommon.IsUserGreetingVisible();
    end;

    var
        RCHeadlinesPageCommon: Codeunit "RC Headlines Page Common";
        [InDataSet]
        IsGreetings: Boolean;
        ItemHeadlineQuote: Label '<qualifier>Insights From Last Week</qualifier><payload>The best-selling item was <emphasize>%1</emphasize> with <emphasize>%2</emphasize>units sold</payload>';
        CustomerHeadlineQuote: Label '<qualifier>Insights From Last Week</qualifier><payload>Your top Customer was <emphasize>%1</emphasize>, bought for  <emphasize>Kes,%2</emphasize>units sold</payload>';
}
