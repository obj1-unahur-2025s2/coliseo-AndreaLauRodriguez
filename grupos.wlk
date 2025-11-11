import gladiadores.*
class Grupo{
    const nombre
    var cantDePeleas = 0
    const property miembros = []
    method nombre() = nombre
    method agregarMiembro(gladiador) {miembros.add(gladiador)}
    method quitarMiembro(gladiador) {miembros.remove(gladiador)}
    method campeon() =(self.puedenCombatir().max({g=>g.fuerza()}))  
    method puedenCombatir() = miembros.filter({g=> g.unidadesDeVida()>0})
    method ataca(atacado) {
      self.campeon().ataca(atacado)
      cantDePeleas = cantDePeleas + 1
    }
  
      
}