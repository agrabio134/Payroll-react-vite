import React from 'react';
import XLSX from 'xlsx';
import { readFile } from 'xlsx';
import mysql from 'mysql';

const ExcelUploader = (props) => {
  const [file, setFile] = useState(null);

  const handleFileChange = (event) => {
    setFile(event.target.files[0]);
  }

  const handleSubmit = (event) => {
    event.preventDefault();

    // Read the data from the Excel file
    const reader = new FileReader();
    reader.onload = (e) => {
      const data = new Uint8Array(e.target.result);
      const workbook = XLSX.read(data, {type: 'array'});
      const sheet = workbook.Sheets[workbook.SheetNames[0]];
      const rows = XLSX.utils.sheet_to_json(sheet);

      // Connect to the MySQL database
      const connection = mysql.createConnection({
        host: props.mysqlHost,
        user: props.mysqlUsername,
        password: props.mysqlPassword,
        database: props.mysqlDatabase
      });

      // Insert the data into the database
      rows.forEach(row => {
        connection.query(`INSERT INTO ${props.mysqlTable} SET ?`, row, (error) => {
          if (error) throw error;
        });
      });

      connection.end();
    };
    reader.readAsArrayBuffer(file);
  }

  return (
    <form onSubmit={handleSubmit}>
      <input type="file" onChange={handleFileChange} />
      <button type="submit">Upload</button>
    </form>
  );
}

export default ExcelUploader;