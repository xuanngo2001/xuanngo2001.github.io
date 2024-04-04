## Axios basic
```js
// Write binary data / Download binary file.
    import fs from "fs";
    const config = {
        url: "https://example.com",
        method: "GET",
        headers: {
            "authorization": `Bearer ${global.my.genetec.accessToken}`,
        },
        responseType: "arraybuffer",
    }
    const response = await axios.request(config);
    const binaryData = response.data;
    fs.writeFile("output.exe", binaryData, "binary", function (err) { });

    // If responseType: "stream",
    //  response.data.pipe(fs.createWriteStream("output.exe"));

// Config Defaults
    axios.defaults.baseURL = "https://axiosexample.com";
    axios.defaults.headers.common["Authorization"] = AUTH_TOKEN
```