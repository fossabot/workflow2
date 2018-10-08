/**
 * Autogenerated by Jack
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.liveramp.databases.workflow_db.query;

import java.util.Collection;

import com.rapleaf.jack.queries.AbstractDeleteBuilder;
import com.rapleaf.jack.queries.where_operators.IWhereOperator;
import com.rapleaf.jack.queries.where_operators.JackMatchers;
import com.rapleaf.jack.queries.WhereConstraint;
import com.liveramp.databases.workflow_db.iface.IWorkflowAttemptPersistence;
import com.liveramp.databases.workflow_db.models.WorkflowAttempt;


public class WorkflowAttemptDeleteBuilder extends AbstractDeleteBuilder<WorkflowAttempt> {

  public WorkflowAttemptDeleteBuilder(IWorkflowAttemptPersistence caller) {
    super(caller);
  }

  public WorkflowAttemptDeleteBuilder id(Long value) {
    addId(value);
    return this;
  }

  public WorkflowAttemptDeleteBuilder idIn(Collection<Long> values) {
    addIds(values);
    return this;
  }

  public WorkflowAttemptDeleteBuilder workflowExecutionId(Integer value) {
    addWhereConstraint(new WhereConstraint<Integer>(WorkflowAttempt._Fields.workflow_execution_id, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereWorkflowExecutionId(IWhereOperator<Integer> operator) {
    addWhereConstraint(new WhereConstraint<Integer>(WorkflowAttempt._Fields.workflow_execution_id, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder systemUser(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.system_user, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereSystemUser(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.system_user, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder shutdownReason(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.shutdown_reason, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereShutdownReason(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.shutdown_reason, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder priority(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.priority, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder wherePriority(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.priority, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder pool(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.pool, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder wherePool(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.pool, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder host(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.host, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereHost(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.host, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder startTime(Long value) {
    addWhereConstraint(new WhereConstraint<Long>(WorkflowAttempt._Fields.start_time, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereStartTime(IWhereOperator<Long> operator) {
    addWhereConstraint(new WhereConstraint<Long>(WorkflowAttempt._Fields.start_time, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder endTime(Long value) {
    addWhereConstraint(new WhereConstraint<Long>(WorkflowAttempt._Fields.end_time, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereEndTime(IWhereOperator<Long> operator) {
    addWhereConstraint(new WhereConstraint<Long>(WorkflowAttempt._Fields.end_time, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder status(Integer value) {
    addWhereConstraint(new WhereConstraint<Integer>(WorkflowAttempt._Fields.status, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereStatus(IWhereOperator<Integer> operator) {
    addWhereConstraint(new WhereConstraint<Integer>(WorkflowAttempt._Fields.status, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder lastHeartbeat(Long value) {
    addWhereConstraint(new WhereConstraint<Long>(WorkflowAttempt._Fields.last_heartbeat, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereLastHeartbeat(IWhereOperator<Long> operator) {
    addWhereConstraint(new WhereConstraint<Long>(WorkflowAttempt._Fields.last_heartbeat, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder launchDir(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.launch_dir, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereLaunchDir(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.launch_dir, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder launchJar(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.launch_jar, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereLaunchJar(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.launch_jar, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder errorEmail(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.error_email, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereErrorEmail(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.error_email, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder infoEmail(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.info_email, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereInfoEmail(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.info_email, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder scmRemote(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.scm_remote, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereScmRemote(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.scm_remote, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder commitRevision(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.commit_revision, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereCommitRevision(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.commit_revision, operator));
    return this;
  }

  public WorkflowAttemptDeleteBuilder description(String value) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.description, JackMatchers.equalTo(value)));
    return this;
  }

  public WorkflowAttemptDeleteBuilder whereDescription(IWhereOperator<String> operator) {
    addWhereConstraint(new WhereConstraint<String>(WorkflowAttempt._Fields.description, operator));
    return this;
  }
}