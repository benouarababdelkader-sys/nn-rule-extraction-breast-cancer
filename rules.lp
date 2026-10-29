benign(P) :- patient(P), val(P,worst_radius,V0), V0 <= 16795, val(P,worst_concave_points,V1), V1 <= 135, val(P,area_error,V2), V2 <= 91555.
malignant(P) :- patient(P), val(P,worst_radius,V0), V0 <= 16795, val(P,worst_concave_points,V1), V1 <= 135, val(P,area_error,V2), V2 > 91555.
benign(P) :- patient(P), val(P,worst_radius,V0), V0 <= 16795, val(P,worst_concave_points,V1), V1 > 135, val(P,worst_texture,V2), V2 <= 25619.
malignant(P) :- patient(P), val(P,worst_radius,V0), V0 <= 16795, val(P,worst_concave_points,V1), V1 > 135, val(P,worst_texture,V2), V2 > 25619.
benign(P) :- patient(P), val(P,worst_radius,V0), V0 > 16795, val(P,texture_error,V1), V1 <= 473.
benign(P) :- patient(P), val(P,worst_radius,V0), V0 > 16795, val(P,texture_error,V1), V1 > 473, val(P,worst_concavity,V2), V2 <= 190.
malignant(P) :- patient(P), val(P,worst_radius,V0), V0 > 16795, val(P,texture_error,V1), V1 > 473, val(P,worst_concavity,V2), V2 > 190.