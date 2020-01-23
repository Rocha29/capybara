Quando("eu marco um checkbox e um radiobox") do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    check('purple', allow_label_click: true)
    sleep(3)
    uncheck('purple', allow_label_click: true)
    sleep(3)
    choose('red', allow_label_click: true)
    sleep(3)

    
  end
  