.class public interface abstract Ljcifs/smb/WinError;
.super Ljava/lang/Object;
.source "WinError.java"


# static fields
.field public static final ERROR_ACCESS_DENIED:I = 0x5

.field public static final ERROR_BAD_PIPE:I = 0xe6

.field public static final ERROR_MORE_DATA:I = 0xea

.field public static final ERROR_NO_BROWSER_SERVERS_FOUND:I = 0x17e6

.field public static final ERROR_NO_DATA:I = 0xe8

.field public static final ERROR_PIPE_BUSY:I = 0xe7

.field public static final ERROR_PIPE_NOT_CONNECTED:I = 0xe9

.field public static final ERROR_REQ_NOT_ACCEP:I = 0x47

.field public static final ERROR_SUCCESS:I

.field public static final WINERR_CODES:[I

.field public static final WINERR_MESSAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x47

    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0xe6

    aput v3, v0, v1

    const/4 v1, 0x4

    const/16 v3, 0xe7

    aput v3, v0, v1

    const/16 v1, 0xe8

    aput v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0xe9

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xea

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x17e6

    aput v2, v0, v1

    sput-object v0, Ljcifs/smb/WinError;->WINERR_CODES:[I

    const-string v3, "The operation completed successfully."

    const-string v4, "Access is denied."

    const-string v5, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    const-string v6, "The pipe state is invalid."

    const-string v7, "All pipe instances are busy."

    const-string v8, "The pipe is being closed."

    const-string v9, "No process is on the other end of the pipe."

    const-string v10, "More data is available."

    const-string v11, "The list of servers for this workgroup is not currently available."

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/WinError;->WINERR_MESSAGES:[Ljava/lang/String;

    return-void
.end method
