package com.planiverse.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/logout.do")
public class Logout extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 현재 세션이 존재하는 경우에만 세션을 가져옵니다
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.removeAttribute("id");
            session.invalidate();
        }
        resp.sendRedirect("/plan/planiverse.do");
    }
}