/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package com.liveramp.workflow.types;


public enum WorkflowAttemptStatus implements org.apache.thrift.TEnum {
  RUNNING(0),
  FAIL_PENDING(1),
  SHUTDOWN_PENDING(2),
  FAILED(3),
  FINISHED(4),
  SHUTDOWN(5),
  INITIALIZING(6);

  private final int value;

  private WorkflowAttemptStatus(int value) {
    this.value = value;
  }

  /**
   * Get the integer value of this enum value, as defined in the Thrift IDL.
   */
  public int getValue() {
    return value;
  }

  /**
   * Find a the enum type by its integer value, as defined in the Thrift IDL.
   * @return null if the value is not found.
   */
  public static WorkflowAttemptStatus findByValue(int value) { 
    switch (value) {
      case 0:
        return RUNNING;
      case 1:
        return FAIL_PENDING;
      case 2:
        return SHUTDOWN_PENDING;
      case 3:
        return FAILED;
      case 4:
        return FINISHED;
      case 5:
        return SHUTDOWN;
      case 6:
        return INITIALIZING;
      default:
        return null;
    }
  }
}
