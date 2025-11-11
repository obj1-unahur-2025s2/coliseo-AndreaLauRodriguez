import grupos.*

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

    method ataca(atacado){
      atacado.recibirAtaque(self.danio(atacado))
    }

    method danio(atacado){
      return self.poderDeAtaque() - atacado.defensa()
    }
  
   method recibirAtaque(danio) {unidadesDeVida = unidadesDeVida - danio}
  method poderAtaque() = arma.poder() + fuerza

  method crearGrupo(unGladiador){
        const grupo = new Grupo(nombre= "Mirmillolandia")
        grupo.agregarMiembro(self)
        grupo.agregarMiembro(unGladiador)
  }
 method recuperaUnidadesDeVida(unaCantidad) {
         unidadesDeVida = unaCantidad
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
      const arma = []
      var destreza
      var  unidadesDeVida = 100
      method fuerza ()= 10
      method arma() = arma
      method destreza() = destreza
      method unidadesDeVida() = unidadesDeVida
      method agregarUnArma(unArma){
        arma.add(unArma)
      }
      method eliminarArma(unArma){
         arma.remove(unArma)
      }
      method ataca(atacado){
    atacado.recibirAtaque(self.danio(atacado)) 
    destreza = destreza + 1
  }

  method danio(atacado) = self.poderDeAtaque()- atacado.defensa()

  method recibirAtaque(danio) {unidadesDeVida = unidadesDeVida - danio}
  method poderDeAtaque() = self.fuerza() + arma.sum({ a => a.poder() })
  method defensa()= destreza / 2
  method crearGrupo(unGladiador){
    const nombre = "D-" + (self.poderDeAtaque() + unGladiador.poderDeAtaque()).toString()
    const grupo = new Grupo(nombre= nombre)
    grupo.agregarMiembro(self)
    grupo.agregarMiembro(unGladiador)
  }
method recuperaUnidadesDeVida(unaCantidad) {
         unidadesDeVida = unaCantidad
 }
    }



