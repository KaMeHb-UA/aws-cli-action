# AWS CLI Action

This action you to call `aws` from cli in shell commands and get a result back. Uses prebuilt alpine-based docker image

## Inputs

### `command`
**Required**  
Shell command to be executed

### `json`
Whether to encode all echoed result to JSON

### `base64`
Whether to encode all echoed result (already in JSON?) to Base64

## Outputs

### `result`
All echoed data. May be encoded in JSON and/or Base64 if set
