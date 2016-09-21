/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clicker;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jiaming
 */
@WebServlet(name = "DSClicker", urlPatterns = {"/submit", "/getResults", "/backToIndex"})
public class DSClicker extends HttpServlet {

    DSClickerModel model = new DSClickerModel();

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        // get Servlet Path
        String path = request.getServletPath();
        System.out.println(path);
        if(path.equals("/backToIndex")){
            System.out.println("index.jsp");
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            view.forward(request, response);
            return;
        }
        // get results from model
        Map<String, Integer> answerMap = model.getResults();
        
        // store results into request
        request.setAttribute("answerMap", answerMap);
        
        // redict to result.jsp
        String nextView = "result.jsp";
        RequestDispatcher view = request.getRequestDispatcher(nextView);
        view.forward(request, response);
        
        // reset results
        this.model = new DSClickerModel();

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     * get answer from the brower
     * save the answer into the Model
     * 
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        // get answer from the brower
        String answer = request.getParameter("answer");
        
        // store the answer into model
        model.submitAnswer(answer);
        
        // store the answer into request
        request.setAttribute("response", answer);
        
        // redict to next.jsp
        String nextView = "next.jsp";
        RequestDispatcher view = request.getRequestDispatcher(nextView);
        view.forward(request, response);
       
    }
}
