import axios from "axios"
import { useEffect, useState } from "react"
import { Link } from "react-router-dom";

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



    
    return (
        <div className="main-container">
            <div className="list-container">
            <h1>LIST OF EMPLOYEE</h1>
            <iframe src="http://localhost/api/payroll/add_file.php" frameborder="0"></iframe>

            <div className="list-item">
            <table>
                <thead>
                    <tr>
                        <th className="item">id </th>
                        <th className="item">Name </th>
                        <th className="item">Email </th>
                        <th className="item">Department </th>
                        <th className="item">Type </th>
                        <th className="item">Actions </th>
                    </tr>
                </thead>
                <tbody>
                {users.map((user, key) =>
                        <tr key={key}>
                            <td className="item">{user.id}</td>
                            <td className="item">{user.fullname}</td>
                            <td className="item">{user.email}</td>
                            <td className="item">{user.department}</td>
                            <td className="item">{user.type}</td>
                            
                            <td className="item">
                                <Link to={`user/${user.id}/edit`} className="edit-btn">Edit</Link>
                                <button onClick={() => deleteUser(user.id)} className="del-btn">Delete</button>
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
