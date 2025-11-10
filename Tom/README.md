# SIMUnet_CLEW

**SIMUnet incorporating low-energy observables**

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Build Status](https://img.shields.io/github/actions/workflow/status/tomtong2015/SIMUnet_CLEW/build.yml?branch=main)](https://github.com/tomtong2015/SIMUnet_CLEW/actions)
[![Language](https://img.shields.io/github/languages/top/tomtong2015/SIMUnet_CLEW)](https://github.com/tomtong2015/SIMUnet_CLEW)

---

## About

**SIMUnet_CLEW** is a project focused on incorporating low-energy observables into SIMUnet.  
Here we briefly describe what's going on in Tom's low-energy YAML files.

---

## Contents

- **SIMU_BETA_DECAYS.yaml**: *(Beta-decay observables)*
- **SIMU_MESON_1.yaml**: *(Most of the meson-decay observables)*
- **SIMU_MESON_2.yaml**: *(K_e3 and K_mu3)*
- **SIMU_PV.yaml**: *(Parity-violation observables)*

---

## Details

- **SM_fixed**: *(These numbers are experimental central values divided by their SM predictions)*
- **theory_cov**: *(This is the theory-experimental-combined covariance matrix)*
- **EFT_LO: SM**: *(The SM predictions have been normalised to 1)*

---

## Exceptions

- **SIMU_MESON_2.yaml**: *(The SM predictions have **NOT** been normalised, because one of them is zero)*

---

# CLEW Fits

Number | Fit Name                        | Beta | Meson | PV  | HMDY Projections | Simu/Fixed-PDF | Replicas | Notes |
|-----|---------------------------------|------|-------|-----|-----------------|----------------|----------|----|
|2| Meson_BETA_PV_New_scale          | ✅    | ✅     | ✅   | ❌               | Fixed-PDF      |1000     ||
|3| Meson_BETA_PV_HMDY               | ✅    | ✅     | ✅   | ✅               | Fixed-PDF      |100  ||
|4| 20250930_ec_simu_low_energy      | ✅    | ✅     | ✅   | ❌               | Simu           |100      ||
|5| 20251006_ec_simu_low_energy_ref  | ❌    | ❌     | ❌   | ❌               | Simu           |100      ||
|6| 20251029_ec_simu_LE_HMDY  | ✅    | ✅     | ✅   |         ✅       | Simu           | 100    ||
|7| 20251103_ec_fixed_ref_HMDY_new_scale | ❌    | ❌     | ❌   |         ✅       | Fixed          | 100    | Scale on Clq3 and Clq1 set to 1.0 |
|9| Reference_fit_new_scale                    | ❌    | ❌     | ❌   | ❌               | Fixed-PDF      | 1000     | Scale on Clq3 and Clq1 set to 1.0 |

## Old fits:

| Fit Name                        | Beta | Meson | PV  | HMDY Projections | Simu/Fixed-PDF | Replicas | Notes |
|---------------------------------|------|-------|-----|-----------------|----------------|----------|----|
|8| 20251029_ec_fixed_ref_HMDY  | ❌     | ❌     | ❌   |         ✅       | Fixed          | 100     | Scale on Clq3 and Clq1 set to 0.01 |
|1| Reference_fit                    | ❌    | ❌     | ❌   | ❌               | Fixed-PDF      | 1000     |Scale on Clq3 and Clq1 set to 0.01 |

## Reports

- Beta decay, Meson decay and PV datasets: https://vp.nnpdf.science/gb_obWQDTN64o9bpjBffOw==/
- Beta decay, Meson decay and PV datasets with the scale on Clq3 and Clq1 set to 1: https://vp.nnpdf.science/uBW3WWplTu2hhv3rJLu6Vw==/
- **2 vs 3** - Beta decay, Meson decay and PV datasets with the scale on Clq3 and Clq1 set to 1 compare with the same fit inlcuding HMDY projections: https://vp.nnpdf.science/c2URAkPUQ2m-FxKltYzLBA==/
- **2 vs 1** - 1000 Replicas of the fit with Beta decay, Meson decay and PV datasets with the scale on Clq3 and Clq1 set to 1 compare with the reference fit (no LE datasets): [https:// vp.nnpdf.science/oEzLRBsSQ_WbOMUjgCPf1A==/](https://vp.nnpdf.science/LMG0lqNiQeqVB_tindgykA==/)
- **2 vs 4** - 1000 Replicas of the fit with Beta decay, Meson decay and PV datasets with the scale on Clq3 and Clq1 set to 1 (Fixed PDF) vs 100 replicas (Simu Fit): https://vp.nnpdf.science/5i1S4PewRZGa3tX6P1smXA==/
- **4 vs 5** - 100 Replicas of the fit with Beta decay, Meson decay and PV datasets with the scale on Clq3 and Clq1 set to 1 (Simu) compare with the reference fit (no LE datasets): https://vp.nnpdf.science/D-CyYUZ5Qk-1Gcf2tINIlw==
- **8 vs 3** - Reference + HMDY (scale 0.01 on clq1 and clq3) vs LE + HMDY: https://vp.nnpdf.science/I2799oQFQd6I1qZoluOyWQ==/ (Going to repeat this with scale 1.0)
- **7 vs 3** - https://vp.nnpdf.science/DVMAcJTRRK2Pu0CxdjlOcQ==/
- **6 vs 3** - https://vp.nnpdf.science/6wEjEpfuQi2B82Z8Gah9mw==/