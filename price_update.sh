#!/bin/bash
#script to update all the decimal value of the product to .99
exec >/tmp/"$(basename "$0").log" 2>&1 #log;
mysql -uUSERNAME -pPASSWORD DBNAME <<EOF
update wp_postmeta set meta_value = CEILING(meta_value)-0.01 where meta_key in ('_price','_regular_price') and meta_value<>'';
EOF
