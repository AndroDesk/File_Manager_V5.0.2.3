.class public interface abstract Ljcifs/smb/DosError;
.super Ljava/lang/Object;
.source "DosError.java"


# static fields
.field public static final DOS_ERROR_CODES:[[I

.field public static final DOS_ERROR_MESSAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 43

    .line 1
    const/16 v0, 0x28

    .line 3
    new-array v0, v0, [[I

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [I

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v0, v3

    .line 11
    new-array v2, v1, [I

    .line 13
    fill-array-data v2, :array_1ba

    .line 16
    const/4 v3, 0x1

    .line 17
    aput-object v2, v0, v3

    .line 19
    new-array v2, v1, [I

    .line 21
    fill-array-data v2, :array_1c2

    .line 24
    aput-object v2, v0, v1

    .line 26
    new-array v2, v1, [I

    .line 28
    fill-array-data v2, :array_1ca

    .line 31
    const/4 v3, 0x3

    .line 32
    aput-object v2, v0, v3

    .line 34
    new-array v2, v1, [I

    .line 36
    fill-array-data v2, :array_1d2

    .line 39
    const/4 v3, 0x4

    .line 40
    aput-object v2, v0, v3

    .line 42
    new-array v2, v1, [I

    .line 44
    fill-array-data v2, :array_1da

    .line 47
    const/4 v3, 0x5

    .line 48
    aput-object v2, v0, v3

    .line 50
    new-array v2, v1, [I

    .line 52
    fill-array-data v2, :array_1e2

    .line 55
    const/4 v3, 0x6

    .line 56
    aput-object v2, v0, v3

    .line 58
    new-array v2, v1, [I

    .line 60
    fill-array-data v2, :array_1ea

    .line 63
    const/4 v3, 0x7

    .line 64
    aput-object v2, v0, v3

    .line 66
    new-array v2, v1, [I

    .line 68
    fill-array-data v2, :array_1f2

    .line 71
    const/16 v3, 0x8

    .line 73
    aput-object v2, v0, v3

    .line 75
    new-array v2, v1, [I

    .line 77
    fill-array-data v2, :array_1fa

    .line 80
    const/16 v3, 0x9

    .line 82
    aput-object v2, v0, v3

    .line 84
    new-array v2, v1, [I

    .line 86
    fill-array-data v2, :array_202

    .line 89
    const/16 v3, 0xa

    .line 91
    aput-object v2, v0, v3

    .line 93
    new-array v2, v1, [I

    .line 95
    fill-array-data v2, :array_20a

    .line 98
    const/16 v3, 0xb

    .line 100
    aput-object v2, v0, v3

    .line 102
    new-array v2, v1, [I

    .line 104
    fill-array-data v2, :array_212

    .line 107
    const/16 v3, 0xc

    .line 109
    aput-object v2, v0, v3

    .line 111
    new-array v2, v1, [I

    .line 113
    fill-array-data v2, :array_21a

    .line 116
    const/16 v3, 0xd

    .line 118
    aput-object v2, v0, v3

    .line 120
    new-array v2, v1, [I

    .line 122
    fill-array-data v2, :array_222

    .line 125
    const/16 v3, 0xe

    .line 127
    aput-object v2, v0, v3

    .line 129
    new-array v2, v1, [I

    .line 131
    fill-array-data v2, :array_22a

    .line 134
    const/16 v3, 0xf

    .line 136
    aput-object v2, v0, v3

    .line 138
    new-array v2, v1, [I

    .line 140
    fill-array-data v2, :array_232

    .line 143
    const/16 v3, 0x10

    .line 145
    aput-object v2, v0, v3

    .line 147
    new-array v2, v1, [I

    .line 149
    fill-array-data v2, :array_23a

    .line 152
    const/16 v3, 0x11

    .line 154
    aput-object v2, v0, v3

    .line 156
    new-array v2, v1, [I

    .line 158
    fill-array-data v2, :array_242

    .line 161
    const/16 v3, 0x12

    .line 163
    aput-object v2, v0, v3

    .line 165
    new-array v2, v1, [I

    .line 167
    fill-array-data v2, :array_24a

    .line 170
    const/16 v3, 0x13

    .line 172
    aput-object v2, v0, v3

    .line 174
    new-array v2, v1, [I

    .line 176
    fill-array-data v2, :array_252

    .line 179
    const/16 v3, 0x14

    .line 181
    aput-object v2, v0, v3

    .line 183
    new-array v2, v1, [I

    .line 185
    fill-array-data v2, :array_25a

    .line 188
    const/16 v3, 0x15

    .line 190
    aput-object v2, v0, v3

    .line 192
    new-array v2, v1, [I

    .line 194
    fill-array-data v2, :array_262

    .line 197
    const/16 v3, 0x16

    .line 199
    aput-object v2, v0, v3

    .line 201
    new-array v2, v1, [I

    .line 203
    fill-array-data v2, :array_26a

    .line 206
    const/16 v3, 0x17

    .line 208
    aput-object v2, v0, v3

    .line 210
    new-array v2, v1, [I

    .line 212
    fill-array-data v2, :array_272

    .line 215
    const/16 v3, 0x18

    .line 217
    aput-object v2, v0, v3

    .line 219
    new-array v2, v1, [I

    .line 221
    fill-array-data v2, :array_27a

    .line 224
    const/16 v3, 0x19

    .line 226
    aput-object v2, v0, v3

    .line 228
    new-array v2, v1, [I

    .line 230
    fill-array-data v2, :array_282

    .line 233
    const/16 v3, 0x1a

    .line 235
    aput-object v2, v0, v3

    .line 237
    new-array v2, v1, [I

    .line 239
    fill-array-data v2, :array_28a

    .line 242
    const/16 v3, 0x1b

    .line 244
    aput-object v2, v0, v3

    .line 246
    new-array v2, v1, [I

    .line 248
    fill-array-data v2, :array_292

    .line 251
    const/16 v3, 0x1c

    .line 253
    aput-object v2, v0, v3

    .line 255
    new-array v2, v1, [I

    .line 257
    fill-array-data v2, :array_29a

    .line 260
    const/16 v3, 0x1d

    .line 262
    aput-object v2, v0, v3

    .line 264
    new-array v2, v1, [I

    .line 266
    fill-array-data v2, :array_2a2

    .line 269
    const/16 v3, 0x1e

    .line 271
    aput-object v2, v0, v3

    .line 273
    new-array v2, v1, [I

    .line 275
    fill-array-data v2, :array_2aa

    .line 278
    const/16 v3, 0x1f

    .line 280
    aput-object v2, v0, v3

    .line 282
    new-array v2, v1, [I

    .line 284
    fill-array-data v2, :array_2b2

    .line 287
    const/16 v3, 0x20

    .line 289
    aput-object v2, v0, v3

    .line 291
    new-array v2, v1, [I

    .line 293
    fill-array-data v2, :array_2ba

    .line 296
    const/16 v3, 0x21

    .line 298
    aput-object v2, v0, v3

    .line 300
    new-array v2, v1, [I

    .line 302
    fill-array-data v2, :array_2c2

    .line 305
    const/16 v3, 0x22

    .line 307
    aput-object v2, v0, v3

    .line 309
    new-array v2, v1, [I

    .line 311
    fill-array-data v2, :array_2ca

    .line 314
    const/16 v3, 0x23

    .line 316
    aput-object v2, v0, v3

    .line 318
    new-array v2, v1, [I

    .line 320
    fill-array-data v2, :array_2d2

    .line 323
    const/16 v3, 0x24

    .line 325
    aput-object v2, v0, v3

    .line 327
    new-array v2, v1, [I

    .line 329
    fill-array-data v2, :array_2da

    .line 332
    const/16 v3, 0x25

    .line 334
    aput-object v2, v0, v3

    .line 336
    new-array v2, v1, [I

    .line 338
    fill-array-data v2, :array_2e2

    .line 341
    const/16 v3, 0x26

    .line 343
    aput-object v2, v0, v3

    .line 345
    new-array v1, v1, [I

    .line 347
    fill-array-data v1, :array_2ea

    .line 350
    const/16 v2, 0x27

    .line 352
    aput-object v1, v0, v2

    .line 354
    sput-object v0, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    .line 356
    const-string v3, "The operation completed successfully."

    .line 358
    const-string v4, "Incorrect function."

    .line 360
    const-string v5, "Incorrect function."

    .line 362
    const-string v6, "The system cannot find the file specified."

    .line 364
    const-string v7, "Bad password."

    .line 366
    const-string v8, "The system cannot find the path specified."

    .line 368
    const-string v9, "reserved"

    .line 370
    const-string v10, "The client does not have the necessary access rights to perform the requested function."

    .line 372
    const-string v11, "Access is denied."

    .line 374
    const-string v12, "The TID specified was invalid."

    .line 376
    const-string v13, "The handle is invalid."

    .line 378
    const-string v14, "The network name cannot be found."

    .line 380
    const-string v15, "Not enough storage is available to process this command."

    .line 382
    const-string v16, "The media is write protected."

    .line 384
    const-string v17, "The device is not ready."

    .line 386
    const-string v18, "A device attached to the system is not functioning."

    .line 388
    const-string v19, "A device attached to the system is not functioning."

    .line 390
    const-string v20, "The process cannot access the file because it is being used by another process."

    .line 392
    const-string v21, "The process cannot access the file because it is being used by another process."

    .line 394
    const-string v22, "The process cannot access the file because another process has locked a portion of the file."

    .line 396
    const-string v23, "The disk is full."

    .line 398
    const-string v24, "A duplicate name exists on the network."

    .line 400
    const-string v25, "The network name cannot be found."

    .line 402
    const-string v26, "ERRnomoreconn."

    .line 404
    const-string v27, "The file exists."

    .line 406
    const-string v28, "The parameter is incorrect."

    .line 408
    const-string v29, "Too many Uids active on this session."

    .line 410
    const-string v30, "The Uid is not known as a valid user identifier on this session."

    .line 412
    const-string v31, "The pipe has been ended."

    .line 414
    const-string v32, "The filename, directory name, or volume label syntax is incorrect."

    .line 416
    const-string v33, "The directory is not empty."

    .line 418
    const-string v34, "Cannot create a file when that file already exists."

    .line 420
    const-string v35, "All pipe instances are busy."

    .line 422
    const-string v36, "The pipe is being closed."

    .line 424
    const-string v37, "No process is on the other end of the pipe."

    .line 426
    const-string v38, "More data is available."

    .line 428
    const-string v39, "This user account has expired."

    .line 430
    const-string v40, "The user is not allowed to log on from this workstation."

    .line 432
    const-string v41, "The user is not allowed to log on at this time."

    .line 434
    const-string v42, "The password of this user has expired."

    .line 436
    filled-new-array/range {v3 .. v42}, [Ljava/lang/String;

    .line 439
    move-result-object v0

    .line 440
    sput-object v0, Ljcifs/smb/DosError;->DOS_ERROR_MESSAGES:[Ljava/lang/String;

    .line 442
    return-void

    .line 443
    :array_1ba
    .array-data 4
        0x10001
        -0x3ffffffe  # -2.0000005f
    .end array-data

    .line 451
    :array_1c2
    .array-data 4
        0x10002
        -0x3ffffffe  # -2.0000005f
    .end array-data

    .line 459
    :array_1ca
    .array-data 4
        0x20001
        -0x3ffffff1  # -2.0000036f
    .end array-data

    .line 467
    :array_1d2
    .array-data 4
        0x20002
        -0x3fffff96  # -2.0000253f
    .end array-data

    .line 475
    :array_1da
    .array-data 4
        0x30001
        -0x3fffffc6  # -2.0000138f
    .end array-data

    .line 483
    :array_1e2
    .array-data 4
        0x30002
        -0x3fffff35  # -2.0000484f
    .end array-data

    .line 491
    :array_1ea
    .array-data 4
        0x40002
        -0x3fffff36  # -2.0000482f
    .end array-data

    .line 499
    :array_1f2
    .array-data 4
        0x50001
        -0x3fffffde  # -2.000008f
    .end array-data

    .line 507
    :array_1fa
    .array-data 4
        0x50002
        -0x3ffffff3  # -2.000003f
    .end array-data

    .line 515
    :array_202
    .array-data 4
        0x60001
        -0x3ffffff8  # -2.000002f
    .end array-data

    .line 523
    :array_20a
    .array-data 4
        0x60002
        -0x3fffff34  # -2.0000486f
    .end array-data

    .line 531
    :array_212
    .array-data 4
        0x80001
        -0x3fffff66  # -2.0000367f
    .end array-data

    .line 539
    :array_21a
    .array-data 4
        0x130003
        -0x3fffff5e  # -2.0000386f
    .end array-data

    .line 547
    :array_222
    .array-data 4
        0x150003
        -0x3fffffed  # -2.0000045f
    .end array-data

    .line 555
    :array_22a
    .array-data 4
        0x1f0001
        -0x3fffffff  # -2.0000002f
    .end array-data

    .line 563
    :array_232
    .array-data 4
        0x1f0003
        -0x3fffffff  # -2.0000002f
    .end array-data

    .line 571
    :array_23a
    .array-data 4
        0x200001
        -0x3fffffbd  # -2.000016f
    .end array-data

    .line 579
    :array_242
    .array-data 4
        0x200003
        -0x3fffffbd  # -2.000016f
    .end array-data

    .line 587
    :array_24a
    .array-data 4
        0x210003
        -0x3fffffac  # -2.00002f
    .end array-data

    .line 595
    :array_252
    .array-data 4
        0x270003
        -0x3fffff81  # -2.0000303f
    .end array-data

    .line 603
    :array_25a
    .array-data 4
        0x340001
        -0x3fffff43  # -2.000045f
    .end array-data

    .line 611
    :array_262
    .array-data 4
        0x430001
        -0x3fffff34  # -2.0000486f
    .end array-data

    .line 619
    :array_26a
    .array-data 4
        0x470001
        -0x3fffff30  # -2.0000496f
    .end array-data

    .line 627
    :array_272
    .array-data 4
        0x500001
        -0x3fffffcb  # -2.0000126f
    .end array-data

    .line 635
    :array_27a
    .array-data 4
        0x570001
        -0x3ffffffd  # -2.0000007f
    .end array-data

    .line 643
    :array_282
    .array-data 4
        0x5a0002
        -0x3fffff32  # -2.000049f
    .end array-data

    .line 651
    :array_28a
    .array-data 4
        0x5b0002
        -0x3ffffff3  # -2.000003f
    .end array-data

    .line 659
    :array_292
    .array-data 4
        0x6d0001
        -0x3ffffeb5  # -2.000079f
    .end array-data

    .line 667
    :array_29a
    .array-data 4
        0x7b0001
        -0x3fffffcd  # -2.0000122f
    .end array-data

    .line 675
    :array_2a2
    .array-data 4
        0x910001
        -0x3ffffeff  # -2.0000613f
    .end array-data

    .line 683
    :array_2aa
    .array-data 4
        0xb70001
        -0x3fffffcb  # -2.0000126f
    .end array-data

    .line 691
    :array_2b2
    .array-data 4
        0xe70001
        -0x3fffff55  # -2.0000408f
    .end array-data

    .line 699
    :array_2ba
    .array-data 4
        0xe80001
        -0x3fffff4f  # -2.0000422f
    .end array-data

    .line 707
    :array_2c2
    .array-data 4
        0xe90001
        -0x3fffff50  # -2.000042f
    .end array-data

    .line 715
    :array_2ca
    .array-data 4
        0xea0001
        -0x3fffffea  # -2.0000052f
    .end array-data

    .line 723
    :array_2d2
    .array-data 4
        0x8bf0002
        -0x3ffffe6d  # -2.000096f
    .end array-data

    .line 731
    :array_2da
    .array-data 4
        0x8c00002
        -0x3fffff90  # -2.0000267f
    .end array-data

    .line 739
    :array_2e2
    .array-data 4
        0x8c10002
        -0x3fffff91  # -2.0000265f
    .end array-data

    .line 747
    :array_2ea
    .array-data 4
        0x8c20002
        -0x3fffff8f  # -2.000027f
    .end array-data
.end method
