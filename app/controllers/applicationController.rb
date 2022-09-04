# This is where requests will be processed

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # doctors table
  get '/doctors' do
    doc = Doctor.all.order(:first_name)
    doc.to_json
  end

  get '/doctors/:id' do
    doc = Doctor.find(params[:id])
    doc.to_json
  end

  post '/doctors' do
    doc = Doctor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      address: params[:address],
      department: params[:department],
      practice_type: params[:practice_type],
      town: params[:town],
      ailment_type: params[:ailment_type],
      ailment_id: params[:ailment_id]
    )
    doc.to_json
  end

  patch '/doctors/:id' do
    patched = Doctor.find(params[:id])
    patched.update(
      phone: params[:phone],
      address: params[:address],
      department: params[:department],
      practice_type: params[:practice_type],
      town: params[:town]
    )
    patched.to_json
  end

  put '/doctors' do
    patched = Doctor.find(params[:id])
    patched.update(
      phone: params[:phone],
      address: params[:address],
      department: params[:department],
      practice_type: params[:practice_type],
      town: params[:town]
    )
    patched.to_json
  end

  delete '/doctors/:id' do
    deleted = Doctor.find(params[:id])
    deleted.destroy
    deleted.to_json
  end

  # ailments table

  get '/ailments' do
    ailment = Ailment.all.order(:ailment_name)
    ailment.to_json
  end

  get '/ailments/:id' do
    ailment = Ailment.find(params[:id])
    ailment.to_json
  end

  post '/ailments' do
    ail = Ailment.create(
      ailment_name: params[:ailment_name],
      ailment_type: params[:ailment_type]
    )
  end

  patch '/ailments/:id' do
    patched = Ailment.find(params[:id])
    patched.update(
      ailment_name: params[:ailment_name],
      ailment_type: params[:ailment_type]
    )
    patched.to_json
  end

  put '/ailments' do
    patched = Ailment.find(params[:id])
    patched.update(
      ailment_name: params[:ailment_name],
      ailment_type: params[:ailment_type]
    )
    patched.to_json
  end

  delete '/ailments/:id' do
    deleted = Ailment.find(params[:id])
    deleted.destroy
    deleted.to_json
  end

  # patients table

  get '/patients' do
    patient = Patient.all.order(:patient_name)
    patient.to_json
  end

  get '/patients/:id' do
    patient = Patient.find(params[:id])
    patient.to_json
  end

  post '/patients' do
    pat = Patient.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      gender: params[:gender],
      birthdate: params[:birthdate],
      email: params[:email],
      phone: params[:phone],
      address: params[:address],
      town: params[:town],
      ailment_name: params[:ailment_name],
      ailment_type: params[:ailment_type],
      ailment_id: params[:ailment_id]
    )
    pat.to_json
  end

  patch '/patients/:id' do
    patched = Patient.find(params[:id])
    patched.update(
      phone: params[:phone],
      address: params[:address],
      town: params[:town],
      ailment_name: params[:ailment_name],
      ailment_type: params[:ailment_type],
      ailment_id: params[:ailment_id]
    )
    patched.to_json
  end

  put '/patients' do
    patched = Patient.find(params[:id])
    patched.update(
      phone: params[:phone],
      address: params[:address],
      town: params[:town],
      ailment_name: params[:ailment_name],
      ailment_type: params[:ailment_type],
      ailment_id: params[:ailment_id]
    )
    patched.to_json
  end

  delete '/patients/:id' do
    deleted = Patient.find(params[:id])
    deleted.destroy
    deleted.to_json
  end

end
