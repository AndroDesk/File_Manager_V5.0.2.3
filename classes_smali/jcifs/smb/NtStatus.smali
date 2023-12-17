.class public interface abstract Ljcifs/smb/NtStatus;
.super Ljava/lang/Object;
.source "NtStatus.java"


# static fields
.field public static final NT_STATUS_ACCESS_DENIED:I = -0x3fffffde

.field public static final NT_STATUS_ACCESS_VIOLATION:I = -0x3ffffffb

.field public static final NT_STATUS_ACCOUNT_DISABLED:I = -0x3fffff8e

.field public static final NT_STATUS_ACCOUNT_LOCKED_OUT:I = -0x3ffffdcc

.field public static final NT_STATUS_ACCOUNT_RESTRICTION:I = -0x3fffff92

.field public static final NT_STATUS_BAD_NETWORK_NAME:I = -0x3fffff34

.field public static final NT_STATUS_BUFFER_TOO_SMALL:I = -0x3fffffdd

.field public static final NT_STATUS_CANNOT_DELETE:I = -0x3ffffedf

.field public static final NT_STATUS_CANT_ACCESS_DOMAIN_INFO:I = -0x3fffff26

.field public static final NT_STATUS_CODES:[I

.field public static final NT_STATUS_DELETE_PENDING:I = -0x3fffffaa

.field public static final NT_STATUS_DUPLICATE_NAME:I = -0x3fffff43

.field public static final NT_STATUS_FILE_IS_A_DIRECTORY:I = -0x3fffff46

.field public static final NT_STATUS_INSTANCE_NOT_AVAILABLE:I = -0x3fffff55

.field public static final NT_STATUS_INVALID_COMPUTER_NAME:I = -0x3ffffede

.field public static final NT_STATUS_INVALID_HANDLE:I = -0x3ffffff8

.field public static final NT_STATUS_INVALID_INFO_CLASS:I = -0x3ffffffd

.field public static final NT_STATUS_INVALID_LOGON_HOURS:I = -0x3fffff91

.field public static final NT_STATUS_INVALID_PARAMETER:I = -0x3ffffff3

.field public static final NT_STATUS_INVALID_PIPE_STATE:I = -0x3fffff53

.field public static final NT_STATUS_INVALID_SID:I = -0x3fffff88

.field public static final NT_STATUS_INVALID_WORKSTATION:I = -0x3fffff90

.field public static final NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED:I = -0x3ffffd87

.field public static final NT_STATUS_LOGON_FAILURE:I = -0x3fffff93

.field public static final NT_STATUS_LOGON_TYPE_NOT_GRANTED:I = -0x3ffffea5

.field public static final NT_STATUS_MESSAGES:[Ljava/lang/String;

.field public static final NT_STATUS_MORE_PROCESSING_REQUIRED:I = -0x3fffffea

.field public static final NT_STATUS_NETWORK_ACCESS_DENIED:I = -0x3fffff36

.field public static final NT_STATUS_NETWORK_NAME_DELETED:I = -0x3fffff37

.field public static final NT_STATUS_NOLOGON_WORKSTATION_TRUST_ACCOUNT:I = -0x3ffffe67

.field public static final NT_STATUS_NONE_MAPPED:I = -0x3fffff8d

.field public static final NT_STATUS_NOT_A_DIRECTORY:I = -0x3ffffefd

.field public static final NT_STATUS_NOT_FOUND:I = -0x3ffffddb

.field public static final NT_STATUS_NOT_IMPLEMENTED:I = -0x3ffffffe

.field public static final NT_STATUS_NO_LOGON_SERVERS:I = -0x3fffffa2

.field public static final NT_STATUS_NO_SUCH_ALIAS:I = -0x3ffffeaf

.field public static final NT_STATUS_NO_SUCH_DEVICE:I = -0x3ffffff2

.field public static final NT_STATUS_NO_SUCH_DOMAIN:I = -0x3fffff21

.field public static final NT_STATUS_NO_SUCH_FILE:I = -0x3ffffff1

.field public static final NT_STATUS_NO_SUCH_USER:I = -0x3fffff9c

.field public static final NT_STATUS_NO_TRUST_SAM_ACCOUNT:I = -0x3ffffe75

.field public static final NT_STATUS_OBJECT_NAME_COLLISION:I = -0x3fffffcb

.field public static final NT_STATUS_OBJECT_NAME_INVALID:I = -0x3fffffcd

.field public static final NT_STATUS_OBJECT_NAME_NOT_FOUND:I = -0x3fffffcc

.field public static final NT_STATUS_OBJECT_PATH_INVALID:I = -0x3fffffc7

.field public static final NT_STATUS_OBJECT_PATH_NOT_FOUND:I = -0x3fffffc6

.field public static final NT_STATUS_OBJECT_PATH_SYNTAX_BAD:I = -0x3fffffc5

.field public static final NT_STATUS_OK:I = 0x0

.field public static final NT_STATUS_PASSWORD_EXPIRED:I = -0x3fffff8f

.field public static final NT_STATUS_PASSWORD_MUST_CHANGE:I = -0x3ffffddc

.field public static final NT_STATUS_PATH_NOT_COVERED:I = -0x3ffffda9

.field public static final NT_STATUS_PIPE_BROKEN:I = -0x3ffffeb5

.field public static final NT_STATUS_PIPE_BUSY:I = -0x3fffff52

.field public static final NT_STATUS_PIPE_CLOSING:I = -0x3fffff4f

.field public static final NT_STATUS_PIPE_DISCONNECTED:I = -0x3fffff50

.field public static final NT_STATUS_PIPE_LISTENING:I = -0x3fffff4d

.field public static final NT_STATUS_PIPE_NOT_AVAILABLE:I = -0x3fffff54

.field public static final NT_STATUS_PORT_DISCONNECTED:I = -0x3fffffc9

.field public static final NT_STATUS_REQUEST_NOT_ACCEPTED:I = -0x3fffff30

.field public static final NT_STATUS_SHARING_VIOLATION:I = -0x3fffffbd

.field public static final NT_STATUS_TRUSTED_DOMAIN_FAILURE:I = -0x3ffffe74

.field public static final NT_STATUS_UNSUCCESSFUL:I = -0x3fffffff

.field public static final NT_STATUS_USER_EXISTS:I = -0x3fffff9d

.field public static final NT_STATUS_WRONG_PASSWORD:I = -0x3fffff96


# direct methods
.method static constructor <clinit>()V
    .registers 65

    const/16 v0, 0x3e

    new-array v0, v0, [I

    const/4 v1, 0x1

    const v2, -0x3fffffff  # -2.0000002f

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x3ffffffe  # -2.0000005f

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, -0x3ffffffd  # -2.0000007f

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, -0x3ffffffb  # -2.0000012f

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0x3ffffff8  # -2.000002f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x3ffffff3  # -2.000003f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x3ffffff2  # -2.0000033f

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x3ffffff1  # -2.0000036f

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x3fffffea  # -2.0000052f

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x3fffffde  # -2.000008f

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x3fffffdd  # -2.0000083f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x3fffffcd  # -2.0000122f

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x3fffffcc  # -2.0000124f

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x3fffffcb  # -2.0000126f

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x3fffffc9  # -2.000013f

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x3fffffc7  # -2.0000136f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x3fffffc6  # -2.0000138f

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x3fffffc5  # -2.000014f

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x3fffffbd  # -2.000016f

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x3fffffaa  # -2.0000205f

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x3fffffa2  # -2.0000224f

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x3fffff9d  # -2.0000236f

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x3fffff9c  # -2.0000238f

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, -0x3fffff96  # -2.0000253f

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x3fffff93  # -2.000026f

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x3fffff92  # -2.0000262f

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x3fffff91  # -2.0000265f

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x3fffff90  # -2.0000267f

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x3fffff8f  # -2.000027f

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, -0x3fffff8e  # -2.0000272f

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, -0x3fffff8d  # -2.0000274f

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x3fffff88  # -2.0000286f

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, -0x3fffff55  # -2.0000408f

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x3fffff54  # -2.000041f

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x3fffff53  # -2.0000412f

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x3fffff52  # -2.0000415f

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x3fffff50  # -2.000042f

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x3fffff4f  # -2.0000422f

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x3fffff4d  # -2.0000427f

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x3fffff46  # -2.0000443f

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x3fffff43  # -2.000045f

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, -0x3fffff37  # -2.000048f

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x3fffff36  # -2.0000482f

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x3fffff34  # -2.0000486f

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x3fffff30  # -2.0000496f

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x3fffff26  # -2.000052f

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x3fffff21  # -2.0000532f

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, -0x3ffffefd  # -2.0000618f

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x3ffffedf  # -2.000069f

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x3ffffede  # -2.0000691f

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x3ffffeb5  # -2.000079f

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x3ffffeaf  # -2.0000803f

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x3ffffea5  # -2.0000827f

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x3ffffe75  # -2.0000942f

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x3ffffe74  # -2.0000944f

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x3ffffe67  # -2.0000975f

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x3ffffddc  # -2.0001307f

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x3ffffddb  # -2.000131f

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x3ffffdcc  # -2.0001345f

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, -0x3ffffda9  # -2.0001428f

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x3ffffd87  # -2.000151f

    aput v2, v0, v1

    sput-object v0, Ljcifs/smb/NtStatus;->NT_STATUS_CODES:[I

    const-string v3, "The operation completed successfully."

    const-string v4, "A device attached to the system is not functioning."

    const-string v5, "Incorrect function."

    const-string v6, "The parameter is incorrect."

    const-string v7, "Invalid access to memory location."

    const-string v8, "The handle is invalid."

    const-string v9, "The parameter is incorrect."

    const-string v10, "The system cannot find the file specified."

    const-string v11, "The system cannot find the file specified."

    const-string v12, "More data is available."

    const-string v13, "Access is denied."

    const-string v14, "The data area passed to a system call is too small."

    const-string v15, "The filename, directory name, or volume label syntax is incorrect."

    const-string v16, "The system cannot find the file specified."

    const-string v17, "Cannot create a file when that file already exists."

    const-string v18, "The handle is invalid."

    const-string v19, "The specified path is invalid."

    const-string v20, "The system cannot find the path specified."

    const-string v21, "The specified path is invalid."

    const-string v22, "The process cannot access the file because it is being used by another process."

    const-string v23, "Access is denied."

    const-string v24, "There are currently no logon servers available to service the logon request."

    const-string v25, "The specified user already exists."

    const-string v26, "The specified user does not exist."

    const-string v27, "The specified network password is not correct."

    const-string v28, "Logon failure: unknown user name or bad password."

    const-string v29, "Logon failure: user account restriction."

    const-string v30, "Logon failure: account logon time restriction violation."

    const-string v31, "Logon failure: user not allowed to log on to this computer."

    const-string v32, "Logon failure: the specified account password has expired."

    const-string v33, "Logon failure: account currently disabled."

    const-string v34, "No mapping between account names and security IDs was done."

    const-string v35, "The security ID structure is invalid."

    const-string v36, "All pipe instances are busy."

    const-string v37, "All pipe instances are busy."

    const-string v38, "The pipe state is invalid."

    const-string v39, "All pipe instances are busy."

    const-string v40, "No process is on the other end of the pipe."

    const-string v41, "The pipe is being closed."

    const-string v42, "Waiting for a process to open the other end of the pipe."

    const-string v43, "Access is denied."

    const-string v44, "A duplicate name exists on the network."

    const-string v45, "The specified network name is no longer available."

    const-string v46, "Network access is denied."

    const-string v47, "The network name cannot be found."

    const-string v48, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    const-string v49, "Indicates a Windows NT Server could not be contacted or that objects within the domain are protected such that necessary information could not be retrieved."

    const-string v50, "The specified domain did not exist."

    const-string v51, "The directory name is invalid."

    const-string v52, "Access is denied."

    const-string v53, "The format of the specified computer name is invalid."

    const-string v54, "The pipe has been ended."

    const-string v55, "The specified local group does not exist."

    const-string v56, "Logon failure: the user has not been granted the requested logon type at this computer."

    const-string v57, "The SAM database on the Windows NT Server does not have a computer account for this workstation trust relationship."

    const-string v58, "The trust relationship between the primary domain and the trusted domain failed."

    const-string v59, "The account used is a Computer Account. Use your global user account or local user account to access this server."

    const-string v60, "The user must change his password before he logs on the first time."

    const-string v61, "NT_STATUS_NOT_FOUND"

    const-string v62, "The referenced account is currently locked out and may not be logged on to."

    const-string v63, "The remote system is not reachable by the transport."

    const-string v64, "NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED"

    filled-new-array/range {v3 .. v64}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtStatus;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    return-void
.end method
