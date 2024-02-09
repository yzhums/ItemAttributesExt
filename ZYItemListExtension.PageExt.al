pageextension 50102 "ZY Item List Extension" extends "Item List"
{
    layout
    {
        addafter("Unit Price")
        {
            field("Shorcut Item Attribute 1"; ShorcutItemAttribute1)
            {
                CaptionClass = '1,5,,' + Caption01;
                Visible = Visable01;
                ApplicationArea = All;
            }
            field("Shorcut Item Attribute 2"; ShorcutItemAttribute2)
            {
                CaptionClass = '1,5,,' + Caption02;
                Visible = Visable02;
                ApplicationArea = All;
            }
            field("Shorcut Item Attribute 3"; ShorcutItemAttribute3)
            {
                CaptionClass = '1,5,,' + Caption03;
                Visible = Visable03;
                ApplicationArea = All;
            }
            field("Shorcut Item Attribute 4"; ShorcutItemAttribute4)
            {
                CaptionClass = '1,5,,' + Caption04;
                Visible = Visable04;
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetRecord()
    var
    begin
        SetCaptionData();
        SetItemAttibuteValue();
    end;

    local procedure SetCaptionData()
    var
        ItemAttribute: Record "Item Attribute";
        InventorySetup: Record "Inventory Setup";
    begin
        Clear(Caption01);
        Clear(Caption02);
        Clear(Caption03);
        Clear(Caption04);
        Clear(Visable01);
        Clear(Visable02);
        Clear(Visable03);
        Clear(Visable04);
        if InventorySetup.Get() then begin
            if ItemAttribute.Get(InventorySetup."Shortcut Item Attribute 1") then begin
                Caption01 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visable01 := true;
            end else begin
                Visable01 := false;
            end;

            ItemAttribute.Reset();
            if ItemAttribute.Get(InventorySetup."Shortcut Item Attribute 2") then begin
                Caption02 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visable02 := true;
            end else begin
                Visable02 := false;
            end;

            ItemAttribute.Reset();
            if ItemAttribute.Get(InventorySetup."Shortcut Item Attribute 3") then begin
                Caption03 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visable03 := true;
            end else begin
                Visable03 := false;
            end;

            ItemAttribute.Reset();
            if ItemAttribute.Get(InventorySetup."Shortcut Item Attribute 4") then begin
                Caption04 := ItemAttribute.GetTranslatedName(GlobalLanguage);
                Visable04 := true;
            end else begin
                Visable04 := false;
            end;
        end;
    end;

    local procedure SetItemAttibuteValue()
    var
        ItemAttributeValueMap: Record "Item Attribute Value Mapping";
        ItemAttributeValue: Record "Item Attribute Value";
        InventorySetup: Record "Inventory Setup";
    begin
        ShorcutItemAttribute1 := '';
        ShorcutItemAttribute2 := '';
        ShorcutItemAttribute3 := '';
        ShorcutItemAttribute4 := '';
        if InventorySetup.Get() then begin
            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Item Attribute 1") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShorcutItemAttribute1 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            ItemAttributeValueMap.Reset();
            ItemAttributeValue.Reset();
            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Item Attribute 2") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShorcutItemAttribute2 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            ItemAttributeValueMap.Reset();
            ItemAttributeValue.Reset();
            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Item Attribute 3") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShorcutItemAttribute3 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);

            ItemAttributeValueMap.Reset();
            ItemAttributeValue.Reset();
            if ItemAttributeValueMap.Get(Database::Item, Rec."No.", InventorySetup."Shortcut Item Attribute 4") then
                if ItemAttributeValue.Get(ItemAttributeValueMap."Item Attribute ID", ItemAttributeValueMap."Item Attribute Value ID") then
                    ShorcutItemAttribute4 := ItemAttributeValue.GetTranslatedName(GlobalLanguage);
        end;
    end;

    var

        ShorcutItemAttribute1: Text[250];
        ShorcutItemAttribute2: Text[250];
        ShorcutItemAttribute3: Text[250];
        ShorcutItemAttribute4: Text[250];
        Caption01, Caption02, Caption03, Caption04 : Text[50];
        Visable01, Visable02, Visable03, Visable04 : Boolean;
}
