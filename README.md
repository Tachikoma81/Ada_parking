# main
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

with Ada.Text_IO;         use Ada.Text_IO;

with actionparking; use actionparking;

with parking; use parking;

with voiture; use voiture;

procedure menus is

   p:type_parking;
   
   valeur_m: Integer;
   
   d : Integer;
   
   b:Integer;
   
   f:float;
   
   T:type_voiture;
   
   T2:type_voiture;
   
   i:Integer;
   
   re:Boolean;
   
begin

   loop
      put("0 Remplissage du parking manuellement a partir du clavier");
      
      New_Line;
     
      put("1 : Affichage de la liste de voitures du parking");
      
      New_Line;
      
      put("2 : Trouver une voiture dans le parking");
      
      New_Line;
      
      put("3 : Ajouter une voiture dans le parking");
      New_Line;
      put("4 : Ajouter une voiture dans le parking dans une position donnee");
      New_Line;
      put("5 : Supprimer une voiture dans le parking");
      New_Line;
      put("6 : Supprimer une voiture dans le parking dans une position donnee");
      New_Line;
      put("7 : Calculer le nombre de places disponibles");
      New_Line;
      put("8 : Obtenir la voiture avec la plus longue duree");
      New_Line;
      put("9 : Obtenir la tarif pour une duree");
      New_Line;
      put("10 : Obtenir le numero de la place la plus grande : ");
      New_Line;
      put("11 : existe :");
      New_Line;
      put("selectionnez une valeur : ");
      get(valeur_m);
      New_Line;
      New_Line;
      case valeur_m is
      
         when 0 =>
            remplir_parking(p);
            
         when 1 =>
            afficher_parking(p);
            
         when 2 =>
            put("choisir une voiture");
            
            get(i);
            
            re:=trouver_voiture(p,p.nb_max(i));
            
         when 3 =>
         
            put("pas réussi");
            
         when 4 =>
         
            put("pas réussi");
            
         when 5 =>
         
            put("pas réussi");
            
         when 6 =>
         
            put("pas réussi");
            
         when 7 =>
         
            b:=nb_places_disponibles(p,100);
            
         when 8 =>
         
            T:=obtenir_voiture_plus_longue_duree(p);
            
         when 9 =>
         
            put("mettre d en segonde : ");
            
            get(d);
            
            f:=obtenir_tarif(d);
            
         when 10 =>
         
            T2:=obtenir_plus_grand_num_place(p);
            
         when others =>
         
            exit;
            
         end case;
         
    end loop;
    
    end menus;
