
/**
 * Autogenerated by Jack
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.liveramp.databases.workflow_db.iface;

import com.liveramp.databases.workflow_db.models.MapreduceCounter;
import com.liveramp.databases.workflow_db.query.MapreduceCounterQueryBuilder;
import com.liveramp.databases.workflow_db.query.MapreduceCounterDeleteBuilder;

import java.io.IOException;
import java.util.Map;
import java.util.List;

import com.rapleaf.jack.IModelPersistence;

public interface IMapreduceCounterPersistence extends IModelPersistence<MapreduceCounter> {
  MapreduceCounter create(final int mapreduce_job_id, final String group, final String name, final long value) throws IOException;

  MapreduceCounter createDefaultInstance() throws IOException;
  List<MapreduceCounter> findByMapreduceJobId(int value)  throws IOException;
  List<MapreduceCounter> findByGroup(String value)  throws IOException;
  List<MapreduceCounter> findByName(String value)  throws IOException;
  List<MapreduceCounter> findByValue(long value)  throws IOException;

  MapreduceCounterQueryBuilder query();

  MapreduceCounterDeleteBuilder delete();
}