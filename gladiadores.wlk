

/*.

Cuando un mirmillon ataca a cualquier gladiador le inflige al atacado 
tanto daño como la diferencia
 entre su poder de ataque y la defensa del atacado. 
 El poder de ataque equivale al poder de su arma más
  su propia fuerza. Cuando un dimachaerus ataca a otro gladiador, 
  también le inflige al atacado tanto daño 
  como la diferencia entre su poder de ataque y la defensa del atacado,
   pero su poder de ataque equivale 
  a su fuerza más la sumatoria de los poderes de todas las armas que tenga
  . Además, cada vez que ataca,
   aumenta en 1 su destreza. Para un mirmillon, su defensa se calcula como
    los puntos de su armadura más
    su destreza. Para un dimachaerus, su defensa es la mitad de su destreza.

Se pide implementar la solución que considere necesaria para hacer que un 
gladiador ataque a otro

            


*/

class Mirmillon{
   var  unidadesDeVida = 100
   var arma
   var armadura
   const fuerza
   method armadura() = armadura
   method fuerza () = fuerza
   method arma() = arma
   method unidadesDeVida()= unidadesDeVida
   
   method defensa(){
      return armadura.poderDeArmadura()+ self.destreza()
    }
   method destreza()= 15
   method cambiarArma(unArma){
      arma = unArma
    }
    method cambiarArmadura(unaArmadura) {
      armadura = unaArmadura
    }
    method poderDeAtaque(){
       return arma.poderDeAtaque()+fuerza
    }
    method recibirAtaque(unAtaque){
      unidadesDeVida = unidadesDeVida - unAtaque
    }

    method danio(unGladiador){
       self.poderDeAtaque() - unGladiador.defensa()
    }
    method atacar(unGladiador){
       var daniar =  0
     // TERMINAR 
       unGladiador.recibirAtaque()
    }

}

/*
Cuando un mirmillon ataca a cualquier gladiador le inflige al atacado 
tanto daño como la diferencia
 entre su poder de ataque y la defensa del atacado. 
 El poder de ataque equivale al poder de su arma más
  su propia fuerza. Cuando un dimachaerus ataca a otro gladiador, 
  también le inflige al atacado tanto daño 
  como la diferencia entre su poder de ataque y la defensa del atacado,
   pero su poder de ataque equivale 
  a su fuerza más la sumatoria de los poderes de todas las armas que tenga
  . Además, cada vez que ataca,
   aumenta en 1 su destreza. Para un mirmillon, su defensa se calcula como
    los puntos de su armadura más
    su destreza. Para un dimachaerus, su defensa es la mitad de su destreza.


*/





class Dimachaerus {
      var arma
      var destreza
      var  unidadesDeVida = 100
      method fuerza ()= 10
      method arma() = arma
      method destreza() = destreza
      method unidadesDeVida() = unidadesDeVida

    
    }



