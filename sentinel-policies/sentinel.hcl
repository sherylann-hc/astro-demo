module "tfplan-functions" {
  source = "./common-functions/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
    source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "restrict-resources-by-module-source"{
  enforcement_level = "soft-mandatory"
}

policy "restrict-s3-acl" {
  enforcement_level = "soft-mandatory"
}

policy "less-than-100" {
  enforcement_level = "hard-mandatory"
}