{{- define "openstack-toolkit.snippets.keystone_openrc" }}
{{- $userClass := index . 0 -}}
{{- $identityEndpoint := index . 1 -}}
{{- $context := index . 2 -}}
{{- $userContext := index $context.Values.endpoints.identity.auth $userClass }}
export OS_AUTH_URL={{ tuple "identity" $identityEndpoint "api" $context | include "helm-toolkit.endpoints.keystone_endpoint_uri_lookup"  }}
export OS_REGION_NAME={{  $userContext.region_name }}
export OS_PROJECT_DOMAIN_NAME={{  $userContext.project_domain_name }}
export OS_PROJECT_NAME={{  $userContext.project_name }}
export OS_USER_DOMAIN_NAME={{  $userContext.user_domain_name }}
export OS_USERNAME={{  $userContext.username }}
export OS_PASSWORD={{  $userContext.password }}
export OS_IDENTITY_API_VERSION=3
export OS_IMAGE_API_VERSION=2
{{- end }}

