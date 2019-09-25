class CreateSampleEngineVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :sample_engine_votes do |t|
      t.references :vote_option

      t.timestamps
    end
  end
end
