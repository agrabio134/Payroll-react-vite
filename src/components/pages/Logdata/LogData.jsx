import axios from "axios"
import './LogData.css'
import { useEffect, useState } from "react"

const LogDataPage = () => {

    const [users, setUsers] = useState([]);
    useEffect(() => {
        getUsers();
    }, []);

    const getUsers = () =>{      
        axios.get('http://localhost:80/api/users/').then(function(response){
            console.log(response.data)
            setUsers(response.data)
    }  )
    }
    const deleteUser = (id) => {
        axios.delete(`http://localhost:80/api/user/${id}/delete`).then(function(response){
            console.log(response.data);
            getUsers();
        });
    }



    
    return (
        
        <div className="log-data-container">
            <div className="list-container">

            <h1>Payroll</h1>
            <iframe src="http://localhost/api/payroll" className="frame" ></iframe>
                
            </div>
            
            <div className="list-container">

                
            <div className="list-item">
                <h1>LIST OF EMPLOYEE</h1>

                
            </div>
            <div className="list-item">
            <table>
                <thead>
                    <tr>
                        <th className="item">Employee Number</th>
                        <th className="item">Name </th>
                        <th className="item">Department </th>
                    </tr>
                </thead>
                <tbody>
                {users.map((user, key) =>
                        <tr key={key}>
                            <td className="item">{user.employee_no}</td>
                            <td className="item">{user.fullname}</td>
                            <td className="item">{user.department}</td>                          
                        </tr>
                    )}
                </tbody>
            </table>
            </div>
            </div>
        </div>
        
    )
}

export default LogDataPage
