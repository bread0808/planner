package com.planiverse.event.data;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planiverse.event.repository.EventDAO;

@WebServlet("/event/delete.do")
public class Delete extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String eventSeq = req.getParameter("eventSeq");

		EventDAO dao = new EventDAO();

		int result = dao.delete(eventSeq);

		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		writer.print("{");
		writer.print("\"result\":" + result);
		writer.print("}");
		writer.close();
	}
}