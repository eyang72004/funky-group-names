# Group Visualization App

## Overview
The Group Visualization App is an interactive tool for visualizing mathematical groups, operations, and their respective results. Primarily oriented towards the use of the Cayley Table, this app allows users to explore group operations (specifically addition and multiplication) modulo a specified number, and visually represents the results through circular bubbles. Each bubble size dynamically adjusts to demonstrate the magnitude of the results, attempting to give users an informative and somewhat aesthetic and engaging way to study groups.

## Features

### Interactive Group Visualization
- Visual representation of group elements and their operations
- Dynamic bubble sizes based on results of group operations
- Customizable modulo for different group sizes
- Support for various operations (addition and multiplication in this case)
- Real-time updating of results as the user changes group parameters/modulo

### Customizable Elements
- Adjust the modulo value to modify the size of the group
- Customize the operation of addition or multiplication
- Bubble size adjusts dynamically depending on operation and magnitude of result

### User-Friendly Interface
- Clear and Intuitive UI with scrollable and resizable elements
- Effort in making clean, easier-to-read font size and element presentation based on modulo value

### Mathematical Group Operations
- Performs modular arithmetic between group elements
- Uses operations (of addition and/or multiplication) to generate results
- Results represented in bubbles whose size vary based on output

## Technical Implementation

### 1. SwiftUI Architecture
- Reactive UI that updates as the user interacts with the app

### 2. Data Management
- Group elements stored as array of integers
- Results of operations are calculated dynamically and displayed in the UI
- Flexible design to support various operations and modulos

### 3. Group Operations
- Supports basic modular arithmetic operations of addition and multiplication
- Operation results calculated using 'GroupOperationsInterop' class
- Visualization scales with the size of the group and operation results

### 4. Dynamic UI Elements
- Circle-shaped bubbles with dynamically calculated sizes
- Font sizes and bubble dimensions adjust to the modulo value to ensure legibility



