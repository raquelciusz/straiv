<h3>1. Task (XML Handling)</h3>

attached you received two XML files (compressed and uncompressed) of a sample reservation.
Please handle the XML with nokogiri
How would you use the XML-data to Create an OpenStruct with those values?
Be carefull, it can happen, that we don't have any services. So be sure to handle the case, the Services object can be missing.

id: OTA_HotelResNotifRQ > HotelReservations > HotelReservation > ResGlobalInfo > HotelReservationIds > HotelReservationID -> ResID_Value (of Type 10)
external_id: OTA_HotelResNotifRQ > HotelReservations > HotelReservation > ResGlobalInfo > HotelReservationIds > HotelReservationID -> ResID_Value (of Type 16)
state: OTA_HotelResNotifRQ > HotelReservations > HotelReservation -> ResStatus
rate_plan: OTA_HotelResNotifRQ > HotelReservations > HotelReservation > RoomStays > RoomStay > RatePlans > RatePlan
services: OTA_HotelResNotifRQ > HotelReservations > HotelReservation > RoomStays > RoomStay > Services (Comma-seperated list of included Services)


<h3>2. Task (Count array and sort)</h3>
Count matching objects in the array and create a sorted descending (Key, Value) hash.
['bed', 'pillow', 'bed', 'pillow', 'table', 'bed', 'pillow', 'door', 'light', 'minibar', 'light', 'chair', 'chair', 'light', 'light', 'hairdryer', 'soap']

<h3>3. Task (Handle positions)</h3>
You have a Model with name: string and position: integer
This represents the navigation. The Position number should be a row 1,2,3,4,5,…


| ID |        Name        |Position|
| -- |:------------------:| :-----:|
| 01 |       Weather      |   01   |
| 13 |      Portfolio     |   02   |
| 29 | Points of interest |   03   |
| 04 |       Events       |   04   |
| 07 |        News        |   05   |
| 09 |      Check-in      |   06   |

Create methods in the model to handle following cases:
When an item was added, it should be placed at the bottom of the list (highest position number)
When “Events” will be destroyed, the positions should now be 1-5 Check-in is 5

<h3>4. Task (Base64 to Image)</h3>
Convert the attached Base64 to an Image and save it in the Rails tmp directory.

<h3>5. Task (Delete duplicates)</h3>
Imagine a Database table with columns id, name, created_at
In this Database are some duplicates with the same name. Remove all duplicates and keep the newest row by it's created_at timestamp.


