#Enero
#Primer Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) { 
  
  output$enero<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_ene[y,y], digits=4))
  })
  
  output$enero2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_ene[y,y], digits=4))
  })
  
  output$confidenceenero<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_ene[x,y]/a_matrix_ene[x,x], digits=4))
  })
  
  output$liftenero<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(a_matrix_ene[x,y]/(a_matrix_ene[y,y]*a_matrix_ene[x,x]), digits=2))
  })
  
  output$tablanamecat1enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tablanamecat2enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tablanamecat4enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tablaprobcat4enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tablanamecat5enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tablaprobcat5enero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==input$select,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  
  output$tabla1namecat1enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tabla1namecat3enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x, 
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tabla1namecat4enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tabla1probcat4enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x, 
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tabla1namecat5enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x,
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tabla1probcat5enero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Ene,
                                 Enero.Categoriaf3==x, 
                                 select=c(Enero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  
})


#Enero
catg_Ene<-data.frame(Enero$CATEGORIA1, Enero$Categoriaf3,
                     Enero$SLSEQ, Enero$TICKET)

catg_sin_rep_Ene<-unique(catg_Ene)
