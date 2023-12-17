.class public final Ll1/a;
.super Ljava/lang/Object;
.source "ServerMsgMap.java"


# static fields
.field public static a:Ls1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/n<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Ls1/n;

    .line 3
    invoke-direct {v0}, Ls1/n;-><init>()V

    .line 6
    sput-object v0, Ll1/a;->a:Ls1/n;

    .line 8
    const/16 v0, 0xca

    .line 10
    const v1, 0x35c29

    .line 13
    const-string v2, "badEmailFormat"

    .line 15
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 18
    const v1, 0x35c2a

    .line 21
    const-string v2, "sameEmailRegisteredBefore"

    .line 23
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 26
    const v1, 0x35c2b

    .line 29
    const-string v2, "login fail"

    .line 31
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 34
    const v1, 0x35c2c

    .line 37
    const-string v2, "bad openid"

    .line 39
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 42
    const v1, 0x35c2d

    .line 45
    const-string v2, "wrong verification code"

    .line 47
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 50
    const v1, 0x35c2e

    .line 53
    const-string v2, "cannot create app folder"

    .line 55
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 58
    const v1, 0x35c37

    .line 61
    const-string v2, "pickupCodeNotSupport"

    .line 63
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 66
    const v1, 0x35c38

    .line 69
    const-string v2, "pickupCodeTooLong"

    .line 71
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 74
    const v1, 0x35c2f

    .line 77
    const-string v2, "file exist"

    .line 79
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 82
    const v1, 0x35c30

    .line 85
    const-string v3, "file not exist"

    .line 87
    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    .line 90
    const v1, 0x35c31

    .line 93
    const-string v4, "tooManyFiles"

    .line 95
    invoke-static {v0, v1, v4}, Ll1/a;->a(IILjava/lang/String;)V

    .line 98
    const v1, 0x35c32

    .line 101
    const-string v4, "file too large"

    .line 103
    invoke-static {v0, v1, v4}, Ll1/a;->a(IILjava/lang/String;)V

    .line 106
    const v1, 0x35c33

    .line 109
    const-string v5, "over space"

    .line 111
    invoke-static {v0, v1, v5}, Ll1/a;->a(IILjava/lang/String;)V

    .line 114
    const v1, 0x35c3b

    .line 117
    const-string v6, "fnameTooLong"

    .line 119
    invoke-static {v0, v1, v6}, Ll1/a;->a(IILjava/lang/String;)V

    .line 122
    const v1, 0x35c34

    .line 125
    const-string v6, "commit fail"

    .line 127
    invoke-static {v0, v1, v6}, Ll1/a;->a(IILjava/lang/String;)V

    .line 130
    const v1, 0x35c35

    .line 133
    const-string v7, "forbidden"

    .line 135
    invoke-static {v0, v1, v7}, Ll1/a;->a(IILjava/lang/String;)V

    .line 138
    const v1, 0x35c36

    .line 141
    const-string v8, "account server error"

    .line 143
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 146
    const v1, 0x35c39

    .line 149
    const-string v8, "shared"

    .line 151
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 154
    const v1, 0x35c3a

    .line 157
    const-string v8, "cannotBind"

    .line 159
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 162
    const/16 v0, 0x190

    .line 164
    const v1, 0x3a981

    .line 167
    const-string v8, "bad parameters"

    .line 169
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 172
    const v8, 0x3a982

    .line 175
    const-string v9, "bad request"

    .line 177
    invoke-static {v0, v8, v9}, Ll1/a;->a(IILjava/lang/String;)V

    .line 180
    const v8, 0x3a983

    .line 183
    const-string v9, "no such api implemented"

    .line 185
    invoke-static {v0, v8, v9}, Ll1/a;->a(IILjava/lang/String;)V

    .line 188
    const-string v8, "clientBadParams"

    .line 190
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 193
    const v1, 0x3a984

    .line 196
    const-string v8, "serverError"

    .line 198
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 201
    const v1, 0x3a985

    .line 204
    const-string v8, "accountServerError"

    .line 206
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 209
    const v1, 0x3a986

    .line 212
    const-string v8, "unknownError"

    .line 214
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 217
    const v1, 0x3a987

    .line 220
    const-string v8, "requestFail"

    .line 222
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 225
    const v1, 0x3a988

    .line 228
    const-string v8, "mobileExists"

    .line 230
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 233
    const v1, 0x3a989

    .line 236
    const-string v8, "sendMsgError"

    .line 238
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 241
    const v1, 0x3a98a

    .line 244
    const-string v8, "tooManyRequests"

    .line 246
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 249
    const v1, 0x3a98b

    .line 252
    const-string v8, "tooOften"

    .line 254
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 257
    const v1, 0x3a98c

    .line 260
    const-string v8, "invalidCode"

    .line 262
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 265
    const v1, 0x3a98d

    .line 268
    const-string v8, "invalidMobile"

    .line 270
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 273
    const v1, 0x3a98e

    .line 276
    const-string v8, "emptyPassword"

    .line 278
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 281
    const v8, 0x3a98f

    .line 284
    const-string v9, "passwordTooLong"

    .line 286
    invoke-static {v0, v8, v9}, Ll1/a;->a(IILjava/lang/String;)V

    .line 289
    const v8, 0x3a990

    .line 292
    const-string v9, "noSuchUser"

    .line 294
    invoke-static {v0, v8, v9}, Ll1/a;->a(IILjava/lang/String;)V

    .line 297
    const-string v8, "needPassword"

    .line 299
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 302
    const v1, 0x3a991

    .line 305
    const-string v8, "canNotSetPassword"

    .line 307
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 310
    const v1, 0x3a992

    .line 313
    const-string v8, "verifyNotRequest"

    .line 315
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 318
    const v1, 0x3a994

    .line 321
    const-string v8, "expiredCode"

    .line 323
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 326
    const v1, 0x3a993

    .line 329
    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    .line 332
    const/16 v0, 0x191

    .line 334
    const v1, 0x3a9e5

    .line 337
    const-string v8, "bad signature"

    .line 339
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 342
    const v1, 0x3a9e6

    .line 345
    const-string v8, "reused nonce"

    .line 347
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 350
    const v1, 0x3a9e7

    .line 353
    const-string v8, "bad consumer key"

    .line 355
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 358
    const v1, 0x3a9e8

    .line 361
    const-string v8, "request expired"

    .line 363
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 366
    const v1, 0x3a9e9

    .line 369
    const-string v8, "not supported auth mode"

    .line 371
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 374
    const v1, 0x3a9ea

    .line 377
    const-string v8, "authorization expired"

    .line 379
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 382
    const v1, 0x3a9eb

    .line 385
    const-string v8, "api daily limit"

    .line 387
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 390
    const v1, 0x3a9ec

    .line 393
    const-string v8, "no right to call this api"

    .line 395
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 398
    const v1, 0x3a9ed

    .line 401
    const-string v8, "bad verifier"

    .line 403
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 406
    const v1, 0x3a9ee

    .line 409
    const-string v8, "authorization failed"

    .line 411
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 414
    const v1, 0x3a9ef

    .line 417
    const-string v8, "invalid token"

    .line 419
    invoke-static {v0, v1, v8}, Ll1/a;->a(IILjava/lang/String;)V

    .line 422
    const/16 v0, 0x193

    .line 424
    const v1, 0x3aaad

    .line 427
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 430
    const v1, 0x3aaae

    .line 433
    invoke-static {v0, v1, v7}, Ll1/a;->a(IILjava/lang/String;)V

    .line 436
    const/16 v0, 0x194

    .line 438
    const v1, 0x3ab11

    .line 441
    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    .line 444
    const/16 v0, 0x196

    .line 446
    const v1, 0x3abd9

    .line 449
    const-string v3, "too many files"

    .line 451
    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    .line 454
    const/16 v0, 0x19d

    .line 456
    const v1, 0x3ae95

    .line 459
    invoke-static {v0, v1, v4}, Ll1/a;->a(IILjava/lang/String;)V

    .line 462
    const/16 v0, 0x1f4

    .line 464
    const v1, 0x3d091

    .line 467
    const-string v3, "server error"

    .line 469
    invoke-static {v0, v1, v3}, Ll1/a;->a(IILjava/lang/String;)V

    .line 472
    const/16 v0, 0x1fb

    .line 474
    const v1, 0x3d34d

    .line 477
    invoke-static {v0, v1, v5}, Ll1/a;->a(IILjava/lang/String;)V

    .line 480
    const/16 v0, 0xc8

    .line 482
    const v1, 0x35b61

    .line 485
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 488
    const v1, 0x35b68

    .line 491
    invoke-static {v0, v1, v6}, Ll1/a;->a(IILjava/lang/String;)V

    .line 494
    const v1, 0x35b92

    .line 497
    const-string v2, "ERR_BAD_PARAMS"

    .line 499
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 502
    const v1, 0x35b93

    .line 505
    const-string v2, "ERR_SERVER_EXCEPTION"

    .line 507
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 510
    const v1, 0x35b94

    .line 513
    const-string v2, "ERR_INVALID_CUSTOMERID"

    .line 515
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 518
    const v1, 0x35b95

    .line 521
    const-string v2, "ERR_INVALID_STOID"

    .line 523
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 526
    const v1, 0x35b96

    .line 529
    const-string v2, "ERR_STORAGE_REQUEST_ERROR"

    .line 531
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 534
    const v1, 0x35b97

    .line 537
    const-string v2, "ERR_STORAGE_REQUEST_FAILED"

    .line 539
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 542
    const v1, 0x35b98

    .line 545
    const-string v2, "ERR_CHUNK_OUT_OF_RANGE"

    .line 547
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 550
    const v1, 0x35b99

    .line 553
    const-string v2, "ERR_INVALID_UPLOAD_ID"

    .line 555
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 558
    const v1, 0x35b9a

    .line 561
    const-string v2, "ERR_INVALID_CHUNK_POS"

    .line 563
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 566
    const v1, 0x35b9b

    .line 569
    const-string v2, "ERR_INVALID_CHUNK_SIZE"

    .line 571
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 574
    const v1, 0x35b9c

    .line 577
    const-string v2, "ERR_CHUNK_CORRUPTED"

    .line 579
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 582
    const v1, 0x35b9d

    .line 585
    const-string v2, "ERR_BLOCK_CORRUPTED"

    .line 587
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 590
    const v1, 0x35b9e

    .line 593
    const-string v2, "ERR_TOO_MANY_CURRENT_BLOCKS"

    .line 595
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 598
    const v1, 0x35b9f

    .line 601
    const-string v2, "ERR_STORAGE_COMMIT_ERROR"

    .line 603
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 606
    const v1, 0x35b69

    .line 609
    invoke-static {v0, v1, v7}, Ll1/a;->a(IILjava/lang/String;)V

    .line 612
    const v1, 0x35b6a

    .line 615
    invoke-static {v0, v1, v5}, Ll1/a;->a(IILjava/lang/String;)V

    .line 618
    const v1, 0x35b6b

    .line 621
    const-string v2, "targetNotExist"

    .line 623
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 626
    const v1, 0x35b6c

    .line 629
    const-string v2, "get stub fail"

    .line 631
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 634
    const v1, 0x35b6d

    .line 637
    const-string v2, "unsupportedCharRange"

    .line 639
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 642
    const v1, 0x35b6e

    .line 645
    const-string v2, "dataOperationFailed"

    .line 647
    invoke-static {v0, v1, v2}, Ll1/a;->a(IILjava/lang/String;)V

    .line 650
    const v1, 0x35b6f

    .line 653
    invoke-static {v0, v1, v4}, Ll1/a;->a(IILjava/lang/String;)V

    .line 656
    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Ll1/a;->a:Ls1/n;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p0, p2, p1}, Ls1/n;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    return-void
.end method
