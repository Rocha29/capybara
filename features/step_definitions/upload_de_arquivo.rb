
Quando("eu faco um upload de arquivo") do
    visit '/outros/uploaddearquivos'
    #attach_file('upload','/home/rocha/Documentos/capybara/features/download.jpg', make_visible: true)


@foto = File.join(Dir.pwd, 'features/download.jpg')
    attach_file('upload', @foto, make_visible: true)


    sleep(4)
  end