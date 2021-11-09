Dado("que acessa a pagina de produto") do
  visit "https://magento.nublue.co.uk"
  find(".products-grid.grid li:first-child").click
  find(".swatch-attribute-options.clearfix .swatch-option.text:first-child").click
  find(".swatch-attribute-options.clearfix .swatch-option.color:first-child").click
end

Quando("adicionar ao carrinho e finalizar o pedido") do
  sleep 5
  find("#product-addtocart-button").click
  sleep 5
  visit "https://magento.nublue.co.uk/checkout/cart/"
  find('button[data-role="proceed-to-checkout"]').click
end

Quando("preenche os campos de dados pessoas com email {string} nome {string}") do |email, nome|
  sleep 15
  find("input[name='username']").set email
  find("input[name='firstname']").set nome
end

Quando("sobrenome  {string} empresa {string}") do |sobrenome, empresa|
  find("input[name='lastname']").set sobrenome
  find("input[name='company']").set empresa
end

Quando("os dados de endereço que são rua {string}  bairro {string} Complemento {string}") do |rua, bairro, complemento|
  find("input[name='street[0]']").set rua
  find("input[name='street[1]']").set bairro
  find("input[name='street[2]']").set complemento
  find("select[name='country_id'] option[value='BR']").click
  find("select[name='region_id'] option[value='489']").click
  find('input[name="city"]').set('Recife')
  find('input[name="postcode"]').set('51240-500')
  find('input[name="telephone"]').set('81 9999-9999')
  sleep 10
  find('button[data-role="opc-continue"]').click
  sleep 15
end

Então("a compra sera finalizada com sucesso") do
  find('.payment-method._active button[type="submit"]').click
end
