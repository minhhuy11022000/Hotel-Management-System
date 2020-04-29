/* calculate total salary */
select total(salary)
from Employee e, Position_ID p
where e.Position_ID = p.id

/* calculate total salary from sales position */
select total(salary)
from Employee e, Position_ID p
where e.Position_ID = p.id and p.Position = 'Sales'

/* total salary by positon */
select p.Position, total(salary)
from Employee e, Position_ID p
where e.Position_ID = p.id
group by p.Position

/* list all the room that is vacant and ready */
select r.id, rs.status
from room r, room_status rs
where r.status_id = rs.id and rs.status = 'Vacant and ready'

/* see the history of stay of customer named Carl Mason */
select r.id, r.Adults, r.Room_ID, r.Day_in, r.Day_out
from Customer c, Reservation r
where c.id = r.Customer_ID and c.first_name = 'Carl' and c.last_name='Mason'

/* generate bill for Carl Mason when he check in on 14/2/2015 */
/* formula: number of days stay * room price */ 
select ( julianday(r.day_out) - julianday(r.day_in) ) * ca.price
from Reservation r, Customer c, room ro, category ca
where c.id = r.Customer_ID and c.first_name = 'Carl' and c.last_name = 'Mason'
and r.Day_in = '2015-02-14' 
and r.Room_ID = ro.id and ro.category_id = ca.id

/* generate service fee for Carl Mason when he check in on 14/2/2015 */
select sum(s.charge) as total_service_fee
from Reservation r, Customer c, Service_order so, Service s
where c.id = r.Customer_ID and c.first_name = 'Carl' and c.last_name = 'Mason'
and r.Day_in = '2015-02-14' 
and r.id = so.Res_ID and so.Service_ID = s.id


/* calculate percentage of each payment */
select payment,  ( count(payment) * 100 / ( select count(*) from Reservation) ) percentage
from Reservation r
group by payment

/* calculate percentage of male/female customer */
select c.Gender, ( count(gender) * 100 / ( select count(*) from Reservation r1, Customer c1 where r1.Customer_ID = c1.id) ) percentage
from Reservation r, Customer c
where r.Customer_ID = c.id
group by c.Gender

/* calculate total sales in  June 2015 */
select sum((julianday(r.day_out) - julianday(r.day_in)) * ca.price) total
from Reservation r, room ro, category ca
where r.Room_ID = ro.id and ro.category_id = ca.id and 
r.Day_in >= '2015-06-01' and r.Day_out <= '2015-06-30'

/* delete a reservation of customer named "John Doe" */
DELETE 
FROM Reservation
WHERE  Reservation.Customer_ID = (SELECT ID FROM Customer c WHERE c.First_name = "John" AND c.Last_name = "Doe")

/* update a status of the room of customer named "John Doe" */
UPDATE room
SET status_id = (SELECT ID FROM room_status WHERE status = "Vacant and Ready")
WHERE ID = (SELECT Room_ID FROM Reservation WHERE Customer_ID = (SELECT ID FROM Customer WHERE First_name = "John" AND Last_name = "Doe"))


