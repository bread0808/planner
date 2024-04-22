package com.planiverse.event.data;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planiverse.event.model.EventDTO;
import com.planiverse.event.repository.EventDAO;

@WebServlet("/event/add.do")
public class Add extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		String allDay = req.getParameter("allDay");
		String title = req.getParameter("title");
		String start = req.getParameter("start");
		String end = req.getParameter("end");
		String color = req.getParameter("color");
		String loc = req.getParameter("loc");
		String content = req.getParameter("content");
		String calSeq = req.getParameter("calSeq");
		
		EventDAO dao = new EventDAO();
		EventDTO dto = new EventDTO();

		dto.setTitle(title);
		dto.setColor(color);
		dto.setLoc(loc);
		dto.setContent(content);
		dto.setCalSeq(calSeq);
		
		if(allDay.equals("true")) {
			dto.setAllDay("y");
			dto.setStart(start.substring(0,10));
			if(!end.equals("Invalid date")) {
				dto.setEnd(end.substring(0,10));
			} else {
				dto.setEnd("");
			}
		} else {
			dto.setAllDay("n");
			dto.setStart(start);
			
			if(!end.equals("Invalid date")) {
				dto.setEnd(end);
			} else {
				dto.setEnd("");
			}
		}
		
		int eventSeq = dao.add(dto);
		
		resp.setContentType("application/json");
		PrintWriter writer = resp.getWriter();
		writer.print("{");
		writer.print("\"eventSeq\":"+eventSeq);
		writer.print("}");
		writer.close();

	}

}