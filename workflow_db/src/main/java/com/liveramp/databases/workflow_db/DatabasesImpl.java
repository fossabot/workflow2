
/**
 * Autogenerated by Jack
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.liveramp.databases.workflow_db;

import com.rapleaf.jack.*;
import com.liveramp.databases.workflow_db.IWorkflowDb;
import com.liveramp.databases.workflow_db.impl.WorkflowDbImpl;
import com.rapleaf.jack.tracking.PostQueryAction;
import com.rapleaf.jack.tracking.NoOpAction;
import com.rapleaf.jack.transaction.TransactorImpl;

public class DatabasesImpl implements IDatabases {
  private IWorkflowDb workflow_db;

  private final PostQueryAction postQueryAction;

  public DatabasesImpl() {
    this(new NoOpAction());
  }

  public DatabasesImpl(PostQueryAction postQueryAction) {
    this.postQueryAction = postQueryAction;
  }

  public DatabasesImpl(BaseDatabaseConnection workflow_db_connection) {
    this(new NoOpAction(), workflow_db_connection);
  }

  public DatabasesImpl(PostQueryAction postQueryAction, BaseDatabaseConnection workflow_db_connection) {
    this.workflow_db = new WorkflowDbImpl(workflow_db_connection, this, postQueryAction);
    this.postQueryAction = postQueryAction;
  }

  @Override
  public IWorkflowDb getWorkflowDb() {
    if (workflow_db == null) {
      this.workflow_db = new WorkflowDbImpl(new MysqlDatabaseConnection("workflow_db"), this, this.postQueryAction);
    }
    return workflow_db;
  }

  @Override
  public TransactorImpl.Builder<IWorkflowDb> getWorkflowDbTransactor() {
    return TransactorImpl.create(() -> new DatabasesImpl().getWorkflowDb());
  }
}
