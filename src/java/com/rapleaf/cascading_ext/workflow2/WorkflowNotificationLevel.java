package com.rapleaf.cascading_ext.workflow2;

import java.util.EnumSet;
import java.util.Set;

import com.rapleaf.db_schemas.rldb.workflow.WorkflowRunnerNotification;
import com.rapleaf.support.collections.SetBuilder;

/**

 DEBUG -> start
 INFO -> finish
 WARN -> shutdown
 ERROR -> fail, died unclean

 */

public class WorkflowNotificationLevel {

  //  nope
  private WorkflowNotificationLevel() {
  }

  @Deprecated  // use MONITOR if you don't want errors emails
  public static final Set<WorkflowRunnerNotification> NONE = EnumSet.noneOf(WorkflowRunnerNotification.class);

  //  only alert on asynchronous errors generated by the workflow monitor (performance problems like GC, or unexpected process termination)
  public static final Set<WorkflowRunnerNotification> MONITOR = new SetBuilder<>(NONE)
      .add(WorkflowRunnerNotification.DIED_UNCLEAN)
      .add(WorkflowRunnerNotification.PERFORMANCE)
      .get();

  public static final Set<WorkflowRunnerNotification> ERROR = new SetBuilder<>(MONITOR)
      .add(WorkflowRunnerNotification.FAILURE, WorkflowRunnerNotification.INTERNAL_ERROR, WorkflowRunnerNotification.STEP_FAILURE)
      .get();

  public static final Set<WorkflowRunnerNotification> WARN = new SetBuilder<>(ERROR)
      .add(WorkflowRunnerNotification.SHUTDOWN)
      .get();

  public static final Set<WorkflowRunnerNotification> INFO = new SetBuilder<>(WARN)
      .add(WorkflowRunnerNotification.SUCCESS)
      .get();

  public static final Set<WorkflowRunnerNotification> DEBUG = new SetBuilder<>(INFO)
      .add(WorkflowRunnerNotification.START)
      .get();

}
