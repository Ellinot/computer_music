module LittleSong (little_song) where
import Euterpea

-- octave melody
om = 4


-- octave chord
oc = 3


cmajor = chord [c oc hn, e oc hn, g oc hn]
fminor = chord [c oc hn, f oc hn, af oc hn]
gminor1 = chord [c oc hn, g oc hn, bf oc hn]
gminor2 = chord [df oc hn, g oc hn, bf oc hn]


harmony1 = cmajor :+: cmajor :+: fminor :+: fminor 
harmony2 = cmajor :+: cmajor :+: gminor1 :+: gminor2
harmony3 = chord [c oc wn, e oc wn, g oc wn] :+: chord [c oc wn, e oc wn, g oc wn]

melody1 = line [c om qn, g om hn, rest en, g om en, f om en, g om en, af om dqn, g om en, f om dqn, e om en, g om hn]
melody2 = line [rest en, g om en, f om en, g om en, af om dqn, g om en, f om dqn, e om en]
melody3 = line [e om sn, f om sn, g om dhn, c om en, bf om dqn, af om en, g om dqn, f om en]
melody4 = line [e om sn, f om sn, g om hn, c om en, d om en, e om en, d om qn, c om qn, c om qn, rest sn, b (om-1) sn, c om sn, df om sn]
melody5 = line [c om dhn, rest sn, b (om-1) sn, c om sn, df om sn]
melody6 = c om wn


melody =  melody1 :+: melody2 :+: melody3 :+: melody4 :+: melody5 :+: melody6
harmony = rest qn :+: harmony1 :+: harmony1 :+: harmony2 :+: harmony1 :+: harmony3

little_song = melody :=: harmony