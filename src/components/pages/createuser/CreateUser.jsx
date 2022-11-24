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
                <table cellSpacing="10">
                    <tbody>
                        <tr>
                            <th>
                                <label>Name: </label>
                            </th>
                            <td> 
                                <input type="text" name="name" onChange={handleChange} />
                            </td>
                        </tr>
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
                    </tbody>
                </table>
                <button>Submit</button>
            </form>
            </div>
        </div>
    )
}

export default CreateUser
