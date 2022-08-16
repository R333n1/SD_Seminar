pageextension 50104 "CSD ResourceLedgerEntryExt" extends "Resource Ledger Entries"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 4-3
{
    layout
    {
        addlast(Content)
        {
            field("Seminar No."; Rec."CSD Seminar No.")
            {
                ApplicationArea = all;
            }
            field("Seminar Registration No."; Rec."CSD Seminar Registration No.")
            {
                ApplicationArea = all;
            }


        }
    }

}