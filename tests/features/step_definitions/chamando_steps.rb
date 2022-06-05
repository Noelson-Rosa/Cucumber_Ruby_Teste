    #Dado('eu tenha {int} laranjas.') do |int|
    # Dado('eu tenha {float} laranjas.') do |float|
     # pending # Write code here that turns the phrase above into concrete actions
    #end
    
    #Quando('eu como {int} laranjas.') do |int|
    # Quando('eu como {float} laranjas.') do |float|
     # pending # Write code here that turns the phrase above into concrete actions
    #end
    
    #Então('eu vejo quantas laranjas sobraram.') do
     # pending # Write code here that turns the phrase above into concrete actions
    #end
    
    Dado('eu tenho {int} laranjas no estoque.') do |valor1|
      @laranjas = valor1
    end
    
    Quando('eu amasso {int} laranjas') do |amassei|
      @total = @laranjas - amassei 
    end
    
    Entao('eu verifico quantas laranjas sobraram no estoque.') do
      expect(@total).to eq 8
    end
    
    Quando('revendo {int} laranjas') do |valor2|
     steps %Q{
        Dado eu tenho 10 laranjas no estoque.
     }
     @resultado = @laranjas - valor2 
    end
    
    Entao('eu verifico com quantas laranjas eu fiquei.') do
        expect(@resultado).to eq 8
    end