package com.cestar.controllers;

import com.cestar.beans.Record;
import com.cestar.dao.RecordDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {

    @Autowired
    private RecordDAO recordDAO;

    @RequestMapping("/")
    public String getHomePage(Model model) {
        model.addAttribute("records", recordDAO.getAllRecords());
        return "index";
    }

    @RequestMapping("/add")
    public String addRecordGet(Model model, @RequestParam(value = "id", required = false) Integer id) {
        if (id != null) {
            // Editing existing record
            Record recordToEdit = recordDAO.getRecordById(id);
            model.addAttribute("record", recordToEdit);
        } else {
            // Adding new record
            model.addAttribute("record", new Record());
        }
        return "add-record";
    }

    @PostMapping("/add")
    public String addRecordPost(@ModelAttribute Record record, RedirectAttributes redirectAttributes) {
        recordDAO.addRecord(record);
        redirectAttributes.addFlashAttribute("showSuccessMessage", true);
        redirectAttributes.addFlashAttribute("message", "Record added successfully");
        return "redirect:/";
    }

    @RequestMapping("/edit/{id}")
    public String editRecordGet(@PathVariable("id") int id, Model model) {
        Record record = recordDAO.getRecordById(id); // Retrieve record by ID
        model.addAttribute("record", record);
        return "edit-record"; // JSP page to edit the record
    }

    @PostMapping("/edit")
    public String editRecordPost(@ModelAttribute Record record, RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("showSuccessMessage", true);
        redirectAttributes.addFlashAttribute("message", "Record updated successfully");
        recordDAO.updateRecord(record); // Update the record in DAO
        return "redirect:/"; // Redirect to the records list
    }

    @PostMapping("/delete/{id}")
    public String deleteRecord(@PathVariable("id") int id,RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("showSuccessMessage", true);
        redirectAttributes.addFlashAttribute("message", "Record deleted successfully");
        recordDAO.deleteRecordById(id); // Delete record by ID
        return "redirect:/"; // Redirect to the records list
    }
}
