class CreateSampleEngineVoteOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :sample_engine_vote_options do |t|
      t.string :title
      t.references :poll

      t.timestamps
    end
  end
end
