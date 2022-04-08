<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="C:/Users/onarm/narm team Dropbox/Omer Narman/PC/Downloads/chinook (1).db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="125"/><column_width id="3" width="4436"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><current_table name="4,6:maintracks"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="albums" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="84"/><column index="2" value="300"/><column index="3" value="76"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="tracks" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="75"/><column index="2" value="300"/><column index="3" value="84"/><column index="4" value="121"/><column index="5" value="80"/><column index="6" value="300"/><column index="7" value="115"/><column index="8" value="79"/><column index="9" value="88"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">-- /******************************************

--             ASSİGMENT-1                  

-- ******************************************/

-- 1) SELECT InvoiceId,CustomerId,total

-- FROM invoices

-- ORDER BY CustomerId ASC, total DESC;

-- 

-- 2)SELECT InvoiceId,CustomerId,total

-- FROM invoices

-- ORDER BY total DESC, CustomerId ASC;



-- 4)SELECT*

-- FROM invoices

-- WHERE total &gt;= 10

-- LIMIT 10;

-- 

-- 5)SELECT*

-- FROM invoices

-- WHERE total &lt;10

-- LIMIT 5;

-- 

-- 6)SELECT name

-- FROM tracks

-- WHERE name like &quot;B%s&quot; 

-- 

-- 7)SELECT *

-- FROM invoices

-- WHERE BillingCountry in(&quot;USA&quot;,&quot;Germany&quot;,&quot;Norway&quot;,&quot;Canada&quot;) AND InvoiceDate BETWEEN &quot;2010-01-01&quot; and &quot;2010-12-31&quot;

-- -- ORDER BY InvoiceDate DESC; </sql><sql name="Assigment-2">/********************************************************

                  Assigment-2



********************************************************/



-- 1)SELECT AlbumId,count(name) as Track_Number

-- FROM tracks

-- GROUP BY AlbumId

-- ORDER BY count(name) DESC;



-- 2)SELECT tracks.Name, albums.Title

-- FROM albums

-- INNER JOIN tracks

-- ON Albums.AlbumId = tracks.AlbumId



-- 3)SELECT tracks.AlbumId,albums.Title,min(tracks.Milliseconds)

-- FROM tracks

-- LEFT JOIN albums

-- on albums.AlbumId = tracks.AlbumId

-- GROUP BY tracks.AlbumId

-- ORDER BY min(tracks.AlbumId) DESC;



-- SELECT tracks.AlbumId,albums.Title,sum(tracks.Milliseconds)

-- FROM tracks

-- LEFT JOIN albums

-- on tracks.AlbumId= albums.AlbumId

-- GROUP BY tracks.AlbumId

-- ORDER by sum(tracks.Milliseconds) DESC;



SELECT albums.Title,sum(tracks.Milliseconds) as a

FROM tracks

LEFT JOIN albums

on tracks.AlbumId= albums.AlbumId

WHERE  a &gt; 4200000

GROUP BY tracks.AlbumId

ORDER by sum(tracks.Milliseconds) DESC;</sql><sql name="SQL 3">SELECT tracks.AlbumId,albums.Title, SUM(tracks.Milliseconds) as a

FROM tracks

LEFT JOIN albums

on tracks.AlbumId= albums.AlbumId

WHERE  a &gt; 4200000

GROUP BY tracks.AlbumId

ORDER by sum(tracks.Milliseconds) DESC;</sql><current_tab id="1"/></tab_sql></sqlb_project>
