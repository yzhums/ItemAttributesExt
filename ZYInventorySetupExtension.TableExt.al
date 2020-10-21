tableextension 50100 "ZY Inventory Setup Extension" extends "Inventory Setup"
{
    fields
    {
        field(50100; "Shortcut Item Attribute 1"; Integer)
        {
            Caption = 'Shortcut Item Attribute 1';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50101; "Shortcut Item Attribute 2"; Integer)
        {
            Caption = 'Shortcut Item Attribute 2';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50102; "Shortcut Item Attribute 3"; Integer)
        {
            Caption = 'Shortcut Item Attribute 3';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
        field(50103; "Shortcut Item Attribute 4"; Integer)
        {
            Caption = 'Shortcut Item Attribute 4';
            TableRelation = "Item Attribute";
            DataClassification = CustomerContent;
        }
    }
}
