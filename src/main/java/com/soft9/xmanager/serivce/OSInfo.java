package com.soft9.xmanager.serivce;

import org.hyperic.sigar.CpuInfo;
import org.hyperic.sigar.CpuPerc;
import org.hyperic.sigar.Sigar;
import org.hyperic.sigar.SigarException;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by dwei on 2015/12/20.
 */
public class OSInfo {
    /**
     * 1.CPU资源信息
     */
    public Map<String,Object> getCpuInfo() {
        Map<String,Object> resMap = new HashMap<String,Object>();
        Sigar sigar = new Sigar();
        try {
            List<CpuInfo> infoList= Arrays.asList(sigar.getCpuInfoList());
            resMap.put("cpunum",infoList.size());
            resMap.put("cpuinfo",infoList);
        } catch (SigarException e) {
            e.printStackTrace();
        }
        return resMap;
    }

    public Map<String,Object> getCpuPerc() {
        Map<String,Object> resMap = new HashMap<String,Object>();
        Sigar sigar = new Sigar();
        try {
            List<CpuPerc> percList= Arrays.asList(sigar.getCpuPercList());
            resMap.put("cpunum",percList.size());
            resMap.put("cpuperc",percList);
        } catch (SigarException e) {
            e.printStackTrace();
        }
        return resMap;
    }

    public static void main(String[] args) {
       System.out.println(new OSInfo().getCpuInfo()) ;
    }
}
