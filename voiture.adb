with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with voiture; use voiture;


package body voiture is

   procedure lire_voiture (v: out type_voiture ) is
      HeureEntree_m :Integer;
      HeureEntree_h :Integer;
      parking : Integer;
      matriculation :Integer;
      i : Integer;
   begin
      i:=1;
      matriculation := 9;
      put("entrez place parking : ");
      get(parking);
      put("heure d'éntrée : ");
      get(HeureEntree_h);
      put("Minute entrée : ");
      get(HeureEntree_m);
      while i <= matriculation loop
         put("léttre plaque : ");
         get(v.imatricule(i));
         i:=i+1;
      end loop;
      v.place:= parking;
      HeureEntree_m:=HeureEntree_m*60;
      HeureEntree_h:=HeureEntree_h*3600;
      v.heureEntree:=HeureEntree_h+HeureEntree_m;
   end lire_voiture;
   procedure afficher_voiture(v:out type_voiture) is
      matriculation :Integer;
      i : Integer;
      recuperer : Character ;
   begin
      matriculation := 9;
      put("############# Information #############");
      New_Line;
      put("heure d'éntrée en seconde :");
      put(v.HeureEntree);
      New_Line;
      put("place parking : ");
      put(v.place);

      put("matriculation : ");
      i:=1;
      while i <= matriculation loop
         recuperer := (v.imatricule(i));
         put(recuperer);
         i:=i+1;
      end loop;
     end afficher_voiture;
   end voiture;
