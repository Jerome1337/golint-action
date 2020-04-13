# Golint action

This action execute golint command and return the output if the command fail.

## Inputs

### `golint-path`

Path used by golint command, default is `./...`.

## Outputs

### `golint-output`

The golint output if the command fail.

## Example usage

```yaml
uses: Jerome1337/golint-action@v1.0.0
with:
  golint-path: './src/...'
````
