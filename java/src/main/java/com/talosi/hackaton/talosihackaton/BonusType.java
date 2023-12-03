package com.talosi.hackaton.talosihackaton;

public enum BonusType {
    COOPTATION("Prime de cooptation", 100),
    MISSION("Prime de mission", 200),
    REMONTEE_MISSION("Prime de remontée de mission", 150),
    DIVIDENDE("Prime de dividende", 300);

    private String label;
    private int value;

    BonusType(String label, int value) {
        this.label = label;
        this.value = value;
    }

    public String getLabel() {
        return label;
    }

    public int getValue() {
        return value;
    }

    public String toString() {
        return label;
    }

    public static BonusType fromLabel(String label) {
        for (BonusType bonusType : BonusType.values()) {
            if (bonusType.label.equals(label)) {
                return bonusType;
            }
        }
        return null;
    }
}
