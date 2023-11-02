use context essentials2021
include image
include color

# En funksjon som skjekker hva du har skrevet i "drawflagg()" funksjonen og tegner det flagget som passer ved å bruke if-løkke.

fun drawflagg(land):
 if land == "norge"
    block:
    norgerod = rectangle(220, 160, "solid", color(186, 12, 47, 1))
    blaa1 = rectangle(220, 20, "solid", color(0, 32, 92, 1))
    blaa2 = rectangle(20, 160, "solid", color(0, 32, 92, 1))
    hvit1 = rectangle(220, 40, "solid", color(255, 255, 255, 1))
    hvit2 = rectangle(40, 160, "solid", color(255, 255, 255, 1))
    justering-w = rectangle(100, 160, "solid", "transparent")
    justering-b = rectangle(80, 160, "solid", "transparent")
    
    stage1 = overlay-align("left", "center", hvit2, justering-w)
    stage2 = overlay-align("center","center", hvit1, norgerod)
    stage3 = overlay-align("center", "center",stage1, stage2)
    stage4 = overlay-align("left", "center", blaa1, stage3)
    stage5 = overlay-align("left", "center", blaa2, justering-b)
    stage6 = overlay-align("center", "center", stage5, stage4)
    stage6
      
  else if land == "sverige":
    block:
      blaa = rectangle(220, 160, "solid", color(0, 106, 167, 1))
      gul1 = rectangle(220, 30, "solid", color(254, 204, 2, 1))
      gul2 = rectangle(30, 160, "solid", color(254, 204, 2, 1))
      justering-b = rectangle(80, 160, "solid", "transparent")
     
      stage1 = overlay-align("left", "center", gul2, justering-b)
      stage2 = overlay-align("center","center", gul1, blaa)
      stage3 = overlay-align("center", "center",stage1, stage2)
      stage3
     end
    
  else if land == "danmark":
    block:
      danmarkrod = rectangle(220, 160, "solid", color(200, 16, 46, 1))
      danskhvit1 = rectangle(220, 30, "solid", color(255, 255, 255, 1))
      danskhvit2 = rectangle(30, 160, "solid", color(255, 255, 255, 1))
      justering-dh = rectangle(80, 160, "solid", "transparent")
      
      stage1 = overlay-align("left", "center", danskhvit2, justering-dh)
      stage2 = overlay-align("center","center", danskhvit1, danmarkrod)
      stage3 = overlay-align("center", "center",stage1, stage2)
      stage3
      end
    
  else if land == "finland":
    block:
      finlandhvit = rectangle(220, 160, "solid", color(255, 255, 255, 1))
      finskblaa1 = rectangle(220, 40, "solid", color(0, 47, 108, 1))
      finskblaa2 = rectangle(40, 160, "solid", color(0, 47, 108, 1))
      justering-fb = rectangle(80, 160, "solid", "transparent")
      
      stage1 = overlay-align("left", "center", finskblaa2, justering-fb)
      stage2 = overlay-align("center","center", finskblaa1, finlandhvit)
      stage3 = overlay-align("center", "center",stage1, stage2)
      stage3
      end
    
  else if land == "island":
    block:
      islandblaa= rectangle(220, 160, "solid", color(2, 82, 156, 1))
      islandrod1 = rectangle(220, 20, "solid", color(220, 30, 53, 1))
      islandrod2 = rectangle(20, 160, "solid", color(220, 30, 53, 1))
      islandhvit1 = rectangle(220, 40, "solid", color(255, 255, 255, 1))
      islandhvit2 = rectangle(40, 160, "solid", color(255, 255, 255, 1))
      justering-ih = rectangle(100, 160, "solid", "transparent")
      justering-ir = rectangle(80, 160, "solid", "transparent")
    
      stage1 = overlay-align("left", "center", islandhvit2, justering-ih)
      stage2 = overlay-align("center","center", islandhvit1, islandblaa)
      stage3 = overlay-align("center", "center",stage1, stage2)
      stage4 = overlay-align("left", "center", islandrod1, stage3)
      stage5 = overlay-align("left", "center", islandrod2, justering-ir)
      stage6 = overlay-align("center", "center", stage5, stage4)
      stage6
  end
  else if land == "færøyene":
    block:
      feroyhvit= rectangle(220, 160, "solid", color(255, 255, 255, 1))
      feroyrod1 = rectangle(220, 20, "solid", color(237, 41, 57, 1))
      feroyrod2 = rectangle(20, 160, "solid", color(237, 41, 57, 1))
      feroyblaa1 = rectangle(220, 40, "solid", color(0, 101, 189, 1))
      feroyblaa2 = rectangle(40, 160, "solid", color(0, 101, 189, 1))
      justering-fb = rectangle(100, 160, "solid", "transparent")
      justering-fr = rectangle(80, 160, "solid", "transparent")
    
      stage1 = overlay-align("left", "center", feroyblaa2, justering-fb)
      stage2 = overlay-align("center","center", feroyblaa1, feroyhvit)
      stage3 = overlay-align("center", "center",stage1, stage2)
      stage4 = overlay-align("left", "center", feroyrod1, stage3)
      stage5 = overlay-align("left", "center", feroyrod2, justering-fr)
      stage6 = overlay-align("center", "center", stage5, stage4)
      stage6
    end
  else:
    "ugyldig land"
end
end

# Skriv inn det landet du vil ha tegnet

drawflagg("island")
