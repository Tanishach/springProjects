package customercrudapp.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import customercrudapp.model.Customer;

@Component
public class CustomerDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	// Create
		@Transactional
		public void createCustomer(Customer customer) {
			this.hibernateTemplate.saveOrUpdate(customer);
		}
	
		// Get all Customer
		public List<Customer> getCustomers() {
			 List <Customer> customers = this.hibernateTemplate.loadAll(Customer.class);
			 return customers;
		}
		
		// delete single Customer
		@Transactional
		public void deleteCustomer(int Cid) {
			 Customer c = hibernateTemplate.load(Customer.class, Cid);
			 this.hibernateTemplate.delete(c);
		}
		
		// Get single Customer
		public Customer getCustomer(int Cid) {
			return this.hibernateTemplate.get(Customer.class, Cid);
		}
		

}
