project_name: "block-bing-ads"

# LookML to map the ETL and data warehouse for Bing Ads
remote_dependency: app-marketing-bing-ads {
  url: "git://github.com/looker/app-marketing-bing-ads"
  ref: "5ae89c4e1167dd3b38d35f15e39863679157eb95"
}

remote_dependency: app-marketing-bing-ads-adapter {
  url: "git://github.com/looker/app-marketing-bing-ads-fivetran-bigquery"
  ref: "c3e4b40dc43e95dc0bb9358eb8361d7647d210bf"
}

# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "3d8fe8aa069aecfb55b245599cf2f7a9ed1b8f36"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: BING_SCHEMA {
    value: "@{BING_SCHEMA}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-bing-ads-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "looker_application"
  export: override_required
}

constant: BING_SCHEMA {
  value: "bings_ads_for_looker"
  export: override_required
}
