variable "apikey" {
  description = "5ca1afb07564612d30e91091/5e9ef5ea7564612d304456f8/6298fd0f7564612d31db2402"
  sensitive   = true
  type        = string
}


variable "endpoint" {
  default     = "https://intersight.com"
  description = "Intersight URL."
  type        = string
}

variable "secretkey" {
  default     = ""
  description = "-----BEGIN RSA PRIVATE KEY-----MIIEpAIBAAKCAQEAwRCqf0W7aGLUeQ8/4l6086b2LMmJilLlwCSEK3ZIYTCAb1ZH/PiGJMUw3EhzuzYZ9tpgRvFEQUiKl5S/GBY9TgAEiohFAE+C2I0SBtqDhnOoRzyofCr7ooJ5uuJqwjXxbrDgWgqPQlHGPeJT37Q72e0bY5wwQOwte9qDYi4TwsgwF5vl8QIbxNoW1s0VoAlFi/JrgS4hoOLx8S4nhxiPt8F2Ffi3UZ60LQeV3Uq2HKEYM9EtozEJhczM6XY+EzqH1VvkL3ypGmAuZ4HwWlV4KNSQNeXKdViu6OMh6CwJ7sw0jteC/i0Mpjp7Vtl2vONpR+PFfTlRvXXngm1JtGdeZwIDAQABAoIBAQCLER0u9iTLST0xQnnK7ls7ks2Kb1WCbLoP0H3f7KCwWUZ6bFUIdF/0BpJuakXq2UqUlLJ7B3kZ6U3jaALKL+LS15Jt00CYu61NnTgZ9bZ917ukLJ5UaoW9hmx24Hb0E/UnvYKteSO+Krc4hlnSLrpZ/MAY3T2o1jbhGwI+a2BSkazF65PKBgHOQV6KP6e3oRIx3uRVhDTc3w3DhgRQkkjh9mlpHhNwcdyUE4GxSwNrXgV2EJkfslDFj4v/azCqFYh9cs01xyycFYiP6tCXeSGmZwcQ75MNZSL8Sla9IJVRAj7cvB/PYwBTZHW5E3dvBaecwkEOS17HJmc8GSg/WQVZAoGBAMniaJw3aKmCl9YCBGmmCKl9/5urXSAKG2bRcdnjHRwLCw4GoT0YwRVjcPLX8CO2Sm3rbHXBtv5N8bVDyCaEGEzMhEXPQxT9/gdd6zGC9PwhMhYMHNiHpTyq4gVJV9OYo+FB6IdnY5L0dd4k2kdISHjxd+4SuGMhQHggTfgmMiyFAoGBAPTREGuPj97QQdNxKIRI3n6zVLi+AF4zhi1wl7GpyBEyzFRP67Gb61GFn1jmxohzubBOo+vj899pl9m6edd5lPoAv+q6Pk4klQQZvHx8HxVWozkX/+w2ghRN0j3GDoA4fxqOHf271QAqHsI5vV64E6e0w7y7dc3IS87YghFyyFj7AoGAUfcKYeJdK/VJkCnhgMNYYPg2/wzkEk4IMgZ3Iu+CshAJvPgUHqoeOoDVKsNhTB6GuXoL3wN3OGiM6ftLF9gpxYSDb5Rmt+8nY/ZNtxxkOrl/jFP+oirwe2Elwt+0OMSQRLRtpAvl8ZQvBrIPrUE7q17eQlp3Ykft1NfI0Ccx18ECgYByvMTgVFFOUPZ43XDqxqgYY33Sc6IChE1fYISHzJWqkc83uJkzDWs1MtXiuY3Uh8BARCsJNDWowHldnsrZ1O6gWNeZcB4hS33XhSRUh2ud+ZPX/0p/b3B5iZt+PiOvrkrLrE2cDHsgb50o1BzPlqAHmm2eN5FXl4cH82rKOKxzHwKBgQCSnjpx67un5zF32mvxNgsxgTDdVvw9HFEDCvy6Lekf/xupIbCVwDuQLI/FJOwqGBgVYZHShPiNpkLBHD7IQZyZ4Irei58i5LS3a4VUDhZOsfsF3p0EM+YLYCuWkDdd5pnma6xTJk3OFKIpotNxAMcGhwJ/bNXOTWEx37WFgB7XRw==-----END RSA PRIVATE KEY-----"
  sensitive   = true
  type        = string
}

variable "src_template" {
  default     = []
  description = "Standalone_ServerProfileTemplate"
  type        = set(string)
}

#variable "organization" {
#  default     = "default"
#  description = ""
#  type        = string
#}
