import {BrowserRouter, Routes, Route, Link} from 'react-router-dom'
import '../../App.css' 
import AttendancePage from '../../components/pages/attendance/AttendanceLog'
import CreateUser from '../../components/pages/createuser/CreateUser'
import EditUser from '../../components/pages/edit/EditUser'
import ListUsers from '../../components/pages/list/ListUser'
import PayrollPage from '../../components/pages/payroll/Payroll'
// import RequestLeaveAppPage from '../../components/pages/request-leave/Leave'
import './mainNav.css'
// import PayrollPage from '../../components/payroll'
// import LoginPage from '../../pages/Login/Login';


const MainNav = () => {
  
  return (
    <div className="main-nav-container">
      <BrowserRouter>

      <div className='nav-item'>
          <ul>
            <li><Link to="/">List of Employee</Link></li>
            <li><Link to="user/payroll">Payroll</Link></li>
            <li><Link to="user/attendance">Attendance</Link></li>
            <li><Link to="user/create">Create User</Link></li>
            {/* <li><Link to="user/request-leave">Leave</Link></li> */}
            <li><a className='logout' href='http://localhost/api/logout.php'>Logout</a></li>
            <li><a href="https://form.123formbuilder.com/index.php?p=submissions&id=6304875" target="_blank" rel="noopener noreferrer">Leave</a>.</li>
          </ul>
        </div>

        <div className='nav-item'>
     
            <Routes>
                <Route index element={<ListUsers />}></Route>
                <Route path="user/payroll" element={<PayrollPage />}></Route>
                <Route path="user/attendance" element={<AttendancePage />}></Route>
                <Route path="user/create" element={<CreateUser />}></Route>
                {/* <Route path="user/request-leave" element={<RequestLeaveAppPage />}></Route> */}
                <Route path="user/:id/edit" element={<EditUser />}></Route>
                
            </Routes>
        </div>
          
            
      </BrowserRouter>
      
      
    </div>
  )
}

export default MainNav
