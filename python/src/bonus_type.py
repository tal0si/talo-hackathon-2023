from enum import Enum

class BonusType(Enum):
    COOPTATION_BONUS = ("Prime de cooptation", 100)
    MISSION_BONUS = ("Prime de mission", 200)
    REMONTEE_DE_MISSION_BONUS = ("Prime de remontée de mission", 150)
    DIVIDENDE = ("Prime de dividende", 300)

    def __init__(self, description, montant):
        self.description = description
        self.montant = montant
