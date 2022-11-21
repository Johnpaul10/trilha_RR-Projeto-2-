class CreateJoinTableActorFilme < ActiveRecord::Migration[7.0]
  def change
    create_join_table :actors, :filmes do |t|
      t.index [:actor_id, :filme_id]
      t.index [:filme_id, :actor_id]
    end
  end
end
