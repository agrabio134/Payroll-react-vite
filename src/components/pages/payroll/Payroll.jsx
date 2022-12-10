import '../../../App.css'
import './Payroll.css'

const PayrollPage = () => {
    return (
        <div className='main-container'>
            <div className="payroll-container">
            
                <h1>PAYROLL</h1>
                <div className="payroll-item">
                 <iframe src="http://localhost/api/payroll/paymain" className="frame" scrolling="no" frameborder="0"></iframe>
                 </div>
            {/* <LogDataPage/> */}
         
         
        
        </div>
        </div>
    )
}
export default PayrollPage