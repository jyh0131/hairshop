package kr.yi.hairshop.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerUsingURI extends HttpServlet {

	private HashMap<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile"); ///WEB-INF/commandHandler.properties 이 내용 가지고 있음.
		Properties prop = new Properties();
		String configFilePath = getServletContext().getRealPath(configFile); //프로퍼티에 경로를 절대주소로 바꿈.
		
		try (FileReader fis = new FileReader(configFilePath)){ //절대주소로 바뀐 거를
			prop.load(fis); // 이 안에 넣음.
		}catch(Exception e) {
			throw new ServletException(e);
		}
		Iterator keyIter = prop.keySet().iterator();
		///simple.do = mvc.simple.SimpleHandler
		while(keyIter.hasNext()) {
			String command = (String) keyIter.next(); //키를 추출 simple.do
			String handlerClassName = prop.getProperty(command);//값을 추출 mvc.simple.SimpleHandler
			//여기까지는 클래스 경로만 가짐.
			
			Class<?> handlerClass; //클래스경로만 알고 클래스는 모름
			try {
				handlerClass = Class.forName(handlerClassName); //string인 클래스를 class화 시킴
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance(); //메모리에 올림. new 해주는거임. 클래스 생성.
				commandHandlerMap.put(command, handlerInstance); //맵 안에 들어감 -> command: simple.do handlerInstance: 뉴클래스
			} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {

				e.printStackTrace();
			}	
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	private void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		String command = req.getRequestURI(); //주소가 넘어옴 /chapter16/simple.do
		if(command.indexOf(req.getContextPath()) == 0) { //챕터16으로 시작한다면
			command = command.substring(req.getContextPath().length()); //챕터를 짜르고 커맨드만 짤라서 커맨드에 넣엉
		}
		
		CommandHandler handler = commandHandlerMap.get(command); //커맨드에 해당하는 클래스를 받음
		if(handler == null) { //커맨드가 없다면 널핸들러 들어가도록
			handler = new NullHandler();
		}
		
		String viewPage = null;
		
		try {
			viewPage = handler.process(req, res); //메소드가 겟이면 파일명이 뷰페이지에 담겨옴.
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(viewPage != null) { //파일명이 
			RequestDispatcher dispatcher = req.getRequestDispatcher(viewPage);
			dispatcher.forward(req, res);
		}
		
	}
}


















	

