import axios from "axios";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import './archive.css';

const ArchievedUser = () => {



    
    const [users, setUsers] = useState([]);
    useEffect(() => {
        getUsers();
    }, []);

    const getUsers = () =>{      
        axios.get('http://localhost:80/api/archive.php/users/').then(function(response){
            console.log(response.data)
            setUsers(response.data)
    }  )
    }
    // const deleteUser = (id) => {
    //     axios.delete(`http://localhost:80/api/archive/user/${id}/delete`).then(function(response){
    //         console.log(response.data);
    //         getUsers();
    //     });
    // }

    const unarchivedUser = (id) => {
        axios.put(`http://localhost:80/api/user/${id}/unarchivedUser`).then(function(response){
            console.log(response.data);
            getUsers();
        });
    }



    
    return (
        <div className="main-container">
            <div className="list-container">
            <h1>LIST OF EMPLOYEE</h1>
            <iframe src="http://localhost/api/payroll/add_file.php" frameborder="0"></iframe>

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
                            <button onClick={() => unarchivedUser(user.id)} className="del-btn">Unarchive</button>
                                
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

export default ArchievedUser
