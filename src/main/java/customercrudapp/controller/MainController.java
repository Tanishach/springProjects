package customercrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import customercrudapp.dao.CustomerDao;
import customercrudapp.model.Customer;

@Controller
public class MainController {
	
	@Autowired
	private CustomerDao customerDao;

	@RequestMapping("/")
	public String home(Model m) {
		List<Customer> customers = customerDao.getCustomers();
		 System.out.println(customers);
		 m.addAttribute("customers", customers);
		return "index";
	}

	@RequestMapping("/showForm")
	public String showCustomerForm(Model m) {
		m.addAttribute("title", "Add Customer");
		return "showCustomer";
	}

	@RequestMapping(value = "/handle-customer", method = RequestMethod.POST)
	public RedirectView handleCustomer(@ModelAttribute Customer customer, HttpServletRequest request) {
		System.out.println(customer);
		customerDao.createCustomer(customer);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	@RequestMapping("/delete/{customerId}")
	 public RedirectView deleteCustomer(@PathVariable("customerId")int customerId, HttpServletRequest request) {
		customerDao.deleteCustomer(customerId);
		RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
	 }
	
	@RequestMapping("/update/{customerId}")
	public String updateCustomer(@PathVariable("customerId") int Cid, Model model) {
		Customer customer = this.customerDao.getCustomer(Cid);
		model.addAttribute("customer", customer);
		return "updateCustomer";
	}
}
