# Hotel-Booking-System-SQL-

 __Hotel Management System Database__

__🏨 Project at a Glance:__ 

This project is a professional-grade SQL database designed to run a hotel's daily operations. It tracks everything from the moment a guest books a room to the  moment they pay their final bill and leave a review. The system is built to be smart and organized, ensuring that no data is duplicated and that every dollar spent by a guest is accurately recorded.  

_________________________________________________________________________________________________________________________________________________________________________________________

 
 __🛠️ What This Database Does ?__ 

1. Manages Guests & Bookings
  •	Guest Profiles: Keeps a clean record of names, emails, and addresses.
  •	Stay Tracking: Manages check-in and check-out dates to ensure rooms are never double-booked.
  •	Source Tracking: Records if a guest booked directly or through a travel site (like Expedia).

3. Handles Room Inventory
  •	Live Status: The database knows exactly which rooms are occupied and which are ready for new guests.
  •	Pricing: Stores different prices for different room types (Standard vs. Executive).

4. Automated Billing & Payments
  •	Service Billing: Automatically adds extra costs like Spa treatments, Laundry, or Meals to the guest's bill.
  •	Transactions: Tracks how guests pay (Cash, Credit, or Debit) for clear accounting.
  •	Final Totals: Calculates the grand total by adding the room price to any extra services used.

5. Quality Control
  •	Guest Reviews: Links a 1-5 star rating to every completed payment so the hotel can see which guests were happy and why.



______________________________________________________________________________________________________________________________________________________________________________________________


__📈 Key Business Features:__ 

 🔍 Room Availability
  The system can instantly list all "Ready" rooms. It does this by checking which rooms are not currently linked to an active guest stay.

 💰 Revenue Reporting
  The database creates reports that show management exactly how much money was made today, this month, or this year, broken down by payment method.

 📊 Occupancy Tracking
  It calculates what percentage of the hotel is full at any given time, helping managers decide if they should offer discounts or raise prices.

🔗 How the Tables Connect 

   •	The Guest connects to the Reservation.   
   
  
   •	The Reservation connects to the Room and the Invoice.   
   
  
   •	The Invoice connects to the Services used and the final Payment.

