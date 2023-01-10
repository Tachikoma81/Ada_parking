with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with parking; use parking;
with voiture; use voiture;
package body parking is
   --voiture:=p.nb_max(i);
            --h:=voiture.HeureEntree/3600;
            --min:=voiture.HeureEntree%3600*60;
            --put(h);
            --put("h"),
    -- cette fonction permet d'ajouter des voiture a l'entrer dans le parking
   procedure remplir_parking(p: out type_parking) is
      i:integer;
      j:integer;
      verif:integer;
      voiture:type_voiture;
   begin
      i:=1;
      j:=1;
      verif:=0;
         while i<=nb_max and verif/=1  loop
         put("heur");
         Get(voiture.HeureEntree);
            New_Line;
         put("place");
              get(voiture.place);
          New_Line;
         while j<=9 loop
          put("imatriculatio");
            get(voiture.imatricule(j));
            j:=j+1;
         end loop;
         j:=1;
            p.nb_max(i):=voiture;
          put("pour arréter ecriver 1");
           i:=i+1;
         p.nb:=i-1;
          get(verif);
      end loop;
   end remplir_parking;
   -- permet d'afficher des information
   procedure afficher_parking(p: type_parking) is
      i:Integer;
      j:Integer;
      h:Integer;
      min:Integer;
   begin
      put("######################################################################");
      New_Line;
       put("###################information#################################");
      New_Line;
       put("######################################################################");
      New_Line;
      i:=1;
      while i<=p.nb loop
         put("heure arriver est : ");
           h:=p.nb_max(i).HeureEntree/3600;
            min:=p.nb_max(i).HeureEntree mod 3600/60;
            put(h);
         put("h");
         put(min);
         New_Line;
         put("la place es: ");
         put(p.nb_max(i).place);
         New_Line;
         put("l'imatriculation est: ");
         j:=1;
         while j<=9 loop
         put(p.nb_max(i).imatricule(j));
         j:=j+1;
         end loop;
         i:=i+1;
      end loop;
      New_Line;
      put("######################################################################");
      New_Line;
   end afficher_parking;
   --permet de trouver une voiture
   function trouver_voiture (p:type_parking;v:type_voiture) return Boolean is
      i:Integer:=1;
   begin
      while i<=p.nb loop
         if p.nb_max(i).place=v.place then
            return (True) ;
         end if;
           i:=i+1;
      end loop;
      return (False);
   end trouver_voiture;
   --procedure ajouter_voiture(p:out type_parking) is
  --v: type_voiture;
   --begin
   --if p.nb+1<=100 then
      --p.nb_max(p.nb+1):=lire_voiture(v);
   --end if;
 --end ajouter_voiture;
end parking;
