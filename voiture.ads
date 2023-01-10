package voiture is

   type CharArray is array(1..9) of character;
   type type_voiture is record
      HeureEntree : Integer;
      --Heuredepart : Integer; il sert a rien mais on sais jamais
      place : Integer;
      imatricule : CharArray;
   end record;

   procedure lire_voiture(v: out type_voiture );
   procedure afficher_voiture(v: out type_voiture);

end voiture;
