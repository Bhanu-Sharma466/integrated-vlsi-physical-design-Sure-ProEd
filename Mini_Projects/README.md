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
<img src="https://private-user-images.githubusercontent.com/174634145/657404643-f428f800-bd63-4b0f-9132-a50bc5162952.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3OTAxODE3NDIsIm5iZiI6MTc5MDE4MTQ0MiwicGF0aCI6Ii8xNzQ2MzQxNDUvNjU3NDA0NjQzLWY0MjhmODAwLWJkNjMtNGIwZi05MTMyLWE1MGJjNTE2Mjk1Mi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwOTIzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDkyM1QxNjM3MjJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1iYjIwODViMWUwMDAwMGZjNTJlMGIwNTkxZmIyMTk4NTI1MzZmYWYzNGFiZTlhMzgxYWVkNDBiZWZhZTBlNjZhJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCZyZXNwb25zZS1jb250ZW50LXR5cGU9aW1hZ2UlMkZwbmcifQ.pP92hu6Jsi9Dn375beT0z4gJBtezs7-vJltvJf01YtU"
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
