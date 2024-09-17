/// <summary>
/// Page Sales N (ID 50106).
/// </summary>
page 50106 "Sales N"
{
    ApplicationArea = All;
    Caption = 'Sales N';
    PageType = Card;
    SourceTable = "Sales Lin";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Sales N"; Rec."Sales N")
                {
                    ToolTip = 'Specifies the value of the Sales N field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("sales Type"; Rec."sales Type")
                {
                    ToolTip = 'Specifies the value of the sales Type field.', Comment = '%';
                }
            }
            part(salesline; Salessubline)
            {
                ApplicationArea = all;
                SubPageLink = "sales line " = field("Sales N");
            }
        }
        area(FactBoxes)
        {
            systempart(notes; Notes)
            {
                ApplicationArea = basic, suite;
            }
        }

    }

}
