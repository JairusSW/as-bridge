@external("env", "writeString")
declare function writeString(str: string): void;
@external("env", "writeFromPtr")
declare function writeFromPtr(ptr: usize): void;
@external("env", "readString")
declare function readString(): string;
@external("env", "sleep")
declare function sleep(ms: u32): void;

let str = "Hello from AssemblyScript through as-bridge!";
export function main(): void {
    writeString(str);
    str = readString();
    //writeString("Sleeping now!");
    //sleep(2000);
    // This runs with asyncify
    writeString("Recieved pointer: " + changetype<usize>(str).toString());
    writeString("Recived string: " + (str || "null"))
}