
merge into [dbo].[Gender] as g using 
	(values ('F','Female'),
			('M','Male')
	) as i(GenderCode,Name)
on i.GenderCode=g.GenderCode
when not matched then 
	insert  (GenderCode,Name) 
	values (i.GenderCode,i.Name);
	go