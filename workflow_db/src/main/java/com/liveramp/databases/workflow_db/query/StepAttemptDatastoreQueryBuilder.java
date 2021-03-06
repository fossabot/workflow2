/**
 * Autogenerated by Jack
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.liveramp.databases.workflow_db.query;

import java.util.Collection;

import com.rapleaf.jack.queries.AbstractQueryBuilder;
import com.rapleaf.jack.queries.Column;
import com.rapleaf.jack.queries.FieldSelector;
import com.rapleaf.jack.queries.where_operators.IWhereOperator;
import com.rapleaf.jack.queries.where_operators.JackMatchers;
import com.rapleaf.jack.queries.WhereConstraint;
import com.rapleaf.jack.queries.QueryOrder;
import com.rapleaf.jack.queries.OrderCriterion;
import com.rapleaf.jack.queries.LimitCriterion;
import com.liveramp.databases.workflow_db.iface.IStepAttemptDatastorePersistence;
import com.liveramp.databases.workflow_db.models.StepAttemptDatastore;


public class StepAttemptDatastoreQueryBuilder extends AbstractQueryBuilder<StepAttemptDatastore> {

  public StepAttemptDatastoreQueryBuilder(IStepAttemptDatastorePersistence caller) {
    super(caller);
  }

  public StepAttemptDatastoreQueryBuilder select(StepAttemptDatastore._Fields... fields) {
    for (StepAttemptDatastore._Fields field : fields){
      addSelectedField(new FieldSelector(field));
    }
    return this;
  }

  public StepAttemptDatastoreQueryBuilder selectAgg(FieldSelector... aggregatedFields) {
    addSelectedFields(aggregatedFields);
    return this;
  }

  public StepAttemptDatastoreQueryBuilder id(Long value) {
    addId(value);
    return this;
  }

  public StepAttemptDatastoreQueryBuilder idIn(Collection<Long> values) {
    addIds(values);
    return this;
  }

  public StepAttemptDatastoreQueryBuilder whereId(IWhereOperator<Long> operator) {
    addWhereConstraint(new WhereConstraint<>(Column.fromId(null), operator, null));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder limit(int offset, int nResults) {
    setLimit(new LimitCriterion(offset, nResults));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder limit(int nResults) {
    setLimit(new LimitCriterion(nResults));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder groupBy(StepAttemptDatastore._Fields... fields) {
    addGroupByFields(fields);
    return this;
  }

  public StepAttemptDatastoreQueryBuilder order() {
    this.addOrder(new OrderCriterion(QueryOrder.ASC));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder order(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(queryOrder));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder orderById() {
    this.addOrder(new OrderCriterion(QueryOrder.ASC));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder orderById(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(queryOrder));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder stepAttemptId(Long value) {
    addWhereConstraint(new WhereConstraint<>(StepAttemptDatastore._Fields.step_attempt_id, JackMatchers.equalTo(value)));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder whereStepAttemptId(IWhereOperator<Long> operator) {
    addWhereConstraint(new WhereConstraint<>(StepAttemptDatastore._Fields.step_attempt_id, operator));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder orderByStepAttemptId() {
    this.addOrder(new OrderCriterion(StepAttemptDatastore._Fields.step_attempt_id, QueryOrder.ASC));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder orderByStepAttemptId(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(StepAttemptDatastore._Fields.step_attempt_id, queryOrder));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder workflowAttemptDatastoreId(Long value) {
    addWhereConstraint(new WhereConstraint<>(StepAttemptDatastore._Fields.workflow_attempt_datastore_id, JackMatchers.equalTo(value)));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder whereWorkflowAttemptDatastoreId(IWhereOperator<Long> operator) {
    addWhereConstraint(new WhereConstraint<>(StepAttemptDatastore._Fields.workflow_attempt_datastore_id, operator));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder orderByWorkflowAttemptDatastoreId() {
    this.addOrder(new OrderCriterion(StepAttemptDatastore._Fields.workflow_attempt_datastore_id, QueryOrder.ASC));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder orderByWorkflowAttemptDatastoreId(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(StepAttemptDatastore._Fields.workflow_attempt_datastore_id, queryOrder));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder dsAction(Integer value) {
    addWhereConstraint(new WhereConstraint<>(StepAttemptDatastore._Fields.ds_action, JackMatchers.equalTo(value)));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder whereDsAction(IWhereOperator<Integer> operator) {
    addWhereConstraint(new WhereConstraint<>(StepAttemptDatastore._Fields.ds_action, operator));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder orderByDsAction() {
    this.addOrder(new OrderCriterion(StepAttemptDatastore._Fields.ds_action, QueryOrder.ASC));
    return this;
  }

  public StepAttemptDatastoreQueryBuilder orderByDsAction(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(StepAttemptDatastore._Fields.ds_action, queryOrder));
    return this;
  }
}
