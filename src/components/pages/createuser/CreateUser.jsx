import { useState } from "react"
import axios from  "axios"
import { useNavigate } from "react-router-dom"


const CreateUser = () => {  
    const navigate = useNavigate()

    const[inputs, setInputs] = useState([])
    const handleChange = (event) =>{
        const name = event.target.name;
        const value = event.target.value;
        setInputs(values =>({...values, [name]: value}))
    }


    const handleSubmit = (event) =>{
        event.preventDefault()

        axios.post('http://localhost:80/api/user/save', inputs).then(function(response){
            console.log(response.data)
            console.log("test")
            alert("User added")
            navigate('/')
        })
        

    }
    return (
        <div className="main-container">
            <div className="create-container">
            <h1>Create User </h1>
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
                                <input type="text" name="name" onChange={handleChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Date of Birth: </label>
                            </th>
                            <td> 
                                <input type="date" name="birthdate" onChange={handleChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Place of Birth: </label>
                            </th>
                            <td> 
                                <input type="text" name="birthplace" onChange={handleChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Permanent Address: </label>
                            </th>
                            <td> 
                                <input type="text" name="address" onChange={handleChange} />
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Sex: </label>
                            </th>
                            <td>
                                <input type="radio"  name="sex" value="Male" onChange={handleChange}></input>
                                <label>MALE</label>
                                <input type="radio"  name="sex" value="Female" onChange={handleChange}></input>
                                <label>FEMALE</label>       
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Citezenship: </label>
                            </th>
                            <td> 
                                <input type="text" name="citezenship" onChange={handleChange} />
                            </td>
                        </tr>
                        </div>
                        <div className="create-item">
                        <tr>
                            <th>
                                <label>Email: </label>
                            </th>
                            <td>
                                <input type="text" name="email" onChange={handleChange} />                             
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Employee Number: </label>
                            </th>
                            <td>
                                <input type="text" name="employee_no" onChange={handleChange} />                             
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Password: </label>
                            </th>
                            <td>
                                <input type="password" name="password" onChange={handleChange}/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Department: </label>
                            </th>
                            <td>
                                <input type="radio"  name="department" value="IT department" onChange={handleChange}></input>
                                <label>IT</label>
                                <input type="radio"  name="department" value="HR department" onChange={handleChange}></input>
                                <label>HR</label>       
                            </td>
                        </tr>
                        
                        <tr>
                            <th>
                                <label>User Type: </label>
                            </th>
                            <td>
                                <input type="radio"  name="type" value="admin" onChange={handleChange}></input>
                                <label>Admin</label>
                                <input type="radio"  name="type" value="staff" onChange={handleChange}></input>
                                <label>Staff</label>     
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <label>Daily Salary Rate in ₱:</label>
                            </th>
                            <td>
                            <input type="number" name="salary"  defaultValue ="520.00" onChange={handleChange} />                             
                            </td>
                        </tr> 
                        </div>
                       
                        <div className="create-btn"><button>Submit</button></div>

                        </div>
                    </tbody>
                   
                </table>
                
            </form>
            </div>
        </div>
    )
}

export default CreateUser
