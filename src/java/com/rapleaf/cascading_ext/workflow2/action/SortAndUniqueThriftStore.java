package com.rapleaf.cascading_ext.workflow2.action;

import java.util.Map;

import org.apache.thrift.TBase;

import cascading.pipe.Pipe;
import cascading.pipe.assembly.Unique;

import com.liveramp.cascading_ext.util.FieldHelper;
import com.rapleaf.cascading_ext.datastore.BucketDataStore;
import com.rapleaf.cascading_ext.datastore.UnitDataStore;
import com.rapleaf.cascading_ext.workflow2.CascadingAction2;
import com.rapleaf.cascading_ext.workflow2.Step;

/**
 * Uniques and sorts any thrift data store and adds missing parts.
 *
 * @param <T> thrift type of datastore
 */
public class SortAndUniqueThriftStore<T extends TBase<?, ?>> extends CascadingAction2 {
  public SortAndUniqueThriftStore(
      String checkpointToken,
      String tmpRoot,
      UnitDataStore<T> input,
      UnitDataStore<T> uniqueAndSortedOutput,
      Class clazz,
      Map<Object, Object> properties) {
    super(checkpointToken, tmpRoot, properties);

    Step sortAndUnique = new Step(new SortAndUnique<T>(
        "sort-and-unique",
        getTmpRoot(),
        input,
        uniqueAndSortedOutput,
        clazz,
        properties
    ));

    Step addMissing = new Step(new AddMissingPartitionsToBucket<T>(
        "add-missing",
        (Integer)properties.get("mapred.reduce.tasks"),
        (BucketDataStore<T>)uniqueAndSortedOutput,
        clazz
    ), sortAndUnique);

    setSubStepsFromTail(addMissing);
  }

  private static class SortAndUnique<T extends TBase<?, ?>> extends CascadingAction2 {
    public SortAndUnique(
        String checkpointToken,
        String tmpRoot,
        UnitDataStore<T> input,
        UnitDataStore<T> uniqueAndSortedOutput,
        Class clazz,
        Map<Object, Object> properties) {
      super(checkpointToken, tmpRoot, properties);

      Pipe pipe = bindSource("input", input);
      pipe = new Unique(pipe, FieldHelper.fieldOf(clazz));

      complete("sort-store-by-thrift-field", pipe, uniqueAndSortedOutput);
    }
  }
}
