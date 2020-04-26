/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernate_year;

/**
 *
 * @author dell
 */
public class StudentData implements java.io.Serializable {
    
    private String roll,sname,dep,year,subject,assess1,assess2;
    public StudentData(){}
    public void setRoll(String roll)
    {
        this.roll=roll;
    }
    public String getRoll()
    {
        return roll;
    }
    public void setSname(String sname)
    {
        this.sname=sname;
    }
    public String getSname()
    {
        return sname;
    }
    public void setDep(String dep)
    {
        this.dep=dep;
    }
    public String getDep()
    {
        return dep;
    }
    public void setYear(String year)
    {
        this.year=year;
    }
    public String getYear()
    {
        return year;
    }
    public void setSubject(String subject)
    {
        this.subject=subject;
    }
    public String getSubject()
    {
        return subject;
    }
    public void setAssess1(String assess1)
    {
        this.assess1=assess1;
    }
    public String getAssess1()
    {
        return assess1;
    }
    public void setAssess2(String assess2)
    {
        this.assess2=assess2;
    }
    public String getAssess2()
    {
        return assess2;
    }
    
}
