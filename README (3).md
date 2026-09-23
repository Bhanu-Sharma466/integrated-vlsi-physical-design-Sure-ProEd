# VLSI Physical Design Capstone Project — SURE Trust

## 📌 Overview
This repository documents my end-to-end journey through the **Integrated VLSI Training Program (Physical Design – RTL to GDSII)** at SURE Trust. It contains the complete technical execution pipeline using **OpenLane** and the **SkyWater 130nm (SKY130) PDK**, along with course assignments, mini-projects, soft-skills development, and community service work completed during the program.

## 🎯 Objective
To design and implement a complete RTL-to-GDSII physical design flow — taking a Verilog RTL design through Synthesis, Floorplanning, Placement, Clock Tree Synthesis (CTS), Routing, and final DRC/LVS signoff — using open-source EDA tools.

## 🛠️ Tools & Technologies
- **OpenLane** (automated RTL-to-GDSII flow)
- **SkyWater SKY130 PDK**
- **Yosys** (Synthesis)
- **OpenROAD** (Floorplanning, Placement, CTS, Routing)
- **Magic / KLayout** (Layout visualization)
- **Netgen** (LVS)
- **Verilog HDL**

## 🔄 Physical Design Flow

| Stage | Description | Key Commands/Tool |
|---|---|---|
| 1. Synthesis | RTL → Gate-level netlist | `run_synthesis` (Yosys) |
| 2. Floorplanning | Die/core area, pin placement, power planning | `run_floorplan` |
| 3. Placement | Standard cell placement | `run_placement` |
| 4. CTS | Clock tree synthesis, skew minimization | `run_cts` |
| 5. Routing | Global + detailed routing | `run_routing` |
| 6. Signoff | DRC and LVS verification | `run_drc`, `run_lvs` |

> Full command-by-command logs are available in [`Final_Capstone_Project/`](./Final_Capstone_Project)

## 📁 Repository Structure
- `Assignments/` — Weekly lab exercises and concept-building tasks
- `Course_Report/` — Formal course completion report
- `Mini_Projects/` — Intermediate design exercises
- `Final_Capstone_Project/` — Full RTL-to-GDSII flow with logs, reports, and layouts

## 📊 Results
- Final GDSII layout: `Final_Capstone_Project/results/`
- Timing/Power/Area reports: `Final_Capstone_Project/results/reports/`
- Screenshots of layout views: `Final_Capstone_Project/results/screenshots/`

## 🌱 Beyond Technical Skills
This program also emphasized industry-readiness through:
- **Soft Skills Training (LST/SST):** discipline, communication, negotiation, business acumen
- **Community Service:** Tree Plantation Drive, Elderly Support & Food Distribution

## 🙏 Acknowledgment
This project was completed as part of the **Integrated VLSI Training Program** at **SURE Trust**, under MR. Veeramani Sir and Prof. Radhakumari Mam.

## 📬 Contact
- LinkedIn: https://www.linkedin.com/in/bhanusharma1403/
- Email: bhanusharma1403@gmail.com
