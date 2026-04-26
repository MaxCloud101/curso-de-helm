{{- define "my_chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "my_chart.containername" -}}
{{ printf "%s-%s" ..Chart.Name  .Values.environment | lower }}
{{- end }}
