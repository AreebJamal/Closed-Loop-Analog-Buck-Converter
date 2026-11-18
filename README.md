
# Closed-Loop Analog Buck Converter

This project focuses on the design and simulation of a closed-loop voltage-mode buck converter using a custom-designed analog control circuit.

The main objective was to design a transistor-level telescopic-cascode OTA using the Sky130 130nm PDK, integrate it with a Type-II Gm-C compensation network, and use analog PWM generation to control a synchronous buck converter.

The complete system was designed and simulated using Xschem and Ngspice. I also performed transient analysis and loop stability verification to understand the behaviour and limitations of the control loop.

## Project Overview

Unlike an open-loop converter, which operates with a fixed switching pattern, a closed-loop converter continuously monitors its output voltage and adjusts its control signal based on the difference between the output and reference voltages.

The design consists of the following stages:

1. **Error Amplifier (OTA):** A custom 9-transistor telescopic-cascode OTA compares the feedback voltage with the reference voltage.
2. **Compensation Network:** A Type-II Gm-C compensation network is used to shape the loop response and improve stability.
3. **Analog PWM Generation:** A behavioral ramp signal and comparator generate PWM control signals.
4. **Power Stage:** Synchronous switches, an LC filter, and a load form the buck converter power stage.
5. **Feedback Network:** The output voltage is fed back to the OTA to adjust the switching behaviour.

## Project Files

| File | Description |
|---|---|
| [Buck_converter.sch](Buck_converter.sch) | Main closed-loop buck converter schematic integrating the OTA, compensation network, PWM generation, and power stage. |
| [CL_Buck_test.sch](CL_Buck_test.sch) | Closed-loop buck converter test schematic used for transient and control-loop analysis. |
| [telescopic_amp.sch](telescopic_amp.sch) | Transistor-level schematic of the custom telescopic-cascode OTA. |
| [telescopic_ota.sch](telescopic_ota.sch) | OTA subcircuit schematic used for integration into the converter. |
| [telescopic_ota.sym](telescopic_ota.sym) | Xschem symbol representing the custom OTA block. |
| [test_ota.sch](test_ota.sch) | Test schematic for standalone OTA verification. |

## Design Specifications

### 1. Telescopic-Cascode OTA

A custom 9-transistor telescopic-cascode OTA was designed using the Sky130 130nm PDK.

Some of the reported simulation parameters:

| Parameter | Result |
|---|---:|
| Number of Transistors | 9 |
| DC Open-Loop Gain (balanced bias) | -245.78 V/V |
| Output Resistance | 3.28 MΩ |
| Transconductance (gm) | 74.9 µA/V |
| Transistors Verified in Saturation | 9/9 |

The OTA was first simulated independently before being integrated into the complete converter.

### 2. Type-II Gm-C Compensation

A Type-II compensation network was implemented to improve the feedback loop response.

| Parameter | Value |
|---|---:|
| Compensation Resistance (Rc) | 360 kΩ |
| Compensation Capacitance (Cc) | 100 pF |
| Target Crossover Frequency | ~625 kHz |

### 3. Analog PWM Generation

PWM signals are generated using a behavioral ramp signal and a comparator. The generated control signals drive the synchronous switches in the buck converter.

## Simulation Results

The complete converter was simulated in Ngspice to analyse its transient response and closed-loop behaviour.

### Transient Analysis

The simulated converter showed the following behaviour:

- Reference voltage: 1.8 V.
- Reported settled output voltage: approximately 1.55 V.
- Settling time: approximately 2 ms.
- No sustained oscillations were observed in the transient response.

The output settled below the intended reference voltage, indicating a steady-state regulation error.

### Loop Stability Verification

Loop stability was investigated using Tian's method by breaking the feedback loop and applying a series AC voltage injection.

The AC analysis was performed over a frequency range of 1 Hz to 10 MHz.

To perform small-signal analysis, the hard on/off comparator and switching elements were replaced with linearised behavioral equivalents.

The loop-gain response did not reach 0 dB, so a unity-gain crossover frequency and phase margin could not be extracted from the analysis.

### Root-Cause Analysis

Further operating-point and transfer-function analysis identified a limitation in the OTA's usable output swing.

Key observations:

- The OTA's reported gain at balanced bias was -245.78 V/V.
- The measured transfer gain under the actual closed-loop operating condition was -0.00618 V/V.
- This represents an approximately 40,000× reduction in gain.
- The OTA's usable linear output range was approximately 57–200 mV.
- The reference and feedback voltage difference caused the input pair to operate outside the region where the OTA could provide its intended gain.

A transistor resizing attempt involving M5–M8 was also investigated, but it worsened the gain and was reverted.

The analysis identified the limited output swing of the telescopic-cascode topology as the main design limitation.

## Tools & Technologies Used

- **Xschem:** Schematic capture and circuit design.
- **Ngspice:** DC, transient, and AC simulation.
- **Sky130 130nm PDK:** Transistor-level analog circuit design.
- **Ubuntu Linux:** Design and simulation environment.

## Concepts Practised

- Analog Integrated Circuit Design
- MOSFET-Level Circuit Design
- Telescopic-Cascode OTA
- Transconductance Amplifiers
- Type-II Gm-C Compensation
- Analog PWM Generation
- Closed-Loop Voltage Control
- Small-Signal Analysis
- Transient Response Analysis
- Loop-Gain and Stability Verification
- Sky130 PDK and Open-Source EDA Tools
- Circuit Debugging and Root-Cause Analysis

## Future Improvements

Based on the limitations identified during simulation, the following improvements can be explored:

- Redesign the OTA output stage using a topology with wider output swing, such as a folded-cascode architecture.
- Rescale the PWM ramp and reference voltage to better match the usable OTA output range.
- Improve the steady-state regulation accuracy.
- Revisit compensation after improving the OTA gain and output swing.

## About

This project gave me practical experience in transistor-level analog circuit design and the integration of analog control circuitry with a power converter.

One of the most useful aspects of this work was investigating why the OTA behaved differently under standalone and actual closed-loop operating conditions. The process involved examining operating points, transfer functions, transient responses, and loop-gain characteristics rather than relying only on the final output waveform.

---

**Author:** Areeb Jamal

**GitHub:** [@AreebJamal](https://github.com/AreebJamal)
