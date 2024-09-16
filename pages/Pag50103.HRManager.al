/// <summary>
/// Page HR Manager (ID 50103).
/// </summary>
page 50103 "HR Manager"
{
    ApplicationArea = All;
    Caption = 'HR Manager';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Hr manager headline")
            {
                ApplicationArea = basic, suite;
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group(Finance)
            {
                Caption = 'Finance';
                action("General Journals")
                {
                    Caption = 'General Journals';
                    ApplicationArea = basic, suite;
                    RunObject = page "General Journal Template List";
                }
                action("G/L Account Categories")
                {
                    Caption = 'G/L Account Categories';
                    ApplicationArea = basic, suite;
                    RunObject = page "G/L Account Categories";
                }
                action("VAT Statements")
                {
                    Caption = 'VAT Statements';
                    ApplicationArea = basic, suite;
                    RunObject = page "VAT Statement";
                }
                action("Financial Reporting")
                {
                    Caption = 'Financial Reporting';
                    ApplicationArea = basic, suite;
                    RunObject = page "Financial Reports";
                }
                action("Partners")
                {
                    Caption = 'partners';
                    ApplicationArea = basic, suite;
                    RunObject = page "IC Partner List";
                }
            }
            group("Cash Management")
            {
                Caption = 'Cash Management';
                action("Cash Flow Forecasts")
                {
                    Caption = 'Cash Flow Forecasts';
                    ApplicationArea = basic, suite;
                    RunObject = page "Cash Flow Forecast List";
                }

                action("Cash Flow Manual Expenses")
                {
                    Caption = 'Cash Flow Manual Expenses';
                    ApplicationArea = basic, suite;
                    RunObject = page "Cash Flow Manual Expenses";
                }
                action("&Bank Accounts")
                {
                    Caption = 'Bank Accounts';
                    ApplicationArea = basic, suite;
                    RunObject = page "Bank Account List";
                }
                action("Direct Debit Collections")
                {
                    Caption = 'Direct Debit Collections';
                    ApplicationArea = All;
                    RunObject = page "Direct Debit Collections";
                }
                action("Bank Accounts Reconciliations")
                {
                    Caption = 'Bank Accounts Reconciliations';
                    ApplicationArea = All;
                    RunObject = page "Bank Acc. Reconciliation";
                }
                action("Chart of Cash Flow Accounts")
                {
                    Caption = 'Chart of Cash Flow Accounts';
                    ApplicationArea = basic, suite;
                    RunObject = page "Chart of Cash Flow Accounts";
                }
            }
        }
        area(Embedding)
        {
            action(customers)
            {
                Caption = 'Customers';
                ApplicationArea = basic, suite;
                RunObject = page "Customer List";
            }
            action(vendors)
            {
                Caption = 'vendors';
                ApplicationArea = basic, suite;
                RunObject = page "Vendor List";
            }
            action(Items)
            {
                Caption = 'Items';
                ApplicationArea = basic, suite;
                RunObject = page "Item List";
            }
            action("Bank Accounts")
            {
                Caption = 'Bank Accounts';
                ApplicationArea = basic, suite;
                RunObject = page "Bank Account List";
            }
            action("Chart Of Accounts")
            {
                Caption = 'Chart Of Accounts';
                ApplicationArea = basic, suite;
                RunObject = page "Chart of Accounts";
            }

        }
        area(Creation)
        {
            action("Sales Quote")
            {
                Caption = 'Sales Quote';
                ApplicationArea = basic, suite;
                RunObject = page "Sales Quote";
            }
            action("Sales Order")
            {
                Caption = 'Sales order';
                ApplicationArea = basic, suite;
                RunObject = page "Sales Order";
            }
            action("Sales Invoice")
            {
                Caption = 'Sales Invoice';
                ApplicationArea = basic, suite;
                RunObject = page "Sales Invoice";
            }
            action("Purchase Quote")
            {
                Caption = 'Purchase Quote';
                ApplicationArea = basic, suite;
                RunObject = page "Purchase Quote";
            }
            action("purchase Order")
            {
                Caption = 'purchase order';
                ApplicationArea = basic, suite;
                RunObject = page "purchase Order";
            }
            action("purchase Invoice")
            {
                Caption = 'Purchase Invoice';
                ApplicationArea = basic, suite;
                RunObject = page "Purchase Invoice";
            }

        }
        area(Processing)
        {
            action("Find entries")
            {
                Caption = 'Find entries';
                ApplicationArea = basic, suite;
                RunObject = page Navigate;
            }
            group(New)
            {
                Caption = 'New';
                action(Customer)
                {
                    Caption = 'Customer';
                    Image = Customer;
                    ApplicationArea = basic, suite;
                    RunObject = page "Customer Templ. Card";
                }
                action(Vendor)
                {
                    Caption = 'Vendor';
                    Image = Vendor;
                    ApplicationArea = basic, suite;
                    RunObject = page "Vendor Templ. Card";
                }
            }
            group(Reports)
            {
                Caption = 'Reports';
                group("Financial Reports")
                {
                    Caption = 'Financial Reports';
                    action("Balance Sheet")
                    {
                        Caption = 'Balance Sheet';
                        Image = Report2;
                        ApplicationArea = basic, suite;
                        RunObject = report "Balance Sheet";
                    }
                    action("Income Statements")
                    {
                        Caption = 'Income Statements';
                        Image = Report;
                        ApplicationArea = basic, suite;
                        RunObject = report "Income Statement";
                    }
                }
            }
        }
        area(Reporting)
        {
            group("Excel Reports")
            {
                Caption = 'Excel Reports';
                action("$Balance Sheet")
                {
                    Caption = 'Balance Sheet';
                    ApplicationArea = basic, suite;
                    RunObject = report "Balance Sheet";
                    Image = Report;
                }
                action("$Income Statements")
                {
                    Caption = 'Income Statements';
                    Image = Report;
                    ApplicationArea = basic, suite;
                    RunObject = report "Income Statement";
                }
            }
        }

    }
}
