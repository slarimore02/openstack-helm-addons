{{- $envAll := . }}
{{- range $key1, $userClass := tuple "admin"  }}
{{- $secretName := index $envAll.Values.secrets.identity $userClass }}
{{- tuple $userClass "internal" $envAll | include "openstack-toolkit.snippets.keystone_openrc" -}}
{{- end }}
