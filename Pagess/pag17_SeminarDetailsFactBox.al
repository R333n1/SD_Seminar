page 50117 "CSD Seminar Details FactBox"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 2
    //     - Created new page

    Caption = 'Seminar Details';
    PageType = CardPart;
    SourceTable = "CSD Seminar";

    layout
    {
        area(content)
        {
            field("No."; Rec."No.")
            {
                ApplicationArea = all;
            }
            field(Name; Rec.Name)
            {
                ApplicationArea = all;
            }
            field("Seminar Duration"; Rec."Seminar Duration")
            {
                ApplicationArea = all;
            }
            field("Minimum Participants"; Rec."Minimum Participants")
            {
                ApplicationArea = all;
            }
            field("Maximum Participants"; Rec."Maximum Participants")
            {
                ApplicationArea = all;
            }
            field("Seminar Price"; Rec."Seminar Price")
            {
                ApplicationArea = all;
            }
        }
    }


}

