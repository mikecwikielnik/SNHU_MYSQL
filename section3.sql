USE insurify;
SELECT avg(cast(policy_amount as int)) AS [AVG Policy] FROM lead_sale_stats
WHERE bought_policy = 1



 /* 
 
the avg bought policy is $363. you would generate the same average figure with

 USE insurify;
SELECT avg(cast(policy_amount as int)) AS [AVG Policy] FROM lead_sale_stats
WHERE policy_amount > 0 

The reasoning being that no one bought a $0 insurance policy. 

With that being said, the company can't expect that future bought policies 
will continue to be $363 for many reasons. However, if the company had a target 
number they are striving for-this number will tell the firm how close or far the company
is from their goals. 




*/ 



