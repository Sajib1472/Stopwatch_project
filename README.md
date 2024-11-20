# Stopwatch iOS Application  

A sleek and feature-rich **Stopwatch** app built using **SwiftUI**, designed to track elapsed time accurately. This application offers a user-friendly interface with additional functionalities to enhance user experience.  

---

## **Features**  

1. **Start, Pause, and Reset Timer:**  
   - Start tracking time with a single tap.  
   - Pause the timer when needed and resume seamlessly.  
   - Reset the timer to zero to start over.  

2. **Lap Recording:**  
   - Record lap times while the stopwatch is running.  
   - View the recorded lap times in a scrollable list.  

3. **Precision Time Display:**  
   - Displays elapsed time in **hours, minutes, seconds**, and **milliseconds**.  
   - Uses a clean and easy-to-read **monospaced font** for the timer.  

4. **Dynamic Buttons:**  
   - Buttons dynamically change state (enabled/disabled) based on the app's current state (e.g., timer running or paused).  

5. **Visually Appealing UI:**  
   - Color-coded buttons for distinct actions:  
     - **Green** for Start  
     - **Orange** for Pause  
     - **Blue** for Lap  
     - **Red** for Reset  
   - Smooth layout with padding and rounded button corners for a polished look.  

6. **Lap List:**  
   - Displays a numbered list of all recorded laps.  
   - Organized in a scrollable view for easy access to lap data.  

---

## **Screenshots**  

| **Main Stopwatch View** | **Lap Records View** |  
|--------------------------|-----------------------|  
| ![Stopwatch Screen](#)   | ![Laps Screen](#)    |  

---

## **How to Run the App**  

1. **Requirements:**  
   - macOS with **Xcode 14+** installed.  
   - iOS Simulator or a physical iOS device.  

2. **Steps:**  
   - Clone or download this repository.  
   - Open the project in Xcode.  
   - Build and run the app on your preferred simulator or device.  

---

## **Code Highlights**  

1. **Time Formatting:**  
   - The app provides a detailed and accurate time display in **hh:mm:ss.ms** format using a custom `formatTime` function.  

2. **State Management:**  
   - SwiftUI's `@State` properties are used to manage timer states, elapsed time, and recorded laps.  

3. **Reusable Components:**  
   - Dynamic buttons with color and state management for enhanced user interactivity.  

4. **Lap Recording:**  
   - Stores lap times in a `@State` array, displayed dynamically in the scrollable view.  

---

## **Future Enhancements**  

1. **Dark Mode Support:**  
   - Ensure a seamless experience for both light and dark themes.  

2. **Share Lap Data:**  
   - Allow users to export or share lap records.  

3. **Notifications:**  
   - Add reminders or alerts for specific time intervals.  

4. **Customization Options:**  
   - Let users change button colors or timer fonts.  

---

## **License**  

This project is open-source and available under the **MIT License**.  

---

Feel free to contribute and make improvements to this project! 🚀  
