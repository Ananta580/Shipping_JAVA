package com.cestar.dao;

import com.cestar.beans.Record;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class RecordDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // RowMapper to map ResultSet rows to Record objects
    private static final class RecordRowMapper implements RowMapper<Record> {
        @Override
        public Record mapRow(ResultSet rs, int rowNum) throws SQLException {
            return new Record(
                    rs.getInt("clientID"),
                    rs.getString("clientName"),
                    rs.getString("clientPhone"),
                    rs.getString("itemShipped"),
                    rs.getString("shipDate"),
                    rs.getString("dateReceived")
            );
        }
    }

    // Get a record by ID
    public Record getRecordById(int id) {
        String sql = "SELECT * FROM clients WHERE clientID = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Record.class));
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // Add a record
    public void addRecord(Record record) {
        String sql = "INSERT INTO clients (clientID, clientName, clientPhone, itemShipped, shipDate, dateReceived) " +
                "VALUES (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, record.getClientID(), record.getClientName(), record.getClientPhone(),
                record.getItemShipped(), record.getShipDate(), record.getDateReceived());
    }

    // Update a record
    public void updateRecord(Record updatedRecord) {
        String sql = "UPDATE clients SET clientName = ?, clientPhone = ?, itemShipped = ?, " +
                "shipDate = ?, dateReceived = ? WHERE clientID = ?";
        jdbcTemplate.update(sql, updatedRecord.getClientName(), updatedRecord.getClientPhone(),
                updatedRecord.getItemShipped(), updatedRecord.getShipDate(), updatedRecord.getDateReceived(),
                updatedRecord.getClientID());
    }

    // Delete a record by ID
    public void deleteRecordById(int id) {
        String sql = "DELETE FROM clients WHERE clientID = ?";
        jdbcTemplate.update(sql, id);
    }

    // Get all records
    public List<Record> getAllRecords() {
        String sql = "SELECT * FROM clients";
        return jdbcTemplate.query(sql, new RecordRowMapper());
    }
}
