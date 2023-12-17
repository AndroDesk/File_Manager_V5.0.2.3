.class Lmiuix/core/util/DirectIndexedFile$DataInputStream;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"

# interfaces
.implements Lmiuix/core/util/DirectIndexedFile$InputFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInputStream"
.end annotation


# instance fields
.field private mInputFile:Ljava/io/InputStream;

.field private mInputPos:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    return-void
.end method

.method public getFilePointer()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 3
    return-wide v0
.end method

.method public readBoolean()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 8
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 10
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return v0
.end method

.method public readByte()B
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 8
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 10
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 13
    move-result v0

    .line 14
    int-to-byte v0, v0

    .line 15
    return v0
.end method

.method public readChar()C
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 4
    iget-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 6
    const-wide/16 v4, 0x2

    .line 8
    add-long/2addr v2, v4

    .line 9
    iput-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 11
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 13
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-ne v2, v0, :cond_23

    .line 20
    const/4 v0, 0x1

    .line 21
    aget-byte v0, v1, v0

    .line 23
    and-int/lit16 v0, v0, 0xff

    .line 25
    int-to-char v0, v0

    .line 26
    aget-byte v1, v1, v3

    .line 28
    shl-int/lit8 v1, v1, 0x8

    .line 30
    const v2, 0xff00

    .line 33
    and-int/2addr v1, v2

    .line 34
    or-int/2addr v0, v1

    .line 35
    int-to-char v3, v0

    .line 36
    :cond_23
    return v3
.end method

.method public readDouble()D
    .registers 2

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 3
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 6
    throw v0
.end method

.method public readFloat()F
    .registers 2

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 3
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 6
    throw v0
.end method

.method public readFully([B)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 2
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    return-void
.end method

.method public readFully([BII)V
    .registers 6

    .line 3
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 4
    iget-wide p2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    return-void
.end method

.method public readInt()I
    .registers 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    iget-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 6
    const-wide/16 v4, 0x4

    .line 8
    add-long/2addr v2, v4

    .line 9
    iput-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 11
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 13
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-ne v2, v0, :cond_34

    .line 20
    const/4 v0, 0x3

    .line 21
    aget-byte v0, v1, v0

    .line 23
    and-int/lit16 v0, v0, 0xff

    .line 25
    const/4 v2, 0x2

    .line 26
    aget-byte v2, v1, v2

    .line 28
    shl-int/lit8 v2, v2, 0x8

    .line 30
    const v4, 0xff00

    .line 33
    and-int/2addr v2, v4

    .line 34
    or-int/2addr v0, v2

    .line 35
    const/4 v2, 0x1

    .line 36
    aget-byte v2, v1, v2

    .line 38
    shl-int/lit8 v2, v2, 0x10

    .line 40
    const/high16 v4, 0xff0000

    .line 42
    and-int/2addr v2, v4

    .line 43
    or-int/2addr v0, v2

    .line 44
    aget-byte v1, v1, v3

    .line 46
    shl-int/lit8 v1, v1, 0x18

    .line 48
    const/high16 v2, -0x1000000

    .line 50
    and-int/2addr v1, v2

    .line 51
    or-int v3, v0, v1

    .line 53
    :cond_34
    return v3
.end method

.method public readLine()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 3
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 6
    throw v0
.end method

.method public readLong()J
    .registers 9

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v1, v0, [B

    .line 5
    iget-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 7
    const-wide/16 v4, 0x8

    .line 9
    add-long/2addr v2, v4

    .line 10
    iput-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 12
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 14
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 17
    move-result v2

    .line 18
    if-ne v2, v0, :cond_6f

    .line 20
    const/4 v2, 0x7

    .line 21
    aget-byte v2, v1, v2

    .line 23
    and-int/lit16 v2, v2, 0xff

    .line 25
    int-to-long v2, v2

    .line 26
    const/4 v4, 0x6

    .line 27
    aget-byte v4, v1, v4

    .line 29
    shl-int/lit8 v0, v4, 0x8

    .line 31
    int-to-long v4, v0

    .line 32
    const-wide/32 v6, 0xff00

    .line 35
    and-long/2addr v4, v6

    .line 36
    or-long/2addr v2, v4

    .line 37
    const/4 v0, 0x5

    .line 38
    aget-byte v0, v1, v0

    .line 40
    shl-int/lit8 v0, v0, 0x10

    .line 42
    int-to-long v4, v0

    .line 43
    const-wide/32 v6, 0xff0000

    .line 46
    and-long/2addr v4, v6

    .line 47
    or-long/2addr v2, v4

    .line 48
    const/4 v0, 0x4

    .line 49
    aget-byte v0, v1, v0

    .line 51
    shl-int/lit8 v0, v0, 0x18

    .line 53
    int-to-long v4, v0

    .line 54
    const-wide v6, 0xff000000L

    .line 59
    and-long/2addr v4, v6

    .line 60
    or-long/2addr v2, v4

    .line 61
    const/4 v0, 0x3

    .line 62
    aget-byte v0, v1, v0

    .line 64
    int-to-long v4, v0

    .line 65
    const/16 v0, 0x20

    .line 67
    shl-long/2addr v4, v0

    .line 68
    const-wide v6, 0xff00000000L

    .line 73
    and-long/2addr v4, v6

    .line 74
    or-long/2addr v2, v4

    .line 75
    const/4 v0, 0x2

    .line 76
    aget-byte v0, v1, v0

    .line 78
    int-to-long v4, v0

    .line 79
    const/16 v0, 0x28

    .line 81
    shl-long/2addr v4, v0

    .line 82
    const-wide v6, 0xff0000000000L

    .line 87
    and-long/2addr v4, v6

    .line 88
    or-long/2addr v2, v4

    .line 89
    const/4 v0, 0x1

    .line 90
    aget-byte v0, v1, v0

    .line 92
    int-to-long v4, v0

    .line 93
    const/16 v0, 0x30

    .line 95
    shl-long/2addr v4, v0

    .line 96
    const-wide/high16 v6, 0xff000000000000L

    .line 98
    and-long/2addr v4, v6

    .line 99
    or-long/2addr v2, v4

    .line 100
    const/4 v0, 0x0

    .line 101
    aget-byte v0, v1, v0

    .line 103
    int-to-long v0, v0

    .line 104
    const/16 v4, 0x38

    .line 106
    shl-long/2addr v0, v4

    .line 107
    const-wide/high16 v4, -0x100000000000000L

    .line 109
    and-long/2addr v0, v4

    .line 110
    or-long/2addr v0, v2

    .line 111
    goto :goto_71

    .line 112
    :cond_6f
    const-wide/16 v0, 0x0

    .line 114
    :goto_71
    return-wide v0
.end method

.method public readShort()S
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 4
    iget-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 6
    const-wide/16 v4, 0x2

    .line 8
    add-long/2addr v2, v4

    .line 9
    iput-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 11
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 13
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-ne v2, v0, :cond_23

    .line 20
    const/4 v0, 0x1

    .line 21
    aget-byte v0, v1, v0

    .line 23
    and-int/lit16 v0, v0, 0xff

    .line 25
    int-to-short v0, v0

    .line 26
    aget-byte v1, v1, v3

    .line 28
    shl-int/lit8 v1, v1, 0x8

    .line 30
    const v2, 0xff00

    .line 33
    and-int/2addr v1, v2

    .line 34
    or-int/2addr v0, v1

    .line 35
    int-to-short v3, v0

    .line 36
    :cond_23
    return v3
.end method

.method public readUTF()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 3
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 6
    throw v0
.end method

.method public readUnsignedByte()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 8
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 10
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 13
    move-result v0

    .line 14
    int-to-byte v0, v0

    .line 15
    return v0
.end method

.method public readUnsignedShort()I
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 4
    iget-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 6
    const-wide/16 v4, 0x2

    .line 8
    add-long/2addr v2, v4

    .line 9
    iput-wide v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 11
    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 13
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-ne v2, v0, :cond_23

    .line 20
    const/4 v0, 0x1

    .line 21
    aget-byte v0, v1, v0

    .line 23
    and-int/lit16 v0, v0, 0xff

    .line 25
    int-to-short v0, v0

    .line 26
    aget-byte v1, v1, v3

    .line 28
    shl-int/lit8 v1, v1, 0x8

    .line 30
    const v2, 0xff00

    .line 33
    and-int/2addr v1, v2

    .line 34
    or-int/2addr v0, v1

    .line 35
    int-to-short v3, v0

    .line 36
    :cond_23
    return v3
.end method

.method public seek(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 6
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 11
    move-result-wide v0

    .line 12
    cmp-long v0, v0, p1

    .line 14
    if-nez v0, :cond_12

    .line 16
    iput-wide p1, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 18
    return-void

    .line 19
    :cond_12
    new-instance p1, Ljava/io/IOException;

    .line 21
    const-string p2, "Skip failed"

    .line 23
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1
.end method

.method public skipBytes(I)I
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 3
    int-to-long v1, p1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 7
    move-result-wide v0

    .line 8
    long-to-int p1, v0

    .line 9
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 11
    int-to-long v2, p1

    .line 12
    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 15
    return p1
.end method
