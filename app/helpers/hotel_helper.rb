module HotelHelper
    class City < ActiveRecord::Base
        enum city: { 
            Aalborg_Dinamarca_ALL: "AAL", 
            Aalesund_Noruega_AES: "AES", 
            Acapulco_México_ACA: "ACA", 
            Aguascalientes_México_AGU:"AGU",
            Aguadilla_Puerto_Rico_BQN: "BQN",
            Bagotville_PQ_Canadá_YBG: "YBG",
            Bangda_China_BPX: "BPX",
            Bangkok_Tailandia_BKK: "BKK",
            Bangui_República_Centroafricana_BGF: "BGF",
            Barcelona_España_BCN: "BCN",
            Bari_Italia_BRI: "BRI",
            Barisal_Bangladesh_BZL: "BZL",
            Barranquilla_Colombia_BAQ: "BAQ",
            San_Carlos_de_Bariloche_Argentina_BRC: "BRC",
            San_Diego_CA_EE_UU_SAN: "SAN",
            San_Francisco_CA_EE_UU_SFO: "SFO",
            San_José_Costa_Rica_SJO: "SJO",
            San_José_CA_EE_UU_SJC: "SJC",
            San_Juan_Puerto_Rico_SJU: "SJU",
            San_Luis_Potosi_México_SLP: "SLP",
            San_Salvador_El_Salvador_SAL: "SAL",
            Santa_Cruz_España_SPC: "SPC",
            Santa_Cruz_de_Tenerife_Canary_Islands_TFN: "TFN",
            Santa_Fe_Nuevo_México_EE_UU_SAF: "SAF",
            Santa_Maria_CA_EE_UU_SMX: "SMX",
            Santa_Maria_Sal_Island_Cabo_Verde_SID: "SID",
            Santa_Rosa_Argentina_RSA: "RSA",
            Santa_Rosa_CA_EE_UU_STS: "STS",
            Santander_España_SDR: "SDR",
            Santiago_Chile_SCL: "SCL",
            Santiago_República_Dominicana_STI: "STI",
            Santo_Domingo_República_Dominicana_SDQ: "SDQ",
            Madrid_España_MAD: "MAD",
            New_York_EE_UU_NYC: "NYC",
        }
       
    end
    class Guest < ActiveRecord::Base
        enum guest: { 
            one: "1", 
            two: "2", 
            three: "3", 
            four: "4", 
            five: "5", 
            six: "6", 
            seven: "7", 
            eight: "8", 
            nine: "9" 
        }
    end
end
