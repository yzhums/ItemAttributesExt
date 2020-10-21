pageextension 50101 "ZY Inventory Setup Extension" extends "Inventory Setup"
{
    layout
    {
        addafter(Numbering)
        {
            group(ItemAttributes)
            {
                Caption = 'Item Attributes';

                field("Shorcut Item Attribute 1"; Rec."Shortcut Item Attribute 1")
                {
                    ApplicationArea = All;
                }
                field("Shorcut Item Attribute 2"; Rec."Shortcut Item Attribute 2")
                {
                    ApplicationArea = All;
                }
                field("Shorcut Item Attribute 3"; Rec."Shortcut Item Attribute 3")
                {
                    ApplicationArea = All;
                }
                field("Shorcut Item Attribute 4"; Rec."Shortcut Item Attribute 4")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
