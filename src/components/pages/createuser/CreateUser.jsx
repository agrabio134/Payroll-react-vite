import { useState, useEffect } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import "./Create.css";

const CreateUser = () => { 
        // reader.onload = (event) => {
        //     const data = event.target.result;
        //     const workbook = XLSX.read(data,{type: 'binary' });
        //     const sheet = workbook.Sheets[workbook.SheetNames[0]];
        //     const rows = XLSX.utils.sheet_to_json(sheet);

        //     connection.connect();

        //     const query = 'INSERT INTO users (id, is_archive fullname, birthdate, birthplace, address, sex, citezenship, email, password, department, type, salary, employee_no) VALUES ?' ;
        //     connection.query(query, [rows],(error, result) => {
        //         if (error) {
        //             console.error(error);
        //         }else {
        //             console.log(result);
        //         }
        //         connection.end();
        //     });
        // };

        
        // }

    const [street, setStreet] = useState("");
    const [city, setCity] = useState("");
    const [province, setProvince] = useState("");
    const [zip, setZip] = useState("");
    const [country, setCountry] = useState("");
    const [fullAddress, setFullAddress] = useState("");

    const handleStreetChange = (event) => {
        setStreet(event.target.value);
    };
    const handleCityChange = (event) => {
        setCity(event.target.value);
    };
    const handleProvinceChange = (event) => {
        setProvince(event.target.value);
    };
    const handleZipChange = (event) => {
        setZip(event.target.value);
    };
    const handleCountryChange = (event) => {
        setCountry(event.target.value);
    };

    useEffect(() => {
        setFullAddress(`${street} /${city} /${province} /${zip} /${country}`);
    }, [street, city, zip, country]);

    const navigate = useNavigate();

    const [inputs, setInputs] = useState([]);
    const handleChange = (event) => {
        const name = event.target.name;
        const value = event.target.value;
        setInputs((values) => ({ ...values, [name]: value }));
    };

    const handleSubmit = (event) => {
        event.preventDefault();

        axios
            .post("http://localhost:80/api/user/save", inputs)
            .then(function (response) {
                console.log(response.data);
                console.log("test");
                // alert("User added");
                // navigate("/");
            });
    };
    return (
        <div className="main-container">
            <div className="create-container">
                <h1>Create User </h1>
                {/* <form onSubmit={handleFileSubmit}>
                    <input type="file" onChange={handleFileChange}/>
                    <button type="submit">Upload CSV File</button>
                    </form> */}
                <form onSubmit={handleSubmit}>
                
                    <table cellSpacing="4">
                        <tbody>
                            <div className="create-item-container">
                                <div className="create-item">
                                    <tr>
                                        <th>
                                            <label>Full Name: </label>
                                        </th>
                                        <td>
                                            <input
                                                type="text"
                                                name="name"
                                                onChange={handleChange}
                                                required
                                            />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Date of Birth: </label>
                                        </th>
                                        <td>
                                            <div className="inputs">
                                                <input
                                                    type="date"
                                                    name="birthdate"
                                                    onChange={handleChange}
                                                    required
                                                />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Place of Birth: </label>
                                        </th>
                                        <td>
                                            <div className="inputs">
                                                <input
                                                    type="text"
                                                    name="birthplace"
                                                    onChange={handleChange}
                                                    required
                                                />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Address: </label>
                                        </th>
                                        <td>
                                   
                                            <div className="inputs">
                                                <input
                                                    type="text"
                                                    name="street"
                                                    onChange={handleStreetChange}
                                                    id="inputStreet"
                                                    placeholder="Street"
                                                    value={street}
                                                    required
                                                />

                                                <input
                                                    type="text"
                                                    name="city"
                                                    onChange={handleCityChange}
                                                    id="inputCity"
                                                    placeholder="City"
                                                    value={city}
                                                    required
                                                />

                                                <input
                                                    type="text"
                                                    name="province"
                                                    onChange={handleProvinceChange}
                                                    id="inputProvince}"
                                                    placeholder="Province"
                                                    value={province}
                                                    required
                                                />

                                                <input
                                                    type="number"
                                                    name="zip"
                                                    onChange={handleZipChange}
                                                    id="inputZip"
                                                    placeholder="Zip"
                                                    value={zip}
                                                    required
                                                />

                                                <input
                                                    type="text"
                                                    name="country"
                                                    onChange={handleCountryChange}
                                                    id="inputCountry"
                                                    placeholder="Country"
                                                    value={country}
                                                    required
                                                />
                                                  <input
                                                    type="text"
                                                    value={fullAddress}
                                                    name="address"
                                                    onChange={handleChange}  
                                                              
                                                />
                                            </div>
                                        </td>
                                    </tr>
                                </div>
                                <div className="create-item">
                                    <tr>
                                        <th>
                                            <label>Sex: </label>
                                        </th>
                                        <td>
                                            <div className="inputs">
                                                <select name="sex" onChange={handleChange} required>
                                                    <option value="">Select Gender</option>
                                                    <option value="Male" onChange={handleChange}>
                                                        Male
                                                    </option>
                                                    <option value="Female" onChange={handleChange}>
                                                        Female
                                                    </option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Citezenship: </label>
                                        </th>
                                        <td>
                                            <input
                                                type="text"
                                                name="citezenship"
                                                onChange={handleChange}
                                                required
                                            />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Email: </label>
                                        </th>
                                        <td>
                                            <input
                                                type="text"
                                                name="email"
                                                onChange={handleChange}
                                                required
                                            />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Employee Number: </label>
                                        </th>
                                        <td>
                                            <input
                                                type="number"
                                                name="employee_no"
                                                onChange={handleChange}
                                                required
                                            />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Password: </label>
                                        </th>
                                        <td>
                                            <input
                                                type="password"
                                                name="password"
                                                onChange={handleChange}
                                                required
                                            />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Department: </label>
                                        </th>
                                        <td>
                                            <div className="inputs">
                                                <select
                                                    name="department"
                                                    onChange={handleChange}
                                                    required
                                                >
                                                    <option value="">Select Department</option>
                                                    <option value="IT department" onChange={handleChange}>
                                                        IT Department
                                                    </option>
                                                    <option value="HR department" onChange={handleChange}>
                                                        HR Department
                                                    </option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>
                                            <label>User Type: </label>
                                        </th>
                                        <td>
                                            <div className="inputs">
                                                <select name="type" onChange={handleChange} required>
                                                    <option value="">Select User Type</option>
                                                    <option value="admin" onChange={handleChange}>
                                                        Admin
                                                    </option>
                                                    <option value="staff" onChange={handleChange}>
                                                        Staff
                                                    </option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label>Daily Salary Rate in ₱:</label>
                                        </th>
                                        <td>
                                            <input
                                                type="number"
                                                name="salary"
                                                defaultValue="520.00"
                                                onChange={handleChange}
                                                required
                                            />
                                        </td>
                                    </tr>
                                    <div className="create-btn">
                                        <button>Submit</button>
                                    </div>
                                </div>
                            </div>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    );
};

export default CreateUser;
