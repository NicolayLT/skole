use context essentials2021
include image

#Lager variabler for alle sirkelene vi bruker i koden og for de 3 pinnene.
Fiks = circle(100, "solid", "transparent")
Disk1 = circle(50, "solid", "orange")
Disk2 = circle(40, "solid", "blue")
Disk3 = circle(30, "solid", "green")
Disk4 = circle(20, "solid", "red")
Stick = circle(10, "solid", "black")

# Her legger vi alle sirkelene oppå hverandre slik at det ser ut som hanois tårn ved å bruke underlay funksjonen. Her bruker vi en transparent sirkel nederst fordi vi trenger noe for å holde alt på plass. På grunn av at vi bruker underlay er all posisjon relativ, som betyr at hvis jeg flytter den nederste disken, vil alt flytte seg. Hvis vi har alt relativt til en usynlig sirkel nederst kan vi flytte på alle de ulike sirklene uten å flytte den relative posisjonen.

underlay((Fiks),
  underlay((Disk1),
    underlay((Disk2),
      underlay((Disk3),
        underlay((Disk4),
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

# Resten av koden er bare å kopiere det tidligere for å få samme "image", men flytte på den sirkelen for neste move ved å skrive inn "-xy" etter underlay og riktig koordinater.


underlay((Fiks),
  underlay((Disk1),
    underlay((Disk2),
      underlay((Disk3),
        underlay-xy((Disk4), -180, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay((Disk1),
    underlay((Disk2),
      underlay-xy((Disk3), -350, 10,
        underlay-xy((Disk4), -180, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay((Disk1),
    underlay((Disk2),
      underlay-xy((Disk3), -350, 10,
        underlay-xy((Disk4), -360, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay((Disk1),
    underlay-xy((Disk2), -160, 10, 
      underlay-xy((Disk3), -350, 10,
        underlay-xy((Disk4), -360, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay((Disk1),
    underlay-xy((Disk2), -170, 10, 
      underlay-xy((Disk3), -360, 0,
        underlay((Disk4),
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay((Disk1),
    underlay-xy((Disk2), -170, 10, 
      underlay-xy((Disk3), -180, 0,
        underlay((Disk4),
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay((Disk1),
    underlay-xy((Disk2), -160, 10, 
      underlay-xy((Disk3), -170, 10,
        underlay-xy((Disk4), -180, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay-xy((Disk1), -330, 10,
    underlay-xy((Disk2), -160, 10, 
      underlay-xy((Disk3), -170, 10,
        underlay-xy((Disk4), -180, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay-xy((Disk1), -330, 10,
    underlay-xy((Disk2), -160, 10, 
      underlay-xy((Disk3), -170, 10,
        underlay-xy((Disk4), -360, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay-xy((Disk1), -350, 10,
    underlay-xy((Disk2), -180, 0, 
      underlay((Disk3),
        underlay-xy((Disk4), -360, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay-xy((Disk1), -350, 10,
    underlay-xy((Disk2), -180, 0, 
      underlay((Disk3),
        underlay((Disk4),
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay-xy((Disk1), -350, 10,
    underlay-xy((Disk2), -360, 0, 
      underlay((Disk3),
        underlay((Disk4),
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay-xy((Disk1), -350, 10,
    underlay-xy((Disk2), -360, 0, 
      underlay((Disk3),
        underlay-xy((Disk4), -180, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay-xy((Disk1), -330, 10,
    underlay-xy((Disk2), -340, 10, 
      underlay-xy((Disk3), -350, 10,
        underlay-xy((Disk4), -180, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
            underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

underlay((Fiks),
  underlay-xy((Disk1), -330, 10,
    underlay-xy((Disk2), -340, 10, 
      underlay-xy((Disk3), -350, 10,
        underlay-xy((Disk4), -360, 0,
          underlay(underlay-xy((Stick), -180, 0, empty-image),
          underlay((Stick), underlay-xy((Stick), -360, 0, empty-image))))))))

          
          
   
        