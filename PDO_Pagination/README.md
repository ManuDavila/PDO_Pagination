PDO_Pagination
==============

<h4>English description:</h4>

This class can show links to browse paginated PDO query results.

It can execute a database query using a connection established with PDO to obtain the total number of results in a given SQL query.

The class generates a SQL statement suffix to append to the query in order to get only the records to display on the current page assuming a given limit of records to be displayed per page.

It can also generate HTML to go to next, previous, first, last and intermediate pages of the database results listing pages.

The class allow modified the CSS style for the HTML links, through CSS classes.

The value of the GET parameters have been filtered to accept only numbers, if you add new parameters GET, it is your responsibility to validate to prevent SQL injection.

<H5>DEMOSTRATION</H5>

Save the folder in your project site. Install in your database the code from demo.sql and you edit the connection config in the file demo.php. Finally, execute <strong>demo.php</strong> in your browser.

View video demo ... http://www.youtube.com/watch?v=kKCferOfaOc

<h4>Descripción en español:</h4>

PDO_Pagination es una clase php para crear resultados de paginación con consultas a base de datos mediante la extensión PDO.

La consulta genera en el HTML los links para ir navegando a través de las páginas siguientes, anteriores, en primer lugar, últimos e intermedios. La clase proporciona una serie de propiedades que permiten agregar clases CSS para modificar los estilos de los links.

Puedes agregar parámetros opcionales a la consulta como se muestra en el archivo de ejemplo demo.php, el filtrado de esos datos es tu responsabilidad, si bien los parámetros que maneja la clase ya han sido filtrados para aceptar tan sólo números.

<h5>DEMOSTRACIÓN</h5>

Guardar la carpeta en el sitio de tu proyecto. Instala en tu base de datos el código de demo.sql y editar la conexión en el archivo demo.php. Finalmente ejecuta <strong>demo.php</strong> en el navegador.

Ver vídeo demo ... http://www.youtube.com/watch?v=kKCferOfaOc

