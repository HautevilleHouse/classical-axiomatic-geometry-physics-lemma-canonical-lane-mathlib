import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure GalileanSpacetimePackage where
  eventSpace : Type u
  timeAxis : Type v
  inertialFrame : Type w
  simultaneity : eventSpace → eventSpace → Prop
  spatialDistance : eventSpace → eventSpace → ℝ
  timeInterval : eventSpace → eventSpace → ℝ
  simultaneityClosed : Prop
  spatialDistanceClosed : Prop
  timeIntervalClosed : Prop

def GalileanSpacetimeClosed (G : GalileanSpacetimePackage) : Prop :=
  G.simultaneityClosed ∧ G.spatialDistanceClosed ∧ G.timeIntervalClosed

theorem galilean_spacetime_closed_from_evidence
    (G : GalileanSpacetimePackage) (ev : G.simultaneityClosed ∧ G.spatialDistanceClosed ∧ G.timeIntervalClosed) :
    GalileanSpacetimeClosed G := by
  exact ev

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse