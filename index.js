import { readFileSync } from "fs";
const binary = readFileSync("./build/test.wasm");
const compiled = new WebAssembly.Module(binary);

const DATA_ADDR = 16;
let paused = false;

function pause() {
    if (paused) {
        wasmExports.asyncify_stop_rewind();
        paused = false;
    } else {
        memoryU32[DATA_ADDR >> 2] = DATA_ADDR + 8;
        memoryU32[DATA_ADDR + 4 >> 2] = 1024;
        wasmExports.asyncify_start_unwind(DATA_ADDR);
        paused = true;
    }
}

function resume() {
    wasmExports.asyncify_start_rewind(DATA_ADDR);
    wasmExports.main();
}

const instance = new WebAssembly.Instance(compiled, {
    env: {
        writeString(ptr) {
            if (!ptr) return null;
            const end = ptr + memoryU32[ptr - 4 >>> 2] >>> 1;
            let start = ptr >>> 1;
            let string = "";
            while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
            console.log(string + String.fromCharCode(...memoryU16.subarray(start, end)));
        },
        writeFromPtr(ptr) {
            if (!ptr) return null;
            const end = ptr + memoryU32[ptr - 4 >>> 2] >>> 1;
            let start = ptr >>> 1;
            let string = "";
            while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
            console.log(string + String.fromCharCode(...memoryU16.subarray(start, end)));
        },
        readString() {
            const value = "Hello from as-bridge!";
            if (value == null) return 0;
            const length = value.length;
            const pointer = wasmExports.__new(length << 1, 2) >>> 0;
            for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
            return pointer;
        },
        sleep: function (ms) {
            pause();
            setTimeout(function () {
                resume();
            }, ms);
        },
        abort() {}
    }
});
const wasmExports = instance.exports;
const memory = wasmExports.memory;
const memoryU8 = new Uint8Array(memory.buffer);
const memoryU16 = new Uint16Array(memory.buffer);
const memoryU32 = new Uint32Array(memory.buffer);

wasmExports.main();