
/**
 * Autogenerated by Jack
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.liveramp.databases.workflow_db.impl;

import java.sql.SQLRecoverableException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Collection;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.Timestamp;

import com.rapleaf.jack.AbstractDatabaseModel;
import com.rapleaf.jack.BaseDatabaseConnection;
import com.rapleaf.jack.queries.WhereConstraint;
import com.rapleaf.jack.queries.WhereClause;
import com.rapleaf.jack.util.JackUtility;
import com.liveramp.databases.workflow_db.iface.IWorkflowAlertPersistence;
import com.liveramp.databases.workflow_db.models.WorkflowAlert;
import com.liveramp.databases.workflow_db.query.WorkflowAlertQueryBuilder;
import com.liveramp.databases.workflow_db.query.WorkflowAlertDeleteBuilder;

import com.liveramp.databases.workflow_db.IDatabases;

public class BaseWorkflowAlertPersistenceImpl extends AbstractDatabaseModel<WorkflowAlert> implements IWorkflowAlertPersistence {
  private final IDatabases databases;

  public BaseWorkflowAlertPersistenceImpl(BaseDatabaseConnection conn, IDatabases databases) {
    super(conn, "workflow_alerts", Arrays.<String>asList("alert_class", "message"));
    this.databases = databases;
  }

  @Override
  public WorkflowAlert create(Map<Enum, Object> fieldsMap) throws IOException {
    String alert_class = (String) fieldsMap.get(WorkflowAlert._Fields.alert_class);
    String message = (String) fieldsMap.get(WorkflowAlert._Fields.message);
    return create(alert_class, message);
  }

  public WorkflowAlert create(final String alert_class, final String message) throws IOException {
    StatementCreator statementCreator = new StatementCreator() {
      private final List<String> nonNullFields = new ArrayList<>();
      private final List<AttrSetter> statementSetters = new ArrayList<>();

      {
        int index = 1;

        if (alert_class != null) {
          nonNullFields.add("alert_class");
          int fieldIndex0 = index++;
          statementSetters.add(stmt -> stmt.setString(fieldIndex0, alert_class));
        }

        if (message != null) {
          nonNullFields.add("message");
          int fieldIndex1 = index++;
          statementSetters.add(stmt -> stmt.setString(fieldIndex1, message));
        }
      }

      @Override
      public String getStatement() {
        return getInsertStatement(nonNullFields);
      }

      @Override
      public void setStatement(PreparedStatement statement) throws SQLException {
        for (AttrSetter setter : statementSetters) {
          setter.set(statement);
        }
      }
    };

    long __id = realCreate(statementCreator);
    WorkflowAlert newInst = new WorkflowAlert(__id, alert_class, message, databases);
    newInst.setCreated(true);
    cachedById.put(__id, newInst);
    clearForeignKeyCache();
    return newInst;
  }

  public WorkflowAlert create() throws IOException {
    StatementCreator statementCreator = new StatementCreator() {
      private final List<String> nonNullFields = new ArrayList<>();
      private final List<AttrSetter> statementSetters = new ArrayList<>();

      @Override
      public String getStatement() {
        return getInsertStatement(nonNullFields);
      }

      @Override
      public void setStatement(PreparedStatement statement) throws SQLException {
        for (AttrSetter setter : statementSetters) {
          setter.set(statement);
        }
      }
    };

    long __id = realCreate(statementCreator);
    WorkflowAlert newInst = new WorkflowAlert(__id, null, null, databases);
    newInst.setCreated(true);
    cachedById.put(__id, newInst);
    clearForeignKeyCache();
    return newInst;
  }

  public WorkflowAlert createDefaultInstance() throws IOException {
    return create();
  }

  public List<WorkflowAlert> find(Map<Enum, Object> fieldsMap) throws IOException {
    return find(null, fieldsMap);
  }

  public List<WorkflowAlert> find(Collection<Long> ids, Map<Enum, Object> fieldsMap) throws IOException {
    List<WorkflowAlert> foundList = new ArrayList<>();

    if (fieldsMap == null || fieldsMap.isEmpty()) {
      return foundList;
    }

    StringBuilder statementString = new StringBuilder();
    statementString.append("SELECT * FROM workflow_alerts WHERE (");
    List<Object> nonNullValues = new ArrayList<>();
    List<WorkflowAlert._Fields> nonNullValueFields = new ArrayList<>();

    Iterator<Map.Entry<Enum, Object>> iter = fieldsMap.entrySet().iterator();
    while (iter.hasNext()) {
      Map.Entry<Enum, Object> entry = iter.next();
      Enum field = entry.getKey();
      Object value = entry.getValue();

      String queryValue = value != null ? " = ? " : " IS NULL";
      if (value != null) {
        nonNullValueFields.add((WorkflowAlert._Fields) field);
        nonNullValues.add(value);
      }

      statementString.append(field).append(queryValue);
      if (iter.hasNext()) {
        statementString.append(" AND ");
      }
    }
    if (ids != null) statementString.append(" AND ").append(getIdSetCondition(ids));
    statementString.append(")");

    int retryCount = 0;
    PreparedStatement preparedStatement;

    while (true) {
      preparedStatement = getPreparedStatement(statementString.toString());

      for (int i = 0; i < nonNullValues.size(); i++) {
        WorkflowAlert._Fields field = nonNullValueFields.get(i);
        try {
          switch (field) {
            case alert_class:
              preparedStatement.setString(i+1, (String) nonNullValues.get(i));
              break;
            case message:
              preparedStatement.setString(i+1, (String) nonNullValues.get(i));
              break;
          }
        } catch (SQLException e) {
          throw new IOException(e);
        }
      }

      try {
        executeQuery(foundList, preparedStatement);
        return foundList;
      } catch (SQLRecoverableException e) {
        if (++retryCount > AbstractDatabaseModel.MAX_CONNECTION_RETRIES) {
          throw new IOException(e);
        }
      } catch (SQLException e) {
        throw new IOException(e);
      }
    }
  }

  @Override
  protected void setStatementParameters(PreparedStatement preparedStatement, WhereClause whereClause) throws IOException {
    int index = 0;
    for (WhereConstraint constraint : whereClause.getWhereConstraints()) {
      for (Object parameter : constraint.getParameters()) {
        if (parameter == null) {
          continue;
        }
        try {
          if (constraint.isId()) {
            preparedStatement.setLong(++index, (Long)parameter);
          } else {
            WorkflowAlert._Fields field = (WorkflowAlert._Fields)constraint.getField();
            switch (field) {
              case alert_class:
                preparedStatement.setString(++index, (String) parameter);
                break;
              case message:
                preparedStatement.setString(++index, (String) parameter);
                break;
            }
          }
        } catch (SQLException e) {
          throw new IOException(e);
        }
      }
    }
  }

  @Override
  protected void setAttrs(WorkflowAlert model, PreparedStatement stmt, boolean setNull) throws SQLException {
    int index = 1;
    if (setNull && model.getAlertClass() == null) {
      stmt.setNull(index++, java.sql.Types.CHAR);
    } else if (model.getAlertClass() != null) {
      stmt.setString(index++, model.getAlertClass());
    }
    if (setNull && model.getMessage() == null) {
      stmt.setNull(index++, java.sql.Types.CHAR);
    } else if (model.getMessage() != null) {
      stmt.setString(index++, model.getMessage());
    }
    stmt.setLong(index, model.getId());
  }

  @Override
  protected WorkflowAlert instanceFromResultSet(ResultSet rs, Collection<Enum> selectedFields) throws SQLException {
    boolean allFields = selectedFields == null || selectedFields.isEmpty();
    long id = rs.getLong("id");
    return new WorkflowAlert(id,
      allFields || selectedFields.contains(WorkflowAlert._Fields.alert_class) ? rs.getString("alert_class") : null,
      allFields || selectedFields.contains(WorkflowAlert._Fields.message) ? rs.getString("message") : null,
      databases
    );
  }

  public List<WorkflowAlert> findByAlertClass(final String value) throws IOException {
    return find(Collections.<Enum, Object>singletonMap(WorkflowAlert._Fields.alert_class, value));
  }

  public List<WorkflowAlert> findByMessage(final String value) throws IOException {
    return find(Collections.<Enum, Object>singletonMap(WorkflowAlert._Fields.message, value));
  }

  public WorkflowAlertQueryBuilder query() {
    return new WorkflowAlertQueryBuilder(this);
  }

  public WorkflowAlertDeleteBuilder delete() {
    return new WorkflowAlertDeleteBuilder(this);
  }
}
