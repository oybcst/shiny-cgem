
function(input, output, session) {
  
#---Start an empty plot window with 'click me'
  
 #First plot, Var1
    output$A <- renderPlot({
     listplot(time,cgem$A1)
  })
    
    output$A1 <- renderPlot({
     listplot(time,cgem$A1)
    })
    
    output$Qn1 <- renderPlot({
     listplot(time,cgem$Qn1)
    })
    
    output$Qp1 <- renderPlot({
    listplot(time,cgem$Qp1)
    })
    
    output$Z1 <- renderPlot({
    listplot(time,cgem$Z1)
    })
    
    output$Z2<- renderPlot({
    listplot(time,cgem$Z2)
    })
    
    output$O2 <- renderPlot({
    listplot(time,cgem$O2)
    })
    
    output$DIC<- renderPlot({
    listplot(time,cgem$DIC)
    })
    
    output$ALK <- renderPlot({
      listplot(time,cgem$Alk)
    })
    
    output$NO3 <- renderPlot({
    listplot(time,cgem$NO3)
    })
    
    output$NH4<- renderPlot({
    listplot(time,cgem$NH4)
    })
    
    output$PO4 <- renderPlot({
    listplot(time,cgem$PO4)
    })
    
    output$Si<- renderPlot({
    listplot(time,cgem$Si)
    })
    
    output$OM1A <- renderPlot({
    listplot(time,cgem$OM1A)
    })
    
    output$OM2A<- renderPlot({
    listplot(time,cgem$OM2A)
    })
    
    output$OM1Z<- renderPlot({
    listplot(time,cgem$OM1Z)
    })
    
    output$OM2Z<- renderPlot({
    listplot(time,cgem$OM2Z)
    })
    
    output$sx1A <- renderPlot({
    listplot(time,cgem$sx1A)
    })
    
    output$sy1A<- renderPlot({
    listplot(time,cgem$sy1A)
    })
    output$sx2A<- renderPlot({
    listplot(time,cgem$sx2A)
    })
    output$sy2A<- renderPlot({
    listplot(time,cgem$sy2A)
    }) 
    
    output$sx1Z <- renderPlot({
    listplot(time,cgem$sx1Z)
    })
    
    output$sy1Z<- renderPlot({
    listplot(time,cgem$sy1Z)
    })
    
    output$sx2Z<- renderPlot({
    listplot(time,cgem$sx2Z)
    })
    
    output$sy2Z<- renderPlot({
    listplot(time,cgem$sy2Z)
    }) 
    
    output$T<- renderPlot({
      plot(time,hydro$temp)
    }) 
    
    output$S<- renderPlot({
      plot(time,hydro$sal)
    }) 
    
    
    #Growth and respiration
    output$growresp <- renderPlot({
      plot(log10(growth$Agrow),col="red",type="l")
      lines(log10(growth$Aresp),col="blue")
    })

    #PAR    
    output$PAR <- renderPlot({
      plot(time,light$k1,type="l",col='red')
      lines(time,light$k3,col='orange')
      lines(time,light$k5,col='yellow')
      lines(time,light$k7,col='green')
      lines(time,light$k9,col='blue')
      lines(time,light$k11,col='black')
    })

    #Light Limitation factors    
    output$lightlims <- renderPlot({
      plot(time,growth$uA,type="l",col='black',ylim=c(0,1))
      lines(time,growth$uN,col='red')
      lines(time,growth$uP,col='green')
      lines(time,growth$uSi,col='blue')
      #lines(time,growth$uE_k,col='yellow')
    })

    output$RO2 <- renderPlot({
      ymin <- min(min(rates$RO2),min(rates$RO2_A),min(rates$RO2_Z))
      ymax <- max(max(rates$RO2),max(rates$RO2_A),max(rates$RO2_Z))
      plot(time,rates$RO2,type='l',ylim=c(ymin,ymax))
      lines(time,rates$RO2_A,col='red')
      lines(time,rates$RO2_Z,col='blue')
      lines(time,rates$RO2_R,col='green')
      lines(time,rates$RO2_BC,col='yellow')
    })
    
    output$RNO3 <- renderPlot({
      ymin <- min(min(rates$RNO3),min(rates$RNO3_A),min(rates$RNO3_Z))
      ymax <- max(max(rates$RNO3),max(rates$RNO3_A),max(rates$RNO3_Z))
      plot(time,rates$RNO3,type='l',ylim=c(ymin,ymax))
      lines(time,rates$RNO3_A,col='red')
      lines(time,rates$RNO3_Z,col='blue')
      lines(time,rates$RNO3_R,col='green')
      lines(time,rates$RNO3_BC,col='yellow')
    })
    
    output$RNH4 <- renderPlot({
      ymin <- min(min(rates$RNH4),min(rates$RNH4_A),min(rates$RNH4_Z))
      ymax <- max(max(rates$RNH4),max(rates$RNH4_A),max(rates$RNH4_Z))
      plot(time,rates$RNH4,type='l',ylim=c(ymin,ymax))
      lines(time,rates$RNH4_A,col='red')
      lines(time,rates$RNH4_Z,col='blue')
      lines(time,rates$RNH4_R,col='green')
      lines(time,rates$RNH4_BC,col='yellow')
    })
    
    output$RN2 <- renderPlot({
      ymin <- min(min(rates$RN2),min(rates$RN2_A),min(rates$RN2_Z))
      ymax <- max(max(rates$RN2),max(rates$RN2_A),max(rates$RN2_Z))
      plot(time,rates$RN2,type='l',ylim=c(ymin,ymax))
      lines(time,rates$RN2_A,col='red')
      lines(time,rates$RN2_Z,col='blue')
      lines(time,rates$RN2_R,col='green')
      lines(time,rates$RN2_BC,col='yellow')
    })
        
    output$RPO4 <- renderPlot({
      ymin <- min(min(rates$RPO4),min(rates$RPO4_A),min(rates$RPO4_Z))
      ymax <- max(max(rates$RPO4),max(rates$RPO4_A),max(rates$RPO4_Z))
      plot(time,rates$RPO4,type='l',ylim=c(ymin,ymax))
      lines(time,rates$RPO4_A,col='red')
      lines(time,rates$RPO4_Z,col='blue')
      lines(time,rates$RPO4_R,col='green')
      lines(time,rates$RPO4_BC,col='yellow')
    })
    
    output$RDIC <- renderPlot({
      ymin <- min(min(rates$RDIC),min(rates$RDIC_A),min(rates$RDIC_Z))
      ymax <- max(max(rates$RDIC),max(rates$RDIC_A),max(rates$RDIC_Z))
      plot(time,rates$RDIC,type='l',ylim=c(ymin,ymax))
      lines(time,rates$RDIC_A,col='red')
      lines(time,rates$RDIC_Z,col='blue')
      lines(time,rates$RDIC_R,col='green')
      lines(time,rates$RDIC_BC,col='yellow')
    })
    
    output$RSi <- renderPlot({
      ymin <- min(min(rates$RSi),min(rates$RSi_A),min(rates$RSi_Z))
      ymax <- max(max(rates$RSi),max(rates$RSi_A),max(rates$RSi_Z))
      plot(time,rates$RSi,type='l',ylim=c(ymin,ymax))
      lines(time,rates$RSi_A,col='red')
      lines(time,rates$RSi_Z,col='blue')
      lines(time,rates$RSi_R,col='green')
      lines(time,rates$RSi_BC,col='yellow')
    })
    
    output$RALK <- renderPlot({
      ymin <- min(min(rates$RALK),min(rates$RALK_A),min(rates$RALK_Z))
      ymax <- max(max(rates$RALK),max(rates$RALK_A),max(rates$RALK_Z))
      plot(time,rates$RALK,type='l',ylim=c(ymin,ymax))
      lines(time,rates$RALK_A,col='red')
      lines(time,rates$RALK_Z,col='blue')
      lines(time,rates$RALK_R,col='green')
      lines(time,rates$RALK_BC,col='yellow')
    })
    
#-----------
  
}
