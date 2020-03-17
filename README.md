# Chainlink External Adapter for Synthetix's Index (CryptoCompare)

This adapter pulls the indexes for Synthetix's index synths, retrieves the current market price for each asset from CryptoCompare, and calculates a weighted index.

## Environment variables

| Variable      |               | Description | Example |
|---------------|:-------------:|------------- |:---------:|
| `API_KEY`  | **Required**  | Your CryptoCompare API Key | `ABCDEFGHJIKLMo64FtaRLRR5BdHEESmha49TM` |

To get CryptoCompare API credentials, check out https://min-api.cryptocompare.com/.

## Install

```bash
yarn
```

## Test

```bash
yarn test
```

## Create the zip

```bash
zip -r cl-synth-index-cc.zip .
```

## Run with Docker

```bash
docker build . -t synth-index-cc-adapter
docker run -itd \
    -p 8080:8080 \
    -e API_KEY="Your_cryptocompare_API_key" \
    synth-index-cc-adapter
```

## Install to AWS Lambda

- In Lambda Functions, create function
- On the Create function page:
  - Give the function a name
  - Use Node.js 8.10 for the runtime
  - Choose an existing role or create a new one
  - Click Create Function
- Under Function code, select "Upload a .zip file" from the Code entry type drop-down
- Click Upload and select the `cl-synth-index-cc.zip` file
- Handler should remain index.handler
- Add the environment variable (repeat for all environment variables):
  - Key: API_KEY
  - Value: Your_API_key
- Save


## Install to GCP

- In Functions, create a new function, choose to ZIP upload
- Click Browse and select the `cl-synth-index-cc.zip` file
- Select a Storage Bucket to keep the zip in
- Function to execute: gcpservice
- Click More, Add variable (repeat for all environment variables)
  - NAME: API_KEY
  - VALUE: Your_API_key
