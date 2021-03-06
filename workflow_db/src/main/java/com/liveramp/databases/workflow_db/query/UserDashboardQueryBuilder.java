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
import com.liveramp.databases.workflow_db.iface.IUserDashboardPersistence;
import com.liveramp.databases.workflow_db.models.UserDashboard;


public class UserDashboardQueryBuilder extends AbstractQueryBuilder<UserDashboard> {

  public UserDashboardQueryBuilder(IUserDashboardPersistence caller) {
    super(caller);
  }

  public UserDashboardQueryBuilder select(UserDashboard._Fields... fields) {
    for (UserDashboard._Fields field : fields){
      addSelectedField(new FieldSelector(field));
    }
    return this;
  }

  public UserDashboardQueryBuilder selectAgg(FieldSelector... aggregatedFields) {
    addSelectedFields(aggregatedFields);
    return this;
  }

  public UserDashboardQueryBuilder id(Long value) {
    addId(value);
    return this;
  }

  public UserDashboardQueryBuilder idIn(Collection<Long> values) {
    addIds(values);
    return this;
  }

  public UserDashboardQueryBuilder whereId(IWhereOperator<Long> operator) {
    addWhereConstraint(new WhereConstraint<>(Column.fromId(null), operator, null));
    return this;
  }

  public UserDashboardQueryBuilder limit(int offset, int nResults) {
    setLimit(new LimitCriterion(offset, nResults));
    return this;
  }

  public UserDashboardQueryBuilder limit(int nResults) {
    setLimit(new LimitCriterion(nResults));
    return this;
  }

  public UserDashboardQueryBuilder groupBy(UserDashboard._Fields... fields) {
    addGroupByFields(fields);
    return this;
  }

  public UserDashboardQueryBuilder order() {
    this.addOrder(new OrderCriterion(QueryOrder.ASC));
    return this;
  }

  public UserDashboardQueryBuilder order(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(queryOrder));
    return this;
  }

  public UserDashboardQueryBuilder orderById() {
    this.addOrder(new OrderCriterion(QueryOrder.ASC));
    return this;
  }

  public UserDashboardQueryBuilder orderById(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(queryOrder));
    return this;
  }

  public UserDashboardQueryBuilder userId(Integer value) {
    addWhereConstraint(new WhereConstraint<>(UserDashboard._Fields.user_id, JackMatchers.equalTo(value)));
    return this;
  }

  public UserDashboardQueryBuilder whereUserId(IWhereOperator<Integer> operator) {
    addWhereConstraint(new WhereConstraint<>(UserDashboard._Fields.user_id, operator));
    return this;
  }

  public UserDashboardQueryBuilder orderByUserId() {
    this.addOrder(new OrderCriterion(UserDashboard._Fields.user_id, QueryOrder.ASC));
    return this;
  }

  public UserDashboardQueryBuilder orderByUserId(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(UserDashboard._Fields.user_id, queryOrder));
    return this;
  }

  public UserDashboardQueryBuilder dashboardId(Integer value) {
    addWhereConstraint(new WhereConstraint<>(UserDashboard._Fields.dashboard_id, JackMatchers.equalTo(value)));
    return this;
  }

  public UserDashboardQueryBuilder whereDashboardId(IWhereOperator<Integer> operator) {
    addWhereConstraint(new WhereConstraint<>(UserDashboard._Fields.dashboard_id, operator));
    return this;
  }

  public UserDashboardQueryBuilder orderByDashboardId() {
    this.addOrder(new OrderCriterion(UserDashboard._Fields.dashboard_id, QueryOrder.ASC));
    return this;
  }

  public UserDashboardQueryBuilder orderByDashboardId(QueryOrder queryOrder) {
    this.addOrder(new OrderCriterion(UserDashboard._Fields.dashboard_id, queryOrder));
    return this;
  }
}
