import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@WebServlet("/Temp")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,   // 2MB
                 maxFileSize = 1024 * 1024 * 10,      // 10MB
                 maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class Temp extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String serialNo = request.getParameter("serialNo");
        String eventName = request.getParameter("eventName");
        String description = request.getParameter("description");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String coordinatorName = request.getParameter("coordinatorName");
        String coordinatorNumber = request.getParameter("coordinatorNumber");
        String venue = request.getParameter("venue");

        // Process file upload
        Part filePart = request.getPart("image");
        String fileName = "";
        if (filePart != null) {
            fileName = getFileName(filePart);
            InputStream fileContent = filePart.getInputStream();
            // Handle the file content as needed
            // For example, save the file to a directory or process it further
        }

        // Print or process the values received from AddEvent.jsp
        System.out.println("Event ID: " + serialNo);
        System.out.println("Event Name: " + eventName);
        System.out.println("Description: " + description);
        System.out.println("Start Date: " + startDate);
        System.out.println("End Date: " + endDate);
        System.out.println("Coordinator Name: " + coordinatorName);
        System.out.println("Coordinator Number: " + coordinatorNumber);
        System.out.println("Venue: " + venue);
        System.out.println("Uploaded File Name: " + fileName);

        // Do further processing or redirection here
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : partHeader.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
