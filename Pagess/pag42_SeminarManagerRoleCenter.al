page 50142 "CSD Seminar Manager RoleCenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Seminar Manager RoleCenter';

    layout
    {
        area(RoleCenter)
        {
            group(Column1)
            {
                part("Activities"; "CSD Seminar Manager Activities")
                {
                    ApplicationArea = all;
                    Caption = 'Activities';
                }
                part("My Seminars"; "CSD My Seminars")
                {
                    ApplicationArea = all;
                    Caption = 'My Seminars';
                }
            }

            group(Column2)
            {
                part("My Customers"; "My Customers")
                {
                    Caption = 'My Customers';
                    ApplicationArea = all;
                }
                systempart("MyNotes"; MyNotes)
                {
                    Caption = 'MyNotes';
                    ApplicationArea = all;
                }
                part("ReportInbox"; "Report Inbox Part")
                {
                    Caption = 'ReportInbox';
                    ApplicationArea = all;
                }

            }
        }
    }

    actions
    {

        area(Embedding)
        {
            action(SeminarRegistrations)
            {
                ApplicationArea = All;
                Caption = 'Seminar Registration';
                Image = List;
                RunObject = page "CSD Posted Seminar Reg. List";
                ToolTip = 'Create seminar registrations';
            }
            action(Seminars)
            {
                ApplicationArea = All;
                Caption = 'Seminars';
                Image = List;
                RunObject = page "CSD Seminar List";
                ToolTip = 'View all seminars';
            }
            action(Instructors)
            {
                ApplicationArea = All;
                Caption = 'Instructors';
                RunObject = page "Resource List";
                RunPageView = where(type = const(Person));
                ToolTip = 'View all resources registeres as person';
            }
            action(Rooms)
            {
                ApplicationArea = All;
                Caption = 'Instructors';
                RunObject = page "Resource List";
                RunPageView = where(type = const(Machine));
                ToolTip = 'View all resources registeres as machines';
            }
            action("Sales Invoices")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Invoices';
                RunObject = page "Resource List";
                Image = Invoice;
                ToolTip = 'Register your sales to customer';
            }
            action("Sales Credit Memos")
            {
                ApplicationArea = all;
                Caption = 'Sales Credit Memos';
                RunObject = page "Sales Credit Memo";
                ToolTip = 'Revert the financial transactions involved when your customers want to cancel a purchase';
            }
            action(Customers)
            {
                ApplicationArea = All;
                Caption = 'Customers';
                Image = Customer;
                RunObject = page "Customer List";
                ToolTip = 'View or edit detailed information for the customers that you trade with';
            }

        }

        area(Sections)
        {
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                ToolTip = 'View history for sales, shipments and inventory';

                action("Posted Seminar Registrations")
                {
                    Caption = 'Posted Seminar Registrations';
                    ApplicationArea = all;
                    Image = Timesheet;
                    RunObject = page "CSD Posted Seminar Reg. List";
                    ToolTip = 'Open the list of posted Registrations';
                }
                action("Posted Sales Invoices")
                {
                    Caption = 'Posted Sales Invoices';
                    ApplicationArea = all;
                    Image = PostedOrder;
                    RunObject = page "Posted Sales Invoices";
                    ToolTip = 'Open the list of posted sales invoices';
                }

                action("Posted Sales Credit Memos")
                {
                    Caption = 'Posted Sales Credit Memos';
                    ApplicationArea = all;
                    Image = PostedOrder;
                    RunObject = page "Posted Sales Credit Memos";
                    ToolTip = 'Open the list of posted sales credit memos.';
                }
                action("Registers")
                {
                    Caption = 'Registers';
                    ApplicationArea = all;
                    Image = PostedShipment;
                    RunObject = page "CSD Seminar Registers";
                    ToolTip = 'Open the list of Seminar Registers.';
                }

            }
        }

        area(Creation)
        {
            action(NewSeminarRegistration)
            {
                Caption = 'Seminar Registration';
                ApplicationArea = all;
                Image = NewTimesheet;
                RunObject = page "CSD Seminar Registration";
                RunPageMode = Create;
            }
            action(NewSalesInvoice)
            {
                Caption = 'Sales Invoice';
                ApplicationArea = all;
                Image = NewSalesInvoice;
                RunObject = page "Sales Invoice";
                RunPageMode = Create;
            }
        }

        area(Processing)
        {
            action(CreateInvoice)
            {
                ApplicationArea = all;
                Caption = 'Create Invoice';
                Image = CreateJobSalesInvoice;
                RunObject = report "Create Seminar Invoices";
            }
            action(Navigate)
            {
                ApplicationArea = all;
                Caption = 'Navigate';
                Image = Navigate;
                RunObject = page Navigate;
                RunPageMode = Edit;
            }
        }

    }

}