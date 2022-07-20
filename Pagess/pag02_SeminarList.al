page 50102 "CSD Seminar List"
{
    PageType = List;
    //ApplicationArea = All;
    Caption = 'Seminar List';
    UsageCategory = Lists;
    CardPageId = 50101;
    Editable = false;
    SourceTable = "CSD Seminar";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    //ApplicationArea = All;

                }

                field(Name; Name)
                {
                    //ApplicationArea = All;

                }

                field("Seminar Duration"; "Seminar Duration")
                {
                    //ApplicationArea = All;

                }

                field("Seminar Price"; "Seminar Price")
                {
                    //ApplicationArea = All;

                }

                field("Minimum Participants"; "Minimum Participants")
                {
                    //ApplicationArea = All;

                }

                field("Maximum Participants"; "Maximum Participants")
                {
                    //ApplicationArea = All;

                }
            }
        }

        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    //RunObject=page "CSD Seminar Comment Sheet";
                    //RunPageLink = "Table Name"= const(Seminar), 
                    //"No."=field("No.");
                    Image = Comment;
                    /*
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    */
                }
            }
        }
    }


}