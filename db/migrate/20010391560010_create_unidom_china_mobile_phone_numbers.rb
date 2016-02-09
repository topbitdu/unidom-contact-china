class CreateUnidomChinaMobilePhoneNumbers < ActiveRecord::Migration

  def change

    create_table :unidom_china_mobile_phone_numbers, id: :uuid do |t|

      t.column :phone_number,                  'char(11)', null: false, default: '0'*11
      t.column :network_identification_number, 'char(3)',  null: false, default: '0'*3
      t.column :area_code,                     'char(4)',  null: false, default: '0'*4
      t.column :serial_number,                 'char(4)',  null: false, default: '0'*4

      t.boolean :text_message_verified, null: false, default: false
      t.boolean :voice_call_verified,   null: false, default: false

      t.text :instruction
      t.text :description

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: ::Time.utc(1970)
      t.datetime :closed_at,        null: false, default: ::Time.utc(3000)
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_china_mobile_phone_numbers, :phone_number, unique: true

  end

end
