Relationship between Suppliers and Supplier Logins, want count of
logins by suppler.

    irb> Login.group(:supplier).count

```
> Login.group(:supplier).count
   (1.8ms)  SELECT COUNT(*) AS count_all, supplier_id AS supplier_id FROM "logins" GROUP BY supplier_id
  Supplier Load (1.9ms)  SELECT "suppliers".* FROM "suppliers" WHERE "suppliers"."id" IN (1, 2, 3, 4, 5)
=> {#<Supplier:0x0000000488f758
  id: 1,
  name: "Wyman Green",
  email: "pearlie.harber@bosco.info",
  created_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00,
  updated_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00>=>19,
 #<Supplier:0x0000000488f410
  id: 2,
  name: "Kailee Greenholt III",
  email: "cleveland_hoeger@considinekihn.net",
  created_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00,
  updated_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00>=>9,
 #<Supplier:0x0000000488f0f0
  id: 3,
  name: "Roxane Heaney",
  email: "jonatan@kihn.name",
  created_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00,
  updated_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00>=>9,
 #<Supplier:0x0000000488ec90
  id: 4,
  name: "Mandy Dare Sr.",
  email: "gavin@spenceremard.net",
  created_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00,
  updated_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00>=>7,
 #<Supplier:0x0000000488e650
  id: 5,
  name: "Mrs. Ola Cremin",
  email: "kenyon@buckridge.biz",
  created_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00,
  updated_at: Tue, 16 Jun 2015 11:32:17 UTC +00:00>=>25}
```


```
> Login.group(:supplier).count.map {|sup, login_count| "Supplier #{sup.name} logged in #{login_count} times" }
   (2.1ms)  SELECT COUNT(*) AS count_all, supplier_id AS supplier_id FROM "logins" GROUP BY supplier_id
  Supplier Load (1.7ms)  SELECT "suppliers".* FROM "suppliers" WHERE "suppliers"."id" IN (1, 2, 3, 4, 5)
=> ["Supplier Wyman Green logged in 19 times",
 "Supplier Kailee Greenholt III logged in 9 times",
 "Supplier Roxane Heaney logged in 9 times",
 "Supplier Mandy Dare Sr. logged in 7 times",
 "Supplier Mrs. Ola Cremin logged in 25 times"]
```
