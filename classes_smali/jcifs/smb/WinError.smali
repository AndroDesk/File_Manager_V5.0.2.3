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

    .line 1
    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [I

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x5

    .line 7
    aput v2, v0, v1

    .line 9
    const/4 v1, 0x2

    .line 10
    const/16 v3, 0x47

    .line 12
    aput v3, v0, v1

    .line 14
    const/4 v1, 0x3

    .line 15
    const/16 v3, 0xe6

    .line 17
    aput v3, v0, v1

    .line 19
    const/4 v1, 0x4

    .line 20
    const/16 v3, 0xe7

    .line 22
    aput v3, v0, v1

    .line 24
    const/16 v1, 0xe8

    .line 26
    aput v1, v0, v2

    .line 28
    const/4 v1, 0x6

    .line 29
    const/16 v2, 0xe9

    .line 31
    aput v2, v0, v1

    .line 33
    const/4 v1, 0x7

    .line 34
    const/16 v2, 0xea

    .line 36
    aput v2, v0, v1

    .line 38
    const/16 v1, 0x8

    .line 40
    const/16 v2, 0x17e6

    .line 42
    aput v2, v0, v1

    .line 44
    sput-object v0, Ljcifs/smb/WinError;->WINERR_CODES:[I

    .line 46
    const-string v3, "The operation completed successfully."

    .line 48
    const-string v4, "Access is denied."

    .line 50
    const-string v5, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    .line 52
    const-string v6, "The pipe state is invalid."

    .line 54
    const-string v7, "All pipe instances are busy."

    .line 56
    const-string v8, "The pipe is being closed."

    .line 58
    const-string v9, "No process is on the other end of the pipe."

    .line 60
    const-string v10, "More data is available."

    .line 62
    const-string v11, "The list of servers for this workgroup is not currently available."

    .line 64
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Ljcifs/smb/WinError;->WINERR_MESSAGES:[Ljava/lang/String;

    .line 70
    return-void
.end method
