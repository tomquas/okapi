package trinsic.okapi;

import com.google.protobuf.GeneratedMessageV3;
import com.sun.jna.Native;
import com.sun.jna.Platform;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;


public class OkapiNative {

    public interface IOkapiC extends com.sun.jna.Library {
        int didcomm_pack(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int didcomm_unpack(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int didcomm_sign(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int didcomm_verify(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int didkey_generate(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int didkey_resolve(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int ldproofs_create_proof(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int ldproofs_verify_proof(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int oberon_create_key(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int oberon_create_token(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int oberon_blind_token(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int oberon_unblind_token(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int oberon_create_proof(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        int oberon_verify_proof(OkapiByteBuffer.ByValue request, OkapiByteBuffer response, ExternError err);

        void okapi_bytebuffer_free(OkapiByteBuffer.ByValue v);

        void okapi_string_free(com.sun.jna.Pointer s);
    }

    private static IOkapiC nativeLibrary = null;
    public synchronized static IOkapiC getNativeLibrary() {
        if (nativeLibrary == null)
            nativeLibrary = Native.load(getLibraryPath(), IOkapiC.class);

        return nativeLibrary;
    }

    private static String getLibraryName() {
        if (Platform.isWindows())
            return "okapi.dll";
        if (Platform.isMac())
            return "libokapi.dylib";
        // Default is linux
        return "libokapi.so";
    }

    private static String overrideLibraryPath = null;
    public static void setLibraryPath(String path) { overrideLibraryPath = path; }
    public static String getLibraryPath() {
        // Explicit path to entire library name
        if (overrideLibraryPath != null && overrideLibraryPath.strip().length() > 0)
            return Paths.get(overrideLibraryPath).toAbsolutePath().toString();

        var okapi_lib_path = System.getenv("LD_LIBRARY_PATH");
        System.out.println("LD_LIBRARY_PATH=" + okapi_lib_path);
        if (okapi_lib_path != null && okapi_lib_path.strip().length() > 0) {
            for (var path: okapi_lib_path.split(File.pathSeparator)) {
                var testPath = Paths.get(path, getLibraryName()).toAbsolutePath();
                System.out.println("test path=" + testPath);
                if (Files.exists(testPath))
                    return testPath.toString();
            }
        }
        // System native path load
        return "okapi";
    }

    static OkapiByteBuffer.ByValue messageToBuffer(GeneratedMessageV3 requestMessage) {
        OkapiByteBuffer.ByValue requestBuffer = new OkapiByteBuffer.ByValue();
        requestBuffer.setData(requestMessage.toByteArray());
        return requestBuffer;
    }

    static byte[] bufferToByteArray(OkapiByteBuffer buffer) {
        byte[] data = buffer.getData();
        getNativeLibrary().okapi_bytebuffer_free(buffer.byValue());
        return data;
    }
}