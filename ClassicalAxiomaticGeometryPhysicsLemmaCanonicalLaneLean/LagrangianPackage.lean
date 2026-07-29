import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure LagrangianPackage where
  configurationSpace : Type u
  lagrangian : Type v
  action : Type w
  eulerLagrangeEquations : Prop
  conservationLaws : Prop
  eulerLagrangeEquationsTerm : eulerLagrangeEquations
  conservationLawsTerm : conservationLaws

def LagrangianClosed (L : LagrangianPackage) : Prop :=
  L.eulerLagrangeEquations ∧ L.conservationLaws

theorem lagrangian_closed_from_package (L : LagrangianPackage) : LagrangianClosed L :=
  And.intro L.eulerLagrangeEquationsTerm L.conservationLawsTerm

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse