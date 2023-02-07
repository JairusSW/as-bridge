const DATA_ADDR = 16;
let paused = false;

export function pause() {
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

export function resume() {
    wasmExports.asyncify_start_rewind(DATA_ADDR);
    wasmExports.main();
}
