.class abstract Lorg/swiftp/FtpCmd;
.super Ljava/lang/Object;
.source "FtpCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public sessionThread:Lorg/swiftp/SessionThread;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/FtpCmd;

    .line 3
    const-string v0, "FtpCmd"

    .line 5
    sput-object v0, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 6
    return-void
.end method

.method public static dispatchCommand(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, " "

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    const-string v3, "502 Command not recognized\r\n"

    .line 11
    if-ge v1, v2, :cond_17

    .line 13
    sget-object p1, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    .line 15
    const-string v0, "No strings parsed"

    .line 17
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v3}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    :cond_17
    const/4 v1, 0x0

    .line 25
    aget-object v0, v0, v1

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    move-result v1

    .line 31
    if-ge v1, v2, :cond_2b

    .line 33
    sget-object p1, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "Invalid command verb"

    .line 37
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v3}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, p0, p1}, Lorg/swiftp/FtpCmd;->getCmd(Ljava/lang/String;Lorg/swiftp/SessionThread;Ljava/lang/String;)Lorg/swiftp/FtpCmd;

    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_53

    .line 58
    sget-object p1, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v2, "Ignoring unrecognized FTP verb: "

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v3}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 83
    goto :goto_87

    .line 84
    :cond_53
    invoke-virtual {p0}, Lorg/swiftp/SessionThread;->isAuthenticated()Z

    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_84

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    move-result-object v0

    .line 94
    const-class v1, Lorg/swiftp/CmdUSER;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_84

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    move-result-object v0

    .line 106
    const-class v1, Lorg/swiftp/CmdPASS;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_84

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    move-result-object v0

    .line 118
    const-class v1, Lorg/swiftp/CmdUSER;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_7e

    .line 126
    goto :goto_84

    .line 127
    :cond_7e
    const-string p1, "530 Login first with USER and PASS\r\n"

    .line 129
    invoke-virtual {p0, p1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 132
    goto :goto_87

    .line 133
    :cond_84
    :goto_84
    invoke-virtual {p1}, Lorg/swiftp/FtpCmd;->run()V

    .line 136
    :goto_87
    return-void
.end method

.method private static getCmd(Ljava/lang/String;Lorg/swiftp/SessionThread;Ljava/lang/String;)Lorg/swiftp/FtpCmd;
    .registers 4

    .line 1
    const-string v0, "SYST"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    new-instance p0, Lorg/swiftp/CmdSYST;

    .line 11
    invoke-direct {p0, p1}, Lorg/swiftp/CmdSYST;-><init>(Lorg/swiftp/SessionThread;)V

    .line 14
    return-object p0

    .line 15
    :cond_e
    const-string v0, "USER"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1c

    .line 23
    new-instance p0, Lorg/swiftp/CmdUSER;

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdUSER;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 28
    return-object p0

    .line 29
    :cond_1c
    const-string v0, "PASS"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2a

    .line 37
    new-instance p0, Lorg/swiftp/CmdPASS;

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdPASS;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 42
    return-object p0

    .line 43
    :cond_2a
    const-string v0, "TYPE"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_38

    .line 51
    new-instance p0, Lorg/swiftp/CmdTYPE;

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdTYPE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 56
    return-object p0

    .line 57
    :cond_38
    const-string v0, "CWD"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_46

    .line 65
    new-instance p0, Lorg/swiftp/CmdCWD;

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdCWD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 70
    return-object p0

    .line 71
    :cond_46
    const-string v0, "PWD"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_54

    .line 79
    new-instance p0, Lorg/swiftp/CmdPWD;

    .line 81
    invoke-direct {p0, p1}, Lorg/swiftp/CmdPWD;-><init>(Lorg/swiftp/SessionThread;)V

    .line 84
    return-object p0

    .line 85
    :cond_54
    const-string v0, "LIST"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_62

    .line 93
    new-instance p0, Lorg/swiftp/CmdLIST;

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdLIST;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 98
    return-object p0

    .line 99
    :cond_62
    const-string v0, "PASV"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_70

    .line 107
    new-instance p0, Lorg/swiftp/CmdPASV;

    .line 109
    invoke-direct {p0, p1}, Lorg/swiftp/CmdPASV;-><init>(Lorg/swiftp/SessionThread;)V

    .line 112
    return-object p0

    .line 113
    :cond_70
    const-string v0, "RETR"

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7e

    .line 121
    new-instance p0, Lorg/swiftp/CmdRETR;

    .line 123
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRETR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 126
    return-object p0

    .line 127
    :cond_7e
    const-string v0, "NLST"

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_8c

    .line 135
    new-instance p0, Lorg/swiftp/CmdNLST;

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdNLST;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 140
    return-object p0

    .line 141
    :cond_8c
    const-string v0, "NOOP"

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_9a

    .line 149
    new-instance p0, Lorg/swiftp/CmdNOOP;

    .line 151
    invoke-direct {p0, p1}, Lorg/swiftp/CmdNOOP;-><init>(Lorg/swiftp/SessionThread;)V

    .line 154
    return-object p0

    .line 155
    :cond_9a
    const-string v0, "STOR"

    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_a8

    .line 163
    new-instance p0, Lorg/swiftp/CmdSTOR;

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdSTOR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 168
    return-object p0

    .line 169
    :cond_a8
    const-string v0, "DELE"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_b6

    .line 177
    new-instance p0, Lorg/swiftp/CmdDELE;

    .line 179
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdDELE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 182
    return-object p0

    .line 183
    :cond_b6
    const-string v0, "RNFR"

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_c4

    .line 191
    new-instance p0, Lorg/swiftp/CmdRNFR;

    .line 193
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRNFR;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 196
    return-object p0

    .line 197
    :cond_c4
    const-string v0, "RNTO"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_d2

    .line 205
    new-instance p0, Lorg/swiftp/CmdRNTO;

    .line 207
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRNTO;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 210
    return-object p0

    .line 211
    :cond_d2
    const-string v0, "RMD"

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_e0

    .line 219
    new-instance p0, Lorg/swiftp/CmdRMD;

    .line 221
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRMD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 224
    return-object p0

    .line 225
    :cond_e0
    const-string v0, "MKD"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_ee

    .line 233
    new-instance p0, Lorg/swiftp/CmdMKD;

    .line 235
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdMKD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 238
    return-object p0

    .line 239
    :cond_ee
    const-string v0, "OPTS"

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_fc

    .line 247
    new-instance p0, Lorg/swiftp/CmdOPTS;

    .line 249
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdOPTS;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 252
    return-object p0

    .line 253
    :cond_fc
    const-string v0, "PORT"

    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_10a

    .line 261
    new-instance p0, Lorg/swiftp/CmdPORT;

    .line 263
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdPORT;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 266
    return-object p0

    .line 267
    :cond_10a
    const-string v0, "QUIT"

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_118

    .line 275
    new-instance p0, Lorg/swiftp/CmdQUIT;

    .line 277
    invoke-direct {p0, p1}, Lorg/swiftp/CmdQUIT;-><init>(Lorg/swiftp/SessionThread;)V

    .line 280
    return-object p0

    .line 281
    :cond_118
    const-string v0, "FEAT"

    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_126

    .line 289
    new-instance p0, Lorg/swiftp/CmdFEAT;

    .line 291
    invoke-direct {p0, p1}, Lorg/swiftp/CmdFEAT;-><init>(Lorg/swiftp/SessionThread;)V

    .line 294
    return-object p0

    .line 295
    :cond_126
    const-string v0, "SIZE"

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_134

    .line 303
    new-instance p0, Lorg/swiftp/CmdSIZE;

    .line 305
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdSIZE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 308
    return-object p0

    .line 309
    :cond_134
    const-string v0, "CDUP"

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_142

    .line 317
    new-instance p0, Lorg/swiftp/CmdCDUP;

    .line 319
    invoke-direct {p0, p1}, Lorg/swiftp/CmdCDUP;-><init>(Lorg/swiftp/SessionThread;)V

    .line 322
    return-object p0

    .line 323
    :cond_142
    const-string v0, "APPE"

    .line 325
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_150

    .line 331
    new-instance p0, Lorg/swiftp/CmdAPPE;

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdAPPE;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 336
    return-object p0

    .line 337
    :cond_150
    const-string v0, "XCUP"

    .line 339
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_15e

    .line 345
    new-instance p0, Lorg/swiftp/CmdCDUP;

    .line 347
    invoke-direct {p0, p1}, Lorg/swiftp/CmdCDUP;-><init>(Lorg/swiftp/SessionThread;)V

    .line 350
    return-object p0

    .line 351
    :cond_15e
    const-string v0, "XPWD"

    .line 353
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_16c

    .line 359
    new-instance p0, Lorg/swiftp/CmdPWD;

    .line 361
    invoke-direct {p0, p1}, Lorg/swiftp/CmdPWD;-><init>(Lorg/swiftp/SessionThread;)V

    .line 364
    return-object p0

    .line 365
    :cond_16c
    const-string v0, "XMKD"

    .line 367
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_17a

    .line 373
    new-instance p0, Lorg/swiftp/CmdMKD;

    .line 375
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdMKD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 378
    return-object p0

    .line 379
    :cond_17a
    const-string v0, "XRMD"

    .line 381
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    move-result p0

    .line 385
    if-eqz p0, :cond_188

    .line 387
    new-instance p0, Lorg/swiftp/CmdRMD;

    .line 389
    invoke-direct {p0, p1, p2}, Lorg/swiftp/CmdRMD;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 392
    return-object p0

    .line 393
    :cond_188
    const/4 p0, 0x0

    .line 394
    return-object p0
.end method

.method public static getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParameter(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/16 v1, 0x20

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    return-object v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+$"

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_33

    .line 4
    sget-object p1, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsed argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-object p0
.end method

.method public static inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x2f

    .line 8
    if-ne v0, v1, :cond_13

    .line 10
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/io/File;

    .line 16
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    .line 19
    return-object v1

    .line 20
    :catch_13
    :cond_13
    new-instance v0, Ljava/io/File;

    .line 22
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public abstract run()V
.end method

.method public violatesChroot(Ljava/io/File;)Z
    .registers 8

    .line 1
    invoke-static {}, Lorg/swiftp/Globals;->getChrootDir()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_43

    .line 20
    sget-object v3, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    .line 22
    const-string v4, "Path violated folder restriction, denying"

    .line 24
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v5, "path: "

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v4, "chroot: "

    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_45

    .line 67
    return v1

    .line 68
    :cond_43
    const/4 p1, 0x0

    .line 69
    return p1

    .line 70
    :catch_45
    move-exception v0

    .line 71
    sget-object v2, Lorg/swiftp/FtpCmd;->TAG:Ljava/lang/String;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const-string v4, "Path canonicalization problem: "

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v3, "When checking file: "

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return v1
.end method
