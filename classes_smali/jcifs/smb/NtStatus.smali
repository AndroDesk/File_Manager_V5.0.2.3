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

    .line 1
    const/16 v0, 0x3e

    .line 3
    new-array v0, v0, [I

    .line 5
    const/4 v1, 0x1

    .line 6
    const v2, -0x3fffffff  # -2.0000002f

    .line 9
    aput v2, v0, v1

    .line 11
    const/4 v1, 0x2

    .line 12
    const v2, -0x3ffffffe  # -2.0000005f

    .line 15
    aput v2, v0, v1

    .line 17
    const/4 v1, 0x3

    .line 18
    const v2, -0x3ffffffd  # -2.0000007f

    .line 21
    aput v2, v0, v1

    .line 23
    const/4 v1, 0x4

    .line 24
    const v2, -0x3ffffffb  # -2.0000012f

    .line 27
    aput v2, v0, v1

    .line 29
    const/4 v1, 0x5

    .line 30
    const v2, -0x3ffffff8  # -2.000002f

    .line 33
    aput v2, v0, v1

    .line 35
    const/4 v1, 0x6

    .line 36
    const v2, -0x3ffffff3  # -2.000003f

    .line 39
    aput v2, v0, v1

    .line 41
    const/4 v1, 0x7

    .line 42
    const v2, -0x3ffffff2  # -2.0000033f

    .line 45
    aput v2, v0, v1

    .line 47
    const/16 v1, 0x8

    .line 49
    const v2, -0x3ffffff1  # -2.0000036f

    .line 52
    aput v2, v0, v1

    .line 54
    const/16 v1, 0x9

    .line 56
    const v2, -0x3fffffea  # -2.0000052f

    .line 59
    aput v2, v0, v1

    .line 61
    const/16 v1, 0xa

    .line 63
    const v2, -0x3fffffde  # -2.000008f

    .line 66
    aput v2, v0, v1

    .line 68
    const/16 v1, 0xb

    .line 70
    const v2, -0x3fffffdd  # -2.0000083f

    .line 73
    aput v2, v0, v1

    .line 75
    const/16 v1, 0xc

    .line 77
    const v2, -0x3fffffcd  # -2.0000122f

    .line 80
    aput v2, v0, v1

    .line 82
    const/16 v1, 0xd

    .line 84
    const v2, -0x3fffffcc  # -2.0000124f

    .line 87
    aput v2, v0, v1

    .line 89
    const/16 v1, 0xe

    .line 91
    const v2, -0x3fffffcb  # -2.0000126f

    .line 94
    aput v2, v0, v1

    .line 96
    const/16 v1, 0xf

    .line 98
    const v2, -0x3fffffc9  # -2.000013f

    .line 101
    aput v2, v0, v1

    .line 103
    const/16 v1, 0x10

    .line 105
    const v2, -0x3fffffc7  # -2.0000136f

    .line 108
    aput v2, v0, v1

    .line 110
    const/16 v1, 0x11

    .line 112
    const v2, -0x3fffffc6  # -2.0000138f

    .line 115
    aput v2, v0, v1

    .line 117
    const/16 v1, 0x12

    .line 119
    const v2, -0x3fffffc5  # -2.000014f

    .line 122
    aput v2, v0, v1

    .line 124
    const/16 v1, 0x13

    .line 126
    const v2, -0x3fffffbd  # -2.000016f

    .line 129
    aput v2, v0, v1

    .line 131
    const/16 v1, 0x14

    .line 133
    const v2, -0x3fffffaa  # -2.0000205f

    .line 136
    aput v2, v0, v1

    .line 138
    const/16 v1, 0x15

    .line 140
    const v2, -0x3fffffa2  # -2.0000224f

    .line 143
    aput v2, v0, v1

    .line 145
    const/16 v1, 0x16

    .line 147
    const v2, -0x3fffff9d  # -2.0000236f

    .line 150
    aput v2, v0, v1

    .line 152
    const/16 v1, 0x17

    .line 154
    const v2, -0x3fffff9c  # -2.0000238f

    .line 157
    aput v2, v0, v1

    .line 159
    const/16 v1, 0x18

    .line 161
    const v2, -0x3fffff96  # -2.0000253f

    .line 164
    aput v2, v0, v1

    .line 166
    const/16 v1, 0x19

    .line 168
    const v2, -0x3fffff93  # -2.000026f

    .line 171
    aput v2, v0, v1

    .line 173
    const/16 v1, 0x1a

    .line 175
    const v2, -0x3fffff92  # -2.0000262f

    .line 178
    aput v2, v0, v1

    .line 180
    const/16 v1, 0x1b

    .line 182
    const v2, -0x3fffff91  # -2.0000265f

    .line 185
    aput v2, v0, v1

    .line 187
    const/16 v1, 0x1c

    .line 189
    const v2, -0x3fffff90  # -2.0000267f

    .line 192
    aput v2, v0, v1

    .line 194
    const/16 v1, 0x1d

    .line 196
    const v2, -0x3fffff8f  # -2.000027f

    .line 199
    aput v2, v0, v1

    .line 201
    const/16 v1, 0x1e

    .line 203
    const v2, -0x3fffff8e  # -2.0000272f

    .line 206
    aput v2, v0, v1

    .line 208
    const/16 v1, 0x1f

    .line 210
    const v2, -0x3fffff8d  # -2.0000274f

    .line 213
    aput v2, v0, v1

    .line 215
    const/16 v1, 0x20

    .line 217
    const v2, -0x3fffff88  # -2.0000286f

    .line 220
    aput v2, v0, v1

    .line 222
    const/16 v1, 0x21

    .line 224
    const v2, -0x3fffff55  # -2.0000408f

    .line 227
    aput v2, v0, v1

    .line 229
    const/16 v1, 0x22

    .line 231
    const v2, -0x3fffff54  # -2.000041f

    .line 234
    aput v2, v0, v1

    .line 236
    const/16 v1, 0x23

    .line 238
    const v2, -0x3fffff53  # -2.0000412f

    .line 241
    aput v2, v0, v1

    .line 243
    const/16 v1, 0x24

    .line 245
    const v2, -0x3fffff52  # -2.0000415f

    .line 248
    aput v2, v0, v1

    .line 250
    const/16 v1, 0x25

    .line 252
    const v2, -0x3fffff50  # -2.000042f

    .line 255
    aput v2, v0, v1

    .line 257
    const/16 v1, 0x26

    .line 259
    const v2, -0x3fffff4f  # -2.0000422f

    .line 262
    aput v2, v0, v1

    .line 264
    const/16 v1, 0x27

    .line 266
    const v2, -0x3fffff4d  # -2.0000427f

    .line 269
    aput v2, v0, v1

    .line 271
    const/16 v1, 0x28

    .line 273
    const v2, -0x3fffff46  # -2.0000443f

    .line 276
    aput v2, v0, v1

    .line 278
    const/16 v1, 0x29

    .line 280
    const v2, -0x3fffff43  # -2.000045f

    .line 283
    aput v2, v0, v1

    .line 285
    const/16 v1, 0x2a

    .line 287
    const v2, -0x3fffff37  # -2.000048f

    .line 290
    aput v2, v0, v1

    .line 292
    const/16 v1, 0x2b

    .line 294
    const v2, -0x3fffff36  # -2.0000482f

    .line 297
    aput v2, v0, v1

    .line 299
    const/16 v1, 0x2c

    .line 301
    const v2, -0x3fffff34  # -2.0000486f

    .line 304
    aput v2, v0, v1

    .line 306
    const/16 v1, 0x2d

    .line 308
    const v2, -0x3fffff30  # -2.0000496f

    .line 311
    aput v2, v0, v1

    .line 313
    const/16 v1, 0x2e

    .line 315
    const v2, -0x3fffff26  # -2.000052f

    .line 318
    aput v2, v0, v1

    .line 320
    const/16 v1, 0x2f

    .line 322
    const v2, -0x3fffff21  # -2.0000532f

    .line 325
    aput v2, v0, v1

    .line 327
    const/16 v1, 0x30

    .line 329
    const v2, -0x3ffffefd  # -2.0000618f

    .line 332
    aput v2, v0, v1

    .line 334
    const/16 v1, 0x31

    .line 336
    const v2, -0x3ffffedf  # -2.000069f

    .line 339
    aput v2, v0, v1

    .line 341
    const/16 v1, 0x32

    .line 343
    const v2, -0x3ffffede  # -2.0000691f

    .line 346
    aput v2, v0, v1

    .line 348
    const/16 v1, 0x33

    .line 350
    const v2, -0x3ffffeb5  # -2.000079f

    .line 353
    aput v2, v0, v1

    .line 355
    const/16 v1, 0x34

    .line 357
    const v2, -0x3ffffeaf  # -2.0000803f

    .line 360
    aput v2, v0, v1

    .line 362
    const/16 v1, 0x35

    .line 364
    const v2, -0x3ffffea5  # -2.0000827f

    .line 367
    aput v2, v0, v1

    .line 369
    const/16 v1, 0x36

    .line 371
    const v2, -0x3ffffe75  # -2.0000942f

    .line 374
    aput v2, v0, v1

    .line 376
    const/16 v1, 0x37

    .line 378
    const v2, -0x3ffffe74  # -2.0000944f

    .line 381
    aput v2, v0, v1

    .line 383
    const/16 v1, 0x38

    .line 385
    const v2, -0x3ffffe67  # -2.0000975f

    .line 388
    aput v2, v0, v1

    .line 390
    const/16 v1, 0x39

    .line 392
    const v2, -0x3ffffddc  # -2.0001307f

    .line 395
    aput v2, v0, v1

    .line 397
    const/16 v1, 0x3a

    .line 399
    const v2, -0x3ffffddb  # -2.000131f

    .line 402
    aput v2, v0, v1

    .line 404
    const/16 v1, 0x3b

    .line 406
    const v2, -0x3ffffdcc  # -2.0001345f

    .line 409
    aput v2, v0, v1

    .line 411
    const/16 v1, 0x3c

    .line 413
    const v2, -0x3ffffda9  # -2.0001428f

    .line 416
    aput v2, v0, v1

    .line 418
    const/16 v1, 0x3d

    .line 420
    const v2, -0x3ffffd87  # -2.000151f

    .line 423
    aput v2, v0, v1

    .line 425
    sput-object v0, Ljcifs/smb/NtStatus;->NT_STATUS_CODES:[I

    .line 427
    const-string v3, "The operation completed successfully."

    .line 429
    const-string v4, "A device attached to the system is not functioning."

    .line 431
    const-string v5, "Incorrect function."

    .line 433
    const-string v6, "The parameter is incorrect."

    .line 435
    const-string v7, "Invalid access to memory location."

    .line 437
    const-string v8, "The handle is invalid."

    .line 439
    const-string v9, "The parameter is incorrect."

    .line 441
    const-string v10, "The system cannot find the file specified."

    .line 443
    const-string v11, "The system cannot find the file specified."

    .line 445
    const-string v12, "More data is available."

    .line 447
    const-string v13, "Access is denied."

    .line 449
    const-string v14, "The data area passed to a system call is too small."

    .line 451
    const-string v15, "The filename, directory name, or volume label syntax is incorrect."

    .line 453
    const-string v16, "The system cannot find the file specified."

    .line 455
    const-string v17, "Cannot create a file when that file already exists."

    .line 457
    const-string v18, "The handle is invalid."

    .line 459
    const-string v19, "The specified path is invalid."

    .line 461
    const-string v20, "The system cannot find the path specified."

    .line 463
    const-string v21, "The specified path is invalid."

    .line 465
    const-string v22, "The process cannot access the file because it is being used by another process."

    .line 467
    const-string v23, "Access is denied."

    .line 469
    const-string v24, "There are currently no logon servers available to service the logon request."

    .line 471
    const-string v25, "The specified user already exists."

    .line 473
    const-string v26, "The specified user does not exist."

    .line 475
    const-string v27, "The specified network password is not correct."

    .line 477
    const-string v28, "Logon failure: unknown user name or bad password."

    .line 479
    const-string v29, "Logon failure: user account restriction."

    .line 481
    const-string v30, "Logon failure: account logon time restriction violation."

    .line 483
    const-string v31, "Logon failure: user not allowed to log on to this computer."

    .line 485
    const-string v32, "Logon failure: the specified account password has expired."

    .line 487
    const-string v33, "Logon failure: account currently disabled."

    .line 489
    const-string v34, "No mapping between account names and security IDs was done."

    .line 491
    const-string v35, "The security ID structure is invalid."

    .line 493
    const-string v36, "All pipe instances are busy."

    .line 495
    const-string v37, "All pipe instances are busy."

    .line 497
    const-string v38, "The pipe state is invalid."

    .line 499
    const-string v39, "All pipe instances are busy."

    .line 501
    const-string v40, "No process is on the other end of the pipe."

    .line 503
    const-string v41, "The pipe is being closed."

    .line 505
    const-string v42, "Waiting for a process to open the other end of the pipe."

    .line 507
    const-string v43, "Access is denied."

    .line 509
    const-string v44, "A duplicate name exists on the network."

    .line 511
    const-string v45, "The specified network name is no longer available."

    .line 513
    const-string v46, "Network access is denied."

    .line 515
    const-string v47, "The network name cannot be found."

    .line 517
    const-string v48, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    .line 519
    const-string v49, "Indicates a Windows NT Server could not be contacted or that objects within the domain are protected such that necessary information could not be retrieved."

    .line 521
    const-string v50, "The specified domain did not exist."

    .line 523
    const-string v51, "The directory name is invalid."

    .line 525
    const-string v52, "Access is denied."

    .line 527
    const-string v53, "The format of the specified computer name is invalid."

    .line 529
    const-string v54, "The pipe has been ended."

    .line 531
    const-string v55, "The specified local group does not exist."

    .line 533
    const-string v56, "Logon failure: the user has not been granted the requested logon type at this computer."

    .line 535
    const-string v57, "The SAM database on the Windows NT Server does not have a computer account for this workstation trust relationship."

    .line 537
    const-string v58, "The trust relationship between the primary domain and the trusted domain failed."

    .line 539
    const-string v59, "The account used is a Computer Account. Use your global user account or local user account to access this server."

    .line 541
    const-string v60, "The user must change his password before he logs on the first time."

    .line 543
    const-string v61, "NT_STATUS_NOT_FOUND"

    .line 545
    const-string v62, "The referenced account is currently locked out and may not be logged on to."

    .line 547
    const-string v63, "The remote system is not reachable by the transport."

    .line 549
    const-string v64, "NT_STATUS_IO_REPARSE_TAG_NOT_HANDLED"

    .line 551
    filled-new-array/range {v3 .. v64}, [Ljava/lang/String;

    .line 554
    move-result-object v0

    .line 555
    sput-object v0, Ljcifs/smb/NtStatus;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    .line 557
    return-void
.end method
