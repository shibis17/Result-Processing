/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernate_year;

import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.awt.*;
import java.io.*;
import org.jfree.chart.*;
import org.jfree.chart.entity.*;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.general.*;
import org.jfree.data.category.*;

public class ManageStudentData {

    private static SessionFactory factory;
    String path = "C:\\Users\\Shibi\\Documents\\NetBeansProjects\\Result_Processing\\web\\";

    public ManageStudentData(String subject) {
        try {
            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");
            configuration.addResource("hibernate_year/" + subject + ".hbm.xml");
            factory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Failed to create sessionFactory object." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public List<String> listStudentsIndividual(String year) {
        Session session = factory.openSession();
        Transaction tx = null;
        List<String> data = new ArrayList<String>();
        try {
            tx = session.beginTransaction();
            List students = session.createQuery("FROM StudentData WHERE year=" + year).list();
            for (Iterator iterator = students.iterator(); iterator.hasNext();) {
                StudentData student = (StudentData) iterator.next();
                data.add(student.getRoll() + " " + student.getSname());
            }
        } catch (Exception e) {

        }
        finally{
            session.close();
        }
        return data;
    }

    public int[] individual_barchart(String roll) throws IOException {
        int[] results = new int[2];
        Session session = factory.openSession();
        Transaction tx = null;
        List students = session.createQuery("FROM StudentData WHERE roll=" + roll).list();
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        Iterator iterator = students.iterator();
        StudentData student = (StudentData) iterator.next();
        dataset.addValue(Double.parseDouble(student.getAssess1()), "Assess1", roll);
        dataset.addValue(Double.parseDouble(student.getAssess2()), "Assess2", roll);
        results[0] = Integer.parseInt(student.getAssess1());
        results[1] = Integer.parseInt(student.getAssess2());
        JFreeChart barchart = ChartFactory.createBarChart("REGISTER NO: " + roll, "ASSESS", "MARKS", dataset, PlotOrientation.VERTICAL, true, true, false);
        File BarChart = new File(path + "BarChart.jpeg");
        ChartUtilities.saveChartAsJPEG(BarChart, barchart, 600, 600);
        return results;
    }

    public int[] listStudentsYear(String year) {
        DefaultPieDataset data = new DefaultPieDataset();
        Session session = factory.openSession();
        Transaction tx = null;
        int assess1, assess2, total;
        int label1 = 0, label2 = 0, label3 = 0, label4 = 0, label5 = 0;
        int[] count = new int[5];
        try {
            tx = session.beginTransaction();
            List students = session.createQuery("FROM StudentData WHERE year=" + year).list();
            for (Iterator iterator = students.iterator(); iterator.hasNext();) {
                StudentData student = (StudentData) iterator.next();
                assess1 = Integer.parseInt(student.getAssess1());
                assess2 = Integer.parseInt(student.getAssess2());
                total = (assess1 + assess2) / 2;
                if (total >= 0 && total <= 10) {
                    data.setValue("0-10", ++label1);
                    count[0]++;
                } else if (total > 10 && total <= 20) {
                    data.setValue("11-20", ++label2);
                    count[1]++;
                } else if (total > 20 && total <= 25) {
                    data.setValue("21-25", ++label3);
                    count[2]++;
                } else if (total > 25 && total <= 40) {
                    data.setValue("26-40", ++label4);
                    count[3]++;
                } else {
                    data.setValue("41-50", ++label5);
                    count[4]++;
                }
            }
            JFreeChart chart = ChartFactory.createPieChart("YEAR " + year, data, true, true, false);
            final File file1 = new File(path + "piechart" + year + ".jpeg");
            ChartUtilities.saveChartAsJPEG(file1, chart, 600, 400);
            tx.commit();
            return count;
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return count;
    }
}
