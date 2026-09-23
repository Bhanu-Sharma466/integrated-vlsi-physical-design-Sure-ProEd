# Happy Birthday Sequence Generator & Detector

A Verilog-based digital design project created in Xilinx Vivado 2018.2 that generates and detects a specific serial bit sequence representing a date.

---

## 📌 Overview

This repository contains two main RTL design modules and a testbench:
* **`Happy_birthday_generator.v` (TX):** Transmits a serial data stream (`serial_data`) containing encoded date/sequence information.
* **`Happy_birthday_detector.v` (RX):** Monitors the incoming `serial_data` and asserts `date_detected` upon identifying the targeted sequence pattern.
* **`date_tb.v`:** Top-level simulation testbench that instantiates both generator and detector modules for end-to-end verification.

---
## 📌 Architecture & System Design


<div align="center">
<img src="https://private-user-images.githubusercontent.com/174634145/655817953-20df5a71-5abe-47c9-81b5-430a07112658.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3OTAwMDA5MzYsIm5iZiI6MTc5MDAwMDYzNiwicGF0aCI6Ii8xNzQ2MzQxNDUvNjU1ODE3OTUzLTIwZGY1YTcxLTVhYmUtNDdjOS04MWI1LTQzMGEwNzExMjY1OC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwOTIxJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDkyMVQxNDIzNTZaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT02MGQwODFmNDk0Yjk4NWM5N2EzOWVkZDVlNzViY2I4ZWIzYzhiYjJjZTYzY2U1MDhiZDMxYjhiMjI0N2E1ZTU1JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZyZXNwb25zZS1jb250ZW50LXR5cGU9aW1hZ2UlMkZwbmcifQ.ps6mM7_eA0AaNeQ5qzP1hnPvJTite-JiRbkFg3beCa4"
alt="ARCHITECTURE" width="30%">
</div>

The top-level architecture consists of a transmitter (`TX`) sequence generator connected directly to a receiver (`RX`) sequence detector:

```text
               +---------------------------+        +--------------------------+
               | Happy_birthday_generator  |        | Happy_birthday_detector  |
  clk -------->| clk  (TX)                 |        | (RX)                 clk |<-------- clk
  rst -------->| rst                       |        |                      rst |<-------- rst
 data[9:0] --->| data[9:0]     serial_data |=======>| serial_data              |
               +---------------------------+        |            date_detected |---> date_detected
                                                   +--------------------------+


```
## Simulation 

<div align="center">
<img src="https://private-user-images.githubusercontent.com/174634145/657405231-f640577d-0d2b-41ad-bebe-4e5357a46980.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3OTAxODE3OTIsIm5iZiI6MTc5MDE4MTQ5MiwicGF0aCI6Ii8xNzQ2MzQxNDUvNjU3NDA1MjMxLWY2NDA1NzdkLTBkMmItNDFhZC1iZWJlLTRlNTM1N2E0Njk4MC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwOTIzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDkyM1QxNjM4MTJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zM2Y2MWZhYjlkZDU1ZWEzNWY0NjEzYmZlYWY1YTdiM2ZlMGFhZDM0MzE2N2Y3YTYyNmNkZGUwMmEzZDRkMjA0JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZyZXNwb25zZS1jb250ZW50LXR5cGU9aW1hZ2UlMkZwbmcifQ.0V-UjuPLiEBDfuVbVXzMKZq5v5iulGgEEsX1qcCH6Ic" alt="SIMULATION" width="30%">
</div>
