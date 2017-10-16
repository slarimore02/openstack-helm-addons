{{- range $index, $key := .Values.secrets.authorizedkeys }}ssh-rsa {{ $key }}
{{- end }}
