.class public Lcom/junrar/rarfile/MainHeader;
.super Lcom/junrar/rarfile/BaseBlock;
.source "MainHeader.java"


# static fields
.field public static final mainHeaderSize:S = 0x6s

.field public static final mainHeaderSizeWithEnc:S = 0x7s


# instance fields
.field private encryptVersion:B

.field private highPosAv:S

.field private logger:Lorg/apache/commons/logging/Log;

.field private posAv:I


# direct methods
.method public constructor <init>(Lcom/junrar/rarfile/BaseBlock;[B)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/junrar/rarfile/BaseBlock;-><init>(Lcom/junrar/rarfile/BaseBlock;)V

    .line 4
    const-class p1, Lcom/junrar/rarfile/MainHeader;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/junrar/rarfile/MainHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readShortLittleEndian([BI)S

    .line 20
    move-result p1

    .line 21
    iput-short p1, p0, Lcom/junrar/rarfile/MainHeader;->highPosAv:S

    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-static {p2, p1}, Lcom/junrar/io/Raw;->readIntLittleEndian([BI)I

    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/junrar/rarfile/MainHeader;->posAv:I

    .line 30
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2e

    .line 36
    iget-byte p1, p0, Lcom/junrar/rarfile/MainHeader;->encryptVersion:B

    .line 38
    const/4 v0, 0x6

    .line 39
    aget-byte p2, p2, v0

    .line 41
    and-int/lit16 p2, p2, 0xff

    .line 43
    or-int/2addr p1, p2

    .line 44
    int-to-byte p1, p1

    .line 45
    iput-byte p1, p0, Lcom/junrar/rarfile/MainHeader;->encryptVersion:B

    .line 47
    :cond_2e
    return-void
.end method

.method private getEncryptVersion()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/MainHeader;->encryptVersion:B

    .line 3
    return v0
.end method

.method private getHighPosAv()S
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/MainHeader;->highPosAv:S

    .line 3
    return v0
.end method

.method private getPosAv()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/junrar/rarfile/MainHeader;->posAv:I

    .line 3
    return v0
.end method

.method private hasArchCmt()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private isAV()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private isFirstVolume()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit16 v0, v0, 0x100

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private isLocked()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private isMultiVolume()Z
    .registers 3

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method private isProtected()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private isSolid()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method


# virtual methods
.method public isEncrypted()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isNewNumbering()Z
    .registers 2

    .line 1
    iget-short v0, p0, Lcom/junrar/rarfile/BaseBlock;->flags:S

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public print()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/junrar/rarfile/BaseBlock;->print()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "posav: "

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->getPosAv()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v2, "\nhighposav: "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->getHighPosAv()S

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v2, "\nhasencversion: "

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Lcom/junrar/rarfile/BaseBlock;->hasEncryptVersion()Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_54

    .line 76
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->getEncryptVersion()B

    .line 79
    move-result v2

    .line 80
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 83
    move-result-object v2

    .line 84
    goto :goto_56

    .line 85
    :cond_54
    const-string v2, ""

    .line 87
    :goto_56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v2, "\nhasarchcmt: "

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->hasArchCmt()Z

    .line 110
    move-result v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v2, "\nisEncrypted: "

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/junrar/rarfile/MainHeader;->isEncrypted()Z

    .line 134
    move-result v2

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v2, "\nisMultivolume: "

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->isMultiVolume()Z

    .line 158
    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    const-string v2, "\nisFirstvolume: "

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->isFirstVolume()Z

    .line 182
    move-result v2

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v2, "\nisSolid: "

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->isSolid()Z

    .line 206
    move-result v2

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string v2, "\nisLocked: "

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->isLocked()Z

    .line 230
    move-result v2

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    const-string v2, "\nisProtected: "

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->isProtected()Z

    .line 254
    move-result v2

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    const-string v2, "\nisAV: "

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {p0}, Lcom/junrar/rarfile/MainHeader;->isAV()Z

    .line 278
    move-result v2

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Lcom/junrar/rarfile/MainHeader;->logger:Lorg/apache/commons/logging/Log;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 295
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 298
    return-void
.end method
