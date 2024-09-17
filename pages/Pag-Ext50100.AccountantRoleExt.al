/// <summary>
/// PageExtension Accountant Role Ext (ID 50100) extends Record Accountant Role Center.
/// </summary>
pageextension 50100 "Accountant Role Ext" extends "Accountant Role Center"
{
    layout
    {


        modify(ApprovalsActivities)
        {
            visible = false;
        }
        addafter(Control1902304208)
        {
            part(Users; "No of logged User")
            {
                ApplicationArea = basic, suite;

            }
        }

    }
    actions
    {
        addafter(Intrastat)
        {
            action(sales)
            {
                Caption = 'Sales';
                ApplicationArea = basic, suite;
                RunObject = page "Sales N";
            }
        }
    }

}
