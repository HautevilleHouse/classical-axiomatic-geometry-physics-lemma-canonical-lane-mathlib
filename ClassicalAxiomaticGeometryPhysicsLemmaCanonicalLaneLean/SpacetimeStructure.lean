import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure SpacetimeStructure where
  manifold : Type u
  metric : Type v
  causalStructure : Prop
  lorentzianMetric : Prop
  causalStructureClosed : causalStructure
  lorentzianMetricClosed : lorentzianMetric

structure SpacetimeEvidence (S : SpacetimeStructure) where
  causalStructureClosedEvidence : S.causalStructureClosed
  lorentzianMetricClosedEvidence : S.lorentzianMetricClosed

def SpacetimeClosed (S : SpacetimeStructure) : Prop :=
  S.causalStructure ∧ S.lorentzianMetric

theorem spacetime_closed_from_evidence (S : SpacetimeStructure) (E : SpacetimeEvidence S) : SpacetimeClosed S :=
  And.intro E.causalStructureClosedEvidence E.lorentzianMetricClosedEvidence

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse