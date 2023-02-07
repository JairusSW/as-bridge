@external("env", "writeString")
declare function writeString(str: string): void;
@external("env", "writeFromPtr")
declare function writeFromPtr(ptr: usize): void;
@external("env", "readString")
declare function readString(): usize;
@external("env", "sleep")
declare function sleep(ms: u32): void;

const str = "Hello from AssemblyScript through as-bridge!";
export function main(): void {
    writeString(str);
    const ptr = readString();
    writeString("Sleeping now!");
    sleep(2000);
    // This runs with asyncify
    writeFromPtr(ptr);
}