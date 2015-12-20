package com.soft9.xmanager.control;
import com.soft9.xmanager.serivce.OSInfo;
import com.soft9.xmanager.systemmonitor.IMonitorService;
import com.soft9.xmanager.systemmonitor.MonitorInfoBean;
import com.soft9.xmanager.systemmonitor.MonitorServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.jsp.tagext.TryCatchFinally;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by dwei on 2015/12/20.
 */
@Controller
@RequestMapping("/xmanager")
public class BaseController {

    @RequestMapping("/login")
    public String hello(){
        return "login";
    }

    @RequestMapping("/dashboard")
    public String dashboard(){
        return "dashboard";
    }

    @RequestMapping("/cpuinfo")
    public String cpuinfo(){
        return "cpuinfo";
    }

//    @RequestMapping("/infolist")
//    public String infolist(){
//        return "infolist";
//    }

    @RequestMapping(value= "/{str}" )
    public ModelAndView helloWorld(@PathVariable String str) {
        return new ModelAndView( "/"+str );
    }

    @RequestMapping("/getInfo")
    @ResponseBody
    public Map<String, Object> getInfo() {
        return new OSInfo().getCpuPerc();
    }
}