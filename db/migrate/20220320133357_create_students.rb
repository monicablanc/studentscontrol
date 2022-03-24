class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      #t.integer :num_control, :null => false
      t.string :name_student
      #t.string :curp, :limit => 18
      t.datetime :fecha_nac
      t.string :sexo
      t.string :lugar_nac
      t.string :calle
      t.string :numero
      t.string :colonia
      t.string :cod_postal
      t.string :tel_casa_alumno, :limit => 10
      t.string :cel_alumno, :limit => 10
      t.string :trabaja, :limit => 2
      t.string :correo_alumno
      t.boolean :seguro_med
      t.string :tipo_seguromed
      t.string :nom_padre
      t.string :ocup_padre
      t.string :tel_padre, :limit => 10
      t.string :correo_padre
      t.string :nom_madre
      t.string :tel_madre, :limit => 10
      t.string :ocup_madre
      t.string :correo_madre
      t.string :nombre_emergencia1
      t.string :tel_emergencia1, :limit => 10
      t.string :parentesco_emergencia1
      t.string :nombre_emergencia2
      t.string :tel_emergencia2, :limit => 10
      t.string :parentesco_emergencia2
      t.string :grupo
      t.integer :modalidad
      t.boolean :certificado_sec
      t.boolean :acta_nac
      t.boolean :curp
      t.boolean :carta_cond
      t.boolean :comprobante_domicilio

      t.timestamps
    end
  end
end
