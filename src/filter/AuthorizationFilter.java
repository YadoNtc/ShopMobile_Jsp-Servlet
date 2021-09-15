package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserModel;
import util.SessionUtil;

public class AuthorizationFilter implements Filter {
	
	@SuppressWarnings("unused")
	private ServletContext context;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context =  filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		// Lay link req hien tai
		String url = req.getRequestURI();
		if (url.contains("/admin-")) {
			UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL");
			if (userModel != null) {
				if (userModel.getRole().getCode().equalsIgnoreCase("ADMIN")) {
					chain.doFilter(req, resp);
				} else if (userModel.getRole().getCode().equalsIgnoreCase("USER")) {
					resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login&message=not_permission&alert=warning");
				} 
			} else {
				resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login&message=not_login&alert=warning");
			}
		} else {
			chain.doFilter(request, response);
		}
	}

}
