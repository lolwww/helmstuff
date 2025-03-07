# templates/_helpers.tpl
{{- define "juju-client.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "juju-client.labels" -}}
app.kubernetes.io/name: {{ include "juju-client.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "juju-client.selectorLabels" -}}
app.kubernetes.io/name: {{ include "juju-client.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}