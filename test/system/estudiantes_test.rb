require "application_system_test_case"

class EstudiantesTest < ApplicationSystemTestCase
  setup do
    @estudiante = estudiantes(:one)
  end

  test "visiting the index" do
    visit estudiantes_url
    assert_selector "h1", text: "Estudiantes"
  end

  test "should create estudiante" do
    visit estudiantes_url
    click_on "New estudiante"

    fill_in "Apellido mat", with: @estudiante.apellido_mat
    fill_in "Apellido pat", with: @estudiante.apellido_pat
    fill_in "Comuna", with: @estudiante.comuna_id
    fill_in "Curso", with: @estudiante.curso_id
    fill_in "Direccion", with: @estudiante.direccion
    fill_in "Nombre", with: @estudiante.nombre
    fill_in "Rut", with: @estudiante.rut
    click_on "Create Estudiante"

    assert_text "Estudiante was successfully created"
    click_on "Back"
  end

  test "should update Estudiante" do
    visit estudiante_url(@estudiante)
    click_on "Edit this estudiante", match: :first

    fill_in "Apellido mat", with: @estudiante.apellido_mat
    fill_in "Apellido pat", with: @estudiante.apellido_pat
    fill_in "Comuna", with: @estudiante.comuna_id
    fill_in "Curso", with: @estudiante.curso_id
    fill_in "Direccion", with: @estudiante.direccion
    fill_in "Nombre", with: @estudiante.nombre
    fill_in "Rut", with: @estudiante.rut
    click_on "Update Estudiante"

    assert_text "Estudiante was successfully updated"
    click_on "Back"
  end

  test "should destroy Estudiante" do
    visit estudiante_url(@estudiante)
    click_on "Destroy this estudiante", match: :first

    assert_text "Estudiante was successfully destroyed"
  end
end
