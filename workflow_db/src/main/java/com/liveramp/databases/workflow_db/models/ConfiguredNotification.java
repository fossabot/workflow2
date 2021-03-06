
/**
 * Autogenerated by Jack
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.liveramp.databases.workflow_db.models;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import com.rapleaf.jack.AssociationType;
import com.rapleaf.jack.AttributesWithId;
import com.rapleaf.jack.BelongsToAssociation;
import com.rapleaf.jack.DefaultAssociationMetadata;
import com.rapleaf.jack.HasManyAssociation;
import com.rapleaf.jack.HasOneAssociation;
import com.rapleaf.jack.IAssociationMetadata;
import com.rapleaf.jack.IModelAssociationMetadata;
import com.rapleaf.jack.ModelIdWrapper;
import com.rapleaf.jack.ModelWithId;
import com.rapleaf.jack.queries.AbstractTable;
import com.rapleaf.jack.queries.Column;

import com.liveramp.databases.workflow_db.IDatabases;
import com.rapleaf.jack.util.JackUtility;

public class ConfiguredNotification extends ModelWithId<ConfiguredNotification, IDatabases> implements Comparable<ConfiguredNotification>{
  
  public static final long serialVersionUID = -3758672803896315925L;

  public static class Tbl extends AbstractTable<ConfiguredNotification.Attributes, ConfiguredNotification> {
    public final Column<Long> ID;
    public final Column<Integer> WORKFLOW_RUNNER_NOTIFICATION;
    public final Column<String> EMAIL;
    public final Column<Boolean> PROVIDED_ALERTS_HANDLER;

    private Tbl(String alias) {
      super("configured_notifications", alias, ConfiguredNotification.Attributes.class, ConfiguredNotification.class);
      this.ID = Column.fromId(alias);
      this.WORKFLOW_RUNNER_NOTIFICATION = Column.fromField(alias, _Fields.workflow_runner_notification, Integer.class);
      this.EMAIL = Column.fromField(alias, _Fields.email, String.class);
      this.PROVIDED_ALERTS_HANDLER = Column.fromField(alias, _Fields.provided_alerts_handler, Boolean.class);
      Collections.addAll(this.allColumns, ID, WORKFLOW_RUNNER_NOTIFICATION, EMAIL, PROVIDED_ALERTS_HANDLER);
    }

    public static Tbl as(String alias) {
      return new Tbl(alias);
    }
  }

  public static final Tbl TBL = new Tbl("configured_notifications");
  public static final Column<Long> ID = TBL.ID;
  public static final Column<Integer> WORKFLOW_RUNNER_NOTIFICATION = TBL.WORKFLOW_RUNNER_NOTIFICATION;
  public static final Column<String> EMAIL = TBL.EMAIL;
  public static final Column<Boolean> PROVIDED_ALERTS_HANDLER = TBL.PROVIDED_ALERTS_HANDLER;

  private final Attributes attributes;

  private transient ConfiguredNotification.Id cachedTypedId;

  // Associations
  private HasManyAssociation<WorkflowExecutionConfiguredNotification> __assoc_workflow_execution_configured_notification;
  private HasManyAssociation<WorkflowAttemptConfiguredNotification> __assoc_workflow_attempt_configured_notification;
  private HasManyAssociation<ApplicationConfiguredNotification> __assoc_application_configured_notification;

  public enum _Fields {
    workflow_runner_notification,
    email,
    provided_alerts_handler,
  }

  @Override
  public ConfiguredNotification.Id getTypedId() {
    if (cachedTypedId == null) {
      cachedTypedId = new ConfiguredNotification.Id(this.getId());
    }
    return cachedTypedId;
  }

  public ConfiguredNotification(long id, final int workflow_runner_notification, final String email, final Boolean provided_alerts_handler, IDatabases databases) {
    super(databases);
    attributes = new Attributes(id, workflow_runner_notification, email, provided_alerts_handler);
    this.__assoc_workflow_execution_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().workflowExecutionConfiguredNotifications(), "configured_notification_id", getId());
    this.__assoc_workflow_attempt_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().workflowAttemptConfiguredNotifications(), "configured_notification_id", getId());
    this.__assoc_application_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().applicationConfiguredNotifications(), "configured_notification_id", getId());
  }

  public ConfiguredNotification(long id, final int workflow_runner_notification, final String email, final Boolean provided_alerts_handler) {
    super(null);
    attributes = new Attributes(id, workflow_runner_notification, email, provided_alerts_handler);
  }
  
  public ConfiguredNotification(long id, final int workflow_runner_notification, IDatabases databases) {
    super(databases);
    attributes = new Attributes(id, workflow_runner_notification);
    this.__assoc_workflow_execution_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().workflowExecutionConfiguredNotifications(), "configured_notification_id", getId());
    this.__assoc_workflow_attempt_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().workflowAttemptConfiguredNotifications(), "configured_notification_id", getId());
    this.__assoc_application_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().applicationConfiguredNotifications(), "configured_notification_id", getId());
  }

  public ConfiguredNotification(long id, final int workflow_runner_notification) {
    super(null);
    attributes = new Attributes(id, workflow_runner_notification);
  }

  public static ConfiguredNotification newDefaultInstance(long id) {
    return new ConfiguredNotification(id, 0);
  }

  public ConfiguredNotification(Attributes attributes, IDatabases databases) {
    super(databases);
    this.attributes = attributes;

    if (databases != null) {
      this.__assoc_workflow_execution_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().workflowExecutionConfiguredNotifications(), "configured_notification_id", getId());
      this.__assoc_workflow_attempt_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().workflowAttemptConfiguredNotifications(), "configured_notification_id", getId());
      this.__assoc_application_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().applicationConfiguredNotifications(), "configured_notification_id", getId());
    }
  }

  public ConfiguredNotification(Attributes attributes) {
    this(attributes, (IDatabases) null);
  }

  public ConfiguredNotification(long id, Map<Enum, Object> fieldsMap) {
    super(null);
    attributes = new Attributes(id, fieldsMap);
  }

  public ConfiguredNotification (ConfiguredNotification other) {
    this(other, (IDatabases)null);
  }

  public ConfiguredNotification (ConfiguredNotification other, IDatabases databases) {
    super(databases);
    attributes = new Attributes(other.getAttributes());

    if (databases != null) {
      this.__assoc_workflow_execution_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().workflowExecutionConfiguredNotifications(), "configured_notification_id", getId());
      this.__assoc_workflow_attempt_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().workflowAttemptConfiguredNotifications(), "configured_notification_id", getId());
      this.__assoc_application_configured_notification = new HasManyAssociation<>(databases.getWorkflowDb().applicationConfiguredNotifications(), "configured_notification_id", getId());
    }
  }

  public Attributes getAttributes() {
    return attributes;
  }

  public int getWorkflowRunnerNotification() {
    return attributes.getWorkflowRunnerNotification();
  }

  public ConfiguredNotification setWorkflowRunnerNotification(int newval) {
    attributes.setWorkflowRunnerNotification(newval);
    cachedHashCode = 0;
    return this;
  }

  public String getEmail() {
    return attributes.getEmail();
  }

  public ConfiguredNotification setEmail(String newval) {
    attributes.setEmail(newval);
    cachedHashCode = 0;
    return this;
  }

  public Boolean isProvidedAlertsHandler() {
    return attributes.isProvidedAlertsHandler();
  }

  public ConfiguredNotification setProvidedAlertsHandler(Boolean newval) {
    attributes.setProvidedAlertsHandler(newval);
    cachedHashCode = 0;
    return this;
  }

  public void setField(_Fields field, Object value) {
    switch (field) {
      case workflow_runner_notification:
        setWorkflowRunnerNotification((Integer)value);
        break;
      case email:
        setEmail((String)value);
        break;
      case provided_alerts_handler:
        setProvidedAlertsHandler((Boolean)value);
        break;
      default:
        throw new IllegalStateException("Invalid field: " + field);
    }
  }
  
  public void setField(String fieldName, Object value) {
    if (fieldName.equals("workflow_runner_notification")) {
      setWorkflowRunnerNotification((Integer)  value);
      return;
    }
    if (fieldName.equals("email")) {
      setEmail((String)  value);
      return;
    }
    if (fieldName.equals("provided_alerts_handler")) {
      setProvidedAlertsHandler((Boolean)  value);
      return;
    }
    throw new IllegalStateException("Invalid field: " + fieldName);
  }

  public static Class getFieldType(_Fields field) {
    switch (field) {
      case workflow_runner_notification:
        return int.class;
      case email:
        return String.class;
      case provided_alerts_handler:
        return Boolean.class;
      default:
        throw new IllegalStateException("Invalid field: " + field);
    }    
  }

  public static Class getFieldType(String fieldName) {    
    if (fieldName.equals("workflow_runner_notification")) {
      return int.class;
    }
    if (fieldName.equals("email")) {
      return String.class;
    }
    if (fieldName.equals("provided_alerts_handler")) {
      return Boolean.class;
    }
    throw new IllegalStateException("Invalid field name: " + fieldName);
  }

  public List<WorkflowExecutionConfiguredNotification> getWorkflowExecutionConfiguredNotification() throws IOException {
    return __assoc_workflow_execution_configured_notification.get();
  }

  public List<WorkflowAttemptConfiguredNotification> getWorkflowAttemptConfiguredNotification() throws IOException {
    return __assoc_workflow_attempt_configured_notification.get();
  }

  public List<ApplicationConfiguredNotification> getApplicationConfiguredNotification() throws IOException {
    return __assoc_application_configured_notification.get();
  }

  @Override
  public Object getField(String fieldName) {
    if (fieldName.equals("id")) {
      return getId();
    }
    if (fieldName.equals("workflow_runner_notification")) {
      return getWorkflowRunnerNotification();
    }
    if (fieldName.equals("email")) {
      return getEmail();
    }
    if (fieldName.equals("provided_alerts_handler")) {
      return isProvidedAlertsHandler();
    }
    throw new IllegalStateException("Invalid field name: " + fieldName);
  }

  public Object getField(_Fields field) {
    switch (field) {
      case workflow_runner_notification:
        return getWorkflowRunnerNotification();
      case email:
        return getEmail();
      case provided_alerts_handler:
        return isProvidedAlertsHandler();
    }
    throw new IllegalStateException("Invalid field: " + field);
  }

  public boolean hasField(String fieldName) {
    if (fieldName.equals("id")) {
      return true;
    }
    if (fieldName.equals("workflow_runner_notification")) {
      return true;
    }
    if (fieldName.equals("email")) {
      return true;
    }
    if (fieldName.equals("provided_alerts_handler")) {
      return true;
    }
    return false;
  }

  public static Object getDefaultValue(_Fields field) {
    switch (field) {
      case workflow_runner_notification:
        return null;
      case email:
        return null;
      case provided_alerts_handler:
        return null;
    }
    throw new IllegalStateException("Invalid field: " + field);
  }

  @Override
  public Set<Enum> getFieldSet() {
    Set set = EnumSet.allOf(_Fields.class);
    return set;
  }

  @Override
  public ConfiguredNotification getCopy() {
    return getCopy(databases);
  }

  @Override
  public ConfiguredNotification getCopy(IDatabases databases) {
    return new ConfiguredNotification(this, databases);
  }

  @Override
  public boolean save() throws IOException {
    return databases.getWorkflowDb().configuredNotifications().save(this);
  }

  public String toString() {
    return "<ConfiguredNotification"
        + " id: " + this.getId()
        + " workflow_runner_notification: " + getWorkflowRunnerNotification()
        + " email: " + getEmail()
        + " provided_alerts_handler: " + isProvidedAlertsHandler()
        + ">";
  }

  public void unsetAssociations() {
    unsetDatabaseReference();
    __assoc_workflow_execution_configured_notification = null;
    __assoc_workflow_attempt_configured_notification = null;
    __assoc_application_configured_notification = null;
  }

  public int compareTo(ConfiguredNotification that) {
    return Long.valueOf(this.getId()).compareTo(that.getId());
  }
  
  
  public static class Attributes extends AttributesWithId {
    
    public static final long serialVersionUID = -7428906408882407784L;

    // Fields
    private int __workflow_runner_notification;
    private String __email;
    private Boolean __provided_alerts_handler;

    public Attributes(long id) {
      super(id);
    }

    public Attributes(long id, final int workflow_runner_notification, final String email, final Boolean provided_alerts_handler) {
      super(id);
      this.__workflow_runner_notification = workflow_runner_notification;
      this.__email = email;
      this.__provided_alerts_handler = provided_alerts_handler;
    }
    
    public Attributes(long id, final int workflow_runner_notification) {
      super(id);
      this.__workflow_runner_notification = workflow_runner_notification;
    }

    public static Attributes newDefaultInstance(long id) {
      return new Attributes(id, 0);
    }

    public Attributes(long id, Map<Enum, Object> fieldsMap) {
      super(id);
      int workflow_runner_notification = (Integer)fieldsMap.get(ConfiguredNotification._Fields.workflow_runner_notification);
      String email = (String)fieldsMap.get(ConfiguredNotification._Fields.email);
      Boolean provided_alerts_handler = (Boolean)fieldsMap.get(ConfiguredNotification._Fields.provided_alerts_handler);
      this.__workflow_runner_notification = workflow_runner_notification;
      this.__email = email;
      this.__provided_alerts_handler = provided_alerts_handler;
    }

    public Attributes(Attributes other) {
      super(other.getId());
      this.__workflow_runner_notification = other.getWorkflowRunnerNotification();
      this.__email = other.getEmail();
      this.__provided_alerts_handler = other.isProvidedAlertsHandler();
    }

    public int getWorkflowRunnerNotification() {
      return __workflow_runner_notification;
    }

    public Attributes setWorkflowRunnerNotification(int newval) {
      this.__workflow_runner_notification = newval;
      cachedHashCode = 0;
      return this;
    }

    public String getEmail() {
      return __email;
    }

    public Attributes setEmail(String newval) {
      this.__email = newval;
      cachedHashCode = 0;
      return this;
    }

    public Boolean isProvidedAlertsHandler() {
      return __provided_alerts_handler;
    }

    public Attributes setProvidedAlertsHandler(Boolean newval) {
      this.__provided_alerts_handler = newval;
      cachedHashCode = 0;
      return this;
    }

    public void setField(_Fields field, Object value) {
      switch (field) {
        case workflow_runner_notification:
          setWorkflowRunnerNotification((Integer)value);
          break;
        case email:
          setEmail((String)value);
          break;
        case provided_alerts_handler:
          setProvidedAlertsHandler((Boolean)value);
          break;
        default:
          throw new IllegalStateException("Invalid field: " + field);
      }
    }

    public void setField(String fieldName, Object value) {
      if (fieldName.equals("workflow_runner_notification")) {
        setWorkflowRunnerNotification((Integer)value);
        return;
      }
      if (fieldName.equals("email")) {
        setEmail((String)value);
        return;
      }
      if (fieldName.equals("provided_alerts_handler")) {
        setProvidedAlertsHandler((Boolean)value);
        return;
      }
      throw new IllegalStateException("Invalid field: " + fieldName);
    }

    public static Class getFieldType(_Fields field) {
      switch (field) {
        case workflow_runner_notification:
          return int.class;
        case email:
          return String.class;
        case provided_alerts_handler:
          return Boolean.class;
        default:
          throw new IllegalStateException("Invalid field: " + field);
      }    
    }

    public static Class getFieldType(String fieldName) {    
      if (fieldName.equals("workflow_runner_notification")) {
        return int.class;
      }
      if (fieldName.equals("email")) {
        return String.class;
      }
      if (fieldName.equals("provided_alerts_handler")) {
        return Boolean.class;
      }
      throw new IllegalStateException("Invalid field name: " + fieldName);
    }

    @Override
    public Object getField(String fieldName) {
      if (fieldName.equals("id")) {
        return getId();
      }
      if (fieldName.equals("workflow_runner_notification")) {
        return getWorkflowRunnerNotification();
      }
      if (fieldName.equals("email")) {
        return getEmail();
      }
      if (fieldName.equals("provided_alerts_handler")) {
        return isProvidedAlertsHandler();
      }
      throw new IllegalStateException("Invalid field name: " + fieldName);
    }

    public Object getField(_Fields field) {
      switch (field) {
        case workflow_runner_notification:
          return getWorkflowRunnerNotification();
        case email:
          return getEmail();
        case provided_alerts_handler:
          return isProvidedAlertsHandler();
      }
      throw new IllegalStateException("Invalid field: " + field);
    }

    public boolean hasField(String fieldName) {
      if (fieldName.equals("id")) {
        return true;
      }
      if (fieldName.equals("workflow_runner_notification")) {
        return true;
      }
      if (fieldName.equals("email")) {
        return true;
      }
      if (fieldName.equals("provided_alerts_handler")) {
        return true;
      }
      return false;
    }

    public static Object getDefaultValue(_Fields field) {
      switch (field) {
        case workflow_runner_notification:
          return null;
        case email:
          return null;
        case provided_alerts_handler:
          return null;
      }
      throw new IllegalStateException("Invalid field: " + field);
    }
    
    @Override
    public Set<Enum> getFieldSet() {
      Set set = EnumSet.allOf(_Fields.class);
      return set;
    }
    
    public String toString() {
      return "<ConfiguredNotification.Attributes"
          + " workflow_runner_notification: " + getWorkflowRunnerNotification()
          + " email: " + getEmail()
          + " provided_alerts_handler: " + isProvidedAlertsHandler()
          + ">";
    }
  }

  public static class Id implements ModelIdWrapper<ConfiguredNotification.Id> {
    public static final long serialVersionUID = 1L;

    private final long id;

    public Id(Long id) {
      this.id = id;
    }

    @Override
    public Long getId() {
      return id;
    }

    @Override
    public int compareTo(Id other) {
      return this.getId().compareTo(other.getId());
    }

    @Override
    public boolean equals(Object other) {
      if (other instanceof Id) {
        return this.getId().equals(((Id)other).getId());
      }
      return false;
    }

    @Override
    public int hashCode() {
      return this.getId().hashCode();
    }

    @Override
    public String toString() {
      return "<ConfiguredNotification.Id: " + this.getId() + ">";
    }
  }

  public static Set<Attributes> convertToAttributesSet(Collection<ConfiguredNotification> models) {
    return models.stream()
        .map(ConfiguredNotification::getAttributes)
        .collect(Collectors.toSet());
  }

  public static class AssociationMetadata implements IModelAssociationMetadata {

    private List<IAssociationMetadata> meta = new ArrayList<>();

    public AssociationMetadata(){
      meta.add(new DefaultAssociationMetadata(AssociationType.HAS_MANY, ConfiguredNotification.class, WorkflowExecutionConfiguredNotification.class, "configured_notification_id"));
      meta.add(new DefaultAssociationMetadata(AssociationType.HAS_MANY, ConfiguredNotification.class, WorkflowAttemptConfiguredNotification.class, "configured_notification_id"));
      meta.add(new DefaultAssociationMetadata(AssociationType.HAS_MANY, ConfiguredNotification.class, ApplicationConfiguredNotification.class, "configured_notification_id"));
    }

    @Override
    public List<IAssociationMetadata> getAssociationMetadata() {
      return meta;
    }
  }

}
