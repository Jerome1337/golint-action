# Golint Action

This action execute golint command and return the output if the command fail.

## Inputs

### `golint-path`

Path where your Go files are.
This path will be used by golint command to check code of this files.

Default one is the repository root including all sub-directories (`./...`).

FYI, the `/...` suffix is used to includes all sub-directories,
remove it if you only want to check files of the given directory.

## Outputs

### `golint-output`

The golint output if the command fail.

For example:

```bash
Found 6 lint suggestions; failing.
models/Alignment.go:3:6: exported type Alignment should have comment or be unexported
models/Border.go:3:6: exported type Border should have comment or be unexported
models/CellStyle.go:3:6: exported type CellStyle should have comment or be unexported
models/Fill.go:3:6: exported type Fill should have comment or be unexported
models/Font.go:3:6: exported type Font should have comment or be unexported
models/Protection.go:3:6: exported type Protection should have comment or be unexported
```

## Example Usage

```yaml
uses: Jerome1337/golint-action@v1.0.1
with:
  golint-path: './src/...'
````
