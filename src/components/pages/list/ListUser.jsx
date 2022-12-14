import axios from "axios";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import './List.css';

const ListUsers = () => {



    
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

    const archiveUser = (id) => {
        if(confirm('Are you sure you want Archive this user?')) {
        axios.put(`http://localhost:80/api/user/${id}/archive`).then(function(response){
            console.log(response.data);
            getUsers();
        });
    }
    }



    
    return (
        <div className="main-container">
            <div className="list-container">
            <h1>LIST OF EMPLOYEE</h1>
            <iframe src="http://localhost/api/payroll/add_file.php" ></iframe>

            <div className="list-item">
            <table>
                <thead>
                    <tr>
                        <th className="item-label">Employee Number </th>
                        <th className="item-label">Name </th>
                        <th className="item-label">Email </th>
                        <th className="item-label">Address </th>
                        <th className="item-label">Department </th>
                        <th className="item-label">Type </th>
                        <th className="item-label">Actions </th>
                    </tr>
                </thead>
                <tbody>
                {users.map((user, key) =>
                        <tr key={key}>
                            <td className="item">{user.employee_no}</td>
                            <td className="item">{user.fullname}</td>
                            <td className="item">{user.email}</td>
                            <td className="item">{user.address}</td>
                            <td className="item">{user.department}</td>
                            <td className="item">{user.type}</td>
                            
                            <td className="item-btn">
                                
                            <button className="edit-btn"> <Link to={`user/${user.id}/edit`} className="edit-btn">Edit</Link></button>
                            <button onClick={() => archiveUser(user.id)} className="del-btn">Archive</button>
                                
                            </td>
                        </tr>
                    )}
                </tbody>
            </table>
            </div>
            </div>
        </div>
        
    )
}

export default ListUsers
