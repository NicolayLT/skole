use context essentials2021
include image

red = rectangle(220, 160, "solid", "red")
blue1 = rectangle(220, 20, "solid", "blue")
blue2 = rectangle(20, 160, "solid", "blue")
white1 = rectangle(220, 40, "solid", "white")
white2 = rectangle(40, 160, "solid", "white")

underlay((red),
  underlay-xy((white1), 0, -60,
    underlay-xy((white2), -60, 0,
      underlay-xy((blue2), -70, 70, 
        underlay-xy((blue1), 110, 10, empty-image)))))
  