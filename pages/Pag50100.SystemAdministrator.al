/// <summary>
/// Page System Administrator (ID 50100).
/// </summary>
page 50100 "System Administrator"
{
    ApplicationArea = All;
    Caption = 'System Administrator';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "RC system Administrator")
            {
                ApplicationArea = basic, suite;
            }
        }

    }
    actions
    {
        area(Sections)
        {
            group("&Users")
            {
                action(users)
                {
                    Caption = 'users';
                    ApplicationArea = basic, suite;
                    RunObject = page "User Groups";
                }


            }
        }
        area(Creation)
        {
            action("User Setup")
            {
                Caption = 'User Setup';
                ApplicationArea = basic, suite;
                RunObject = page "User Setup";
            }
            action(sessions)
            {
                Caption = 'sessions';
                ApplicationArea = basic, suite;
                RunObject = page "Concurrent Session List";
            }
        }
        area(Embedding)
        {
            action("Chart Of Acounts")
            {
                Caption = 'Chart Of Acounts';
                ApplicationArea = basic, suite;
                RunObject = page "Chart of Accounts";
            }
            action(customers)
            {
                Caption = 'customers';
                ApplicationArea = basic, suite;
                RunObject = page "Customer List";
            }
        }
        area(Reporting)
        {
            action("G/L Registers")
            {
                Caption = 'G/L Registers';
                ApplicationArea = basic, suite;
                RunObject = report "G/L Register";
            }
        }
    }
}


