with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
with voiture; use voiture;

package parking is

   nb_max: constant Integer:=100;
      type voiture is array(1..nb_max) of type_voiture;
   type type_parking is record
      nb_max : voiture;
      nb : Integer;
   end record;

   procedure remplir_parking(p:out type_parking);
   procedure afficher_parking(p: type_parking);
   function trouver_voiture (p:in type_parking; v: in type_voiture) return Boolean;
   --procedure ajouter_voiture(p:out type_parking); il marche pas
end parking;
