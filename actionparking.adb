with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
with actionparking; use actionparking;
package body actionparking is
   -- calcule le nombre de place disponible par rapport au nombre de place totale
   function  nb_places_disponibles  (p:in type_parking; total_place : Integer ) return Integer is
      n:Integer;
      r:Integer;
   begin
      n:=total_place;
         r:=n-p.nb;
         return r;
   end nb_places_disponibles;
   -- permet d'opotenir le prix en fonction de l'heurs
   function  obtenir_tarif  (d:in Integer) return float is
      prix :float;
      temps:integer;
   begin
      temps:=d;
      if temps>0 and temps<=3600 then
         prix:=0.16;
      elsif 3600<temps and temps<=7200 then
         prix:=0.2;
      elsif 7200<temps and temps<=10800 then
         prix:=0.32;
      elsif temps>10800 then
         prix:=0.6;
      end if;
      return prix;
   end obtenir_tarif;
   -- trouver la voiture qui es rester le plus lontemps
   function  obtenir_voiture_plus_longue_duree  (p:in type_parking) return type_voiture is
      h_max:Integer;
      i:Integer;
   begin
      h_max:=1;
      i:=2;
      while i<=p.nb loop
         if p.nb_max(i).HeureEntree<p.nb_max(h_max).HeureEntree then
            h_max:=i;
         end if;
         i:=i+1;
      end loop;
      return(p.nb_max(h_max));
   end obtenir_voiture_plus_longue_duree;
   function  obtenir_plus_grand_num_place (p:in type_parking) return type_voiture is
      p_max:Integer;
      i:Integer;
   begin
      p_max:=1;
      i:=2;
      while i<=p.nb loop
         if p.nb_max(i).place>p.nb_max(p_max).place then
            p_max:=i;
         end if;
         i:=i+1;
      end loop;
      return p.nb_max(p_max);
   end obtenir_plus_grand_num_place;
end actionparking;
