class CreateSampleEnginePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :sample_engine_polls do |t|
      t.text :topic

      t.timestamps
    end
  end
end
