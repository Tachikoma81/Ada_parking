with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
with voiture; use voiture;
with parking; use parking;

package actionparking is

   function  nb_places_disponibles  (p:in type_parking; total_place:Integer ) return Integer;

   function  obtenir_tarif  (d:in Integer) return float;

   function  obtenir_voiture_plus_longue_duree  (p:in type_parking) return type_voiture;

   function  obtenir_plus_grand_num_place (p:in type_parking) return  type_voiture;

end actionparking;
