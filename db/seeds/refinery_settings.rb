[
  {:name => "site_name", :value => "Company Name"},
  {:name => "new_page_parts", :value => false},
  {:name => "activity_show_limit", :value => 7},
  {:name => "preferred_image_view", :value => :grid},
  {:name => "analytics_page_code", :value => "UA-xxxxxx-x"},
  {:name => "theme", :value => "demolicious"},
  {:name => "image_thumbnails", :value => {
    :dialog_thumb => 'c106x106',
    :grid => 'c135x135',
    :small => '110x110>',
    :medium => '225x255>',
    :large => '450x450>',
    :preview => 'c96x96'
    }
  },
  {:name => 'refinery_i18n_locales', :value => {
      :en => 'English',
      :fr => 'Fran&ccedil;ais',
      :nl => 'Nederlands',
      :'pt-BR' => 'Portugu&ecirc;s',
      :da => 'Dansk',
      :nb => 'Norsk Bokm&aring;l',
      :sl => 'Slovenian',
      :es => 'Espa&ntilde;ol',
      :it => 'Italiano'
    }
  }
].each do |setting|
  RefinerySetting.create(:name => setting[:name].to_s, :value => setting[:value], :destroyable => false)
end
