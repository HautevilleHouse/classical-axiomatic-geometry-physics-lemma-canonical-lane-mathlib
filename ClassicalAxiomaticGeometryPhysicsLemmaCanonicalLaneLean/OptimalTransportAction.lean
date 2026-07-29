import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean

structure OptimalTransportActionPackage (L : GeodesicLengthPackage) where
  costFunctional : Prop
  optimalCoupling : Prop
  kantorovichDuality : Prop
  benamouBrenierFormula : Prop
  wassersteinMetricDefined : Prop

def OptimalTransportActionEvidence {L : GeodesicLengthPackage} (T : OptimalTransportActionPackage L) : Type :=
  { costFunctionalClosed : T.costFunctional
  , optimalCouplingClosed : T.optimalCoupling
  , kantorovichDualityClosed : T.kantorovichDuality
  , benamouBrenierFormulaClosed : T.benamouBrenierFormula
  , wassersteinMetricDefinedClosed : T.wassersteinMetricDefined
  }

def OptimalTransportActionClosed {L : GeodesicLengthPackage} (T : OptimalTransportActionPackage L) : Prop :=
  T.costFunctional ∧ T.optimalCoupling ∧ T.kantorovichDuality ∧ T.benamouBrenierFormula ∧ T.wassersteinMetricDefined

theorem optimal_transport_action_closed_from_evidence
    {L : GeodesicLengthPackage} (T : OptimalTransportActionPackage L)
    (E : OptimalTransportActionEvidence T) : OptimalTransportActionClosed T := by
  exact And.intro E.costFunctionalClosed
    (And.intro E.optimalCouplingClosed
      (And.intro E.kantorovichDualityClosed
        (And.intro E.benamouBrenierFormulaClosed E.wassersteinMetricDefinedClosed)))

end ClassicalAxiomaticGeometryPhysicsLemmaCanonicalLaneLean
end HautevilleHouse
