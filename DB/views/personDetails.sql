DROP VIEW IF EXISTS `personDetails`;
create view personDetails as (
SELECT
person.Person_ID,
person.Person_Firstname,
Person_LastName,
person.Person_PhoneNumber,
person.Address_Address_ID,
Person_Email,
Person_DOB,
agent.Agent_ID,
buyer.Buyer_ID,
seller.Seller_ID
FROM `person`
left join agent on person.Person_ID = agent.Person_Person_ID
left join buyer on person.Person_ID = buyer.Person_Person_ID
left join seller on person.Person_ID = seller.Person_Person_ID
)