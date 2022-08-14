# shell
update woocommerce prices in decimal part
#mysql - learning on floor,round,ceiling


MariaDB [jvjuwehbtc]>  select meta_value from wp_postmeta where post_id = 128273 and meta_key='_price';
+------------+
| meta_value |
+------------+
| 121.25     |
+------------+
1 row in set (0.000 sec)

MariaDB [jvjuwehbtc]> select  CEILING(meta_value) from wp_postmeta  where post_id = 128273 and meta_key='_price';
+---------------------+
| CEILING(meta_value) |
+---------------------+
|                 122 |
+---------------------+
1 row in set (0.001 sec)

MariaDB [jvjuwehbtc]> select ROUND(meta_value) from wp_postmeta  where post_id = 128273 and meta_key='_price';
+-------------------+
| ROUND(meta_value) |
+-------------------+
|               121 |
+-------------------+
1 row in set (0.000 sec)

MariaDB [jvjuwehbtc]> select floor(meta_value) from wp_postmeta where post_id = 128273 and meta_key='_price';
+-------------------+
| floor(meta_value) |
+-------------------+
|               121 |
+-------------------+
1 row in set (0.000 sec)
