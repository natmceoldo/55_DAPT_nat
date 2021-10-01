SELECT
	authors.au_id,
	authors.au_lname,
	authors.au_fname,
	titles.title,
	publishers.pub_name
FROM
	authors
JOIN
	titleauthor
	ON authors.au_id = titleauthor.au_id
LEFT JOIN
	titles
	ON titleauthor.title_id = titles.title_id
LEFT JOIN
	publishers
	ON titles.pub_id = publishers.pub_id