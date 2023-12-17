.class public final Lv0/a$a;
.super Ljava/io/InputStream;
.source "ExifInterface.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Ljava/nio/ByteOrder;

.field public static final f:Ljava/nio/ByteOrder;


# instance fields
.field public a:Ljava/io/DataInputStream;

.field public b:Ljava/nio/ByteOrder;

.field public final c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 3
    sput-object v0, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 7
    sput-object v0, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 3
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 4
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lv0/a$a;->c:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 6
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lv0/a$a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 2

    .line 1
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final read()I
    .registers 2

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/a$a;->d:I

    .line 2
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 5

    .line 3
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    .line 4
    iget p2, p0, Lv0/a$a;->d:I

    add-int/2addr p2, p1

    iput p2, p0, Lv0/a$a;->d:I

    return p1
.end method

.method public final readBoolean()Z
    .registers 2

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final readByte()B
    .registers 3

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget v1, p0, Lv0/a$a;->c:I

    .line 9
    if-gt v0, v1, :cond_1a

    .line 11
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_14

    .line 19
    int-to-byte v0, v0

    .line 20
    return v0

    .line 21
    :cond_14
    new-instance v0, Ljava/io/EOFException;

    .line 23
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 26
    throw v0

    .line 27
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    .line 29
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 32
    throw v0
.end method

.method public final readChar()C
    .registers 2

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final readDouble()D
    .registers 3

    .line 1
    invoke-virtual {p0}, Lv0/a$a;->readLong()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final readFloat()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lv0/a$a;->readInt()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final readFully([B)V
    .registers 5

    .line 6
    iget v0, p0, Lv0/a$a;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget v1, p0, Lv0/a$a;->c:I

    if-gt v0, v1, :cond_1e

    .line 8
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_16

    return-void

    .line 9
    :cond_16
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1e
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final readFully([BII)V
    .registers 6

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lv0/a$a;->d:I

    .line 2
    iget v1, p0, Lv0/a$a;->c:I

    if-gt v0, v1, :cond_1a

    .line 3
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_12

    return-void

    .line 4
    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final readInt()I
    .registers 7

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    add-int/lit8 v0, v0, 0x4

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget v1, p0, Lv0/a$a;->c:I

    .line 9
    if-gt v0, v1, :cond_61

    .line 11
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 25
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 31
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 34
    move-result v3

    .line 35
    or-int v4, v0, v1

    .line 37
    or-int/2addr v4, v2

    .line 38
    or-int/2addr v4, v3

    .line 39
    if-ltz v4, :cond_5b

    .line 41
    iget-object v4, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 43
    sget-object v5, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    .line 45
    if-ne v4, v5, :cond_38

    .line 47
    shl-int/lit8 v3, v3, 0x18

    .line 49
    shl-int/lit8 v2, v2, 0x10

    .line 51
    add-int/2addr v3, v2

    .line 52
    shl-int/lit8 v1, v1, 0x8

    .line 54
    add-int/2addr v3, v1

    .line 55
    add-int/2addr v3, v0

    .line 56
    return v3

    .line 57
    :cond_38
    sget-object v5, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    .line 59
    if-ne v4, v5, :cond_46

    .line 61
    shl-int/lit8 v0, v0, 0x18

    .line 63
    shl-int/lit8 v1, v1, 0x10

    .line 65
    add-int/2addr v0, v1

    .line 66
    shl-int/lit8 v1, v2, 0x8

    .line 68
    add-int/2addr v0, v1

    .line 69
    add-int/2addr v0, v3

    .line 70
    return v0

    .line 71
    :cond_46
    new-instance v0, Ljava/io/IOException;

    .line 73
    const-string v1, "Invalid byte order: "

    .line 75
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0

    .line 92
    :cond_5b
    new-instance v0, Ljava/io/EOFException;

    .line 94
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 97
    throw v0

    .line 98
    :cond_61
    new-instance v0, Ljava/io/EOFException;

    .line 100
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 103
    throw v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ExifInterface"

    .line 3
    const-string v1, "Currently unsupported"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final readLong()J
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lv0/a$a;->d:I

    .line 5
    add-int/lit8 v1, v1, 0x8

    .line 7
    iput v1, v0, Lv0/a$a;->d:I

    .line 9
    iget v2, v0, Lv0/a$a;->c:I

    .line 11
    if-gt v1, v2, :cond_af

    .line 13
    iget-object v1, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 15
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 18
    move-result v1

    .line 19
    iget-object v2, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 21
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 24
    move-result v2

    .line 25
    iget-object v3, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 27
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 30
    move-result v3

    .line 31
    iget-object v4, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 33
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    .line 36
    move-result v4

    .line 37
    iget-object v5, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 39
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    .line 42
    move-result v5

    .line 43
    iget-object v6, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 45
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    .line 48
    move-result v6

    .line 49
    iget-object v7, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 51
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    .line 54
    move-result v7

    .line 55
    iget-object v8, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 57
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    .line 60
    move-result v8

    .line 61
    or-int v9, v1, v2

    .line 63
    or-int/2addr v9, v3

    .line 64
    or-int/2addr v9, v4

    .line 65
    or-int/2addr v9, v5

    .line 66
    or-int/2addr v9, v6

    .line 67
    or-int/2addr v9, v7

    .line 68
    or-int/2addr v9, v8

    .line 69
    if-ltz v9, :cond_a9

    .line 71
    iget-object v9, v0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 73
    sget-object v10, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    .line 75
    const/16 v13, 0x20

    .line 77
    const/16 v14, 0x28

    .line 79
    const/16 v15, 0x30

    .line 81
    const/16 v16, 0x38

    .line 83
    if-ne v9, v10, :cond_72

    .line 85
    int-to-long v8, v8

    .line 86
    shl-long v8, v8, v16

    .line 88
    int-to-long v11, v7

    .line 89
    shl-long/2addr v11, v15

    .line 90
    add-long/2addr v8, v11

    .line 91
    int-to-long v6, v6

    .line 92
    shl-long/2addr v6, v14

    .line 93
    add-long/2addr v8, v6

    .line 94
    int-to-long v5, v5

    .line 95
    shl-long/2addr v5, v13

    .line 96
    add-long/2addr v8, v5

    .line 97
    int-to-long v4, v4

    .line 98
    const/16 v6, 0x18

    .line 100
    shl-long/2addr v4, v6

    .line 101
    add-long/2addr v8, v4

    .line 102
    int-to-long v3, v3

    .line 103
    const/16 v5, 0x10

    .line 105
    shl-long/2addr v3, v5

    .line 106
    add-long/2addr v8, v3

    .line 107
    int-to-long v2, v2

    .line 108
    const/16 v4, 0x8

    .line 110
    shl-long/2addr v2, v4

    .line 111
    add-long/2addr v8, v2

    .line 112
    int-to-long v1, v1

    .line 113
    add-long/2addr v8, v1

    .line 114
    return-wide v8

    .line 115
    :cond_72
    sget-object v10, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    .line 117
    if-ne v9, v10, :cond_94

    .line 119
    int-to-long v9, v1

    .line 120
    shl-long v9, v9, v16

    .line 122
    int-to-long v1, v2

    .line 123
    shl-long/2addr v1, v15

    .line 124
    add-long/2addr v9, v1

    .line 125
    int-to-long v1, v3

    .line 126
    shl-long/2addr v1, v14

    .line 127
    add-long/2addr v9, v1

    .line 128
    int-to-long v1, v4

    .line 129
    shl-long/2addr v1, v13

    .line 130
    add-long/2addr v9, v1

    .line 131
    int-to-long v1, v5

    .line 132
    const/16 v3, 0x18

    .line 134
    shl-long/2addr v1, v3

    .line 135
    add-long/2addr v9, v1

    .line 136
    int-to-long v1, v6

    .line 137
    const/16 v3, 0x10

    .line 139
    shl-long/2addr v1, v3

    .line 140
    add-long/2addr v9, v1

    .line 141
    int-to-long v1, v7

    .line 142
    const/16 v3, 0x8

    .line 144
    shl-long/2addr v1, v3

    .line 145
    add-long/2addr v9, v1

    .line 146
    int-to-long v1, v8

    .line 147
    add-long/2addr v9, v1

    .line 148
    return-wide v9

    .line 149
    :cond_94
    new-instance v1, Ljava/io/IOException;

    .line 151
    const-string v2, "Invalid byte order: "

    .line 153
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    move-result-object v2

    .line 157
    iget-object v3, v0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 169
    throw v1

    .line 170
    :cond_a9
    new-instance v1, Ljava/io/EOFException;

    .line 172
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 175
    throw v1

    .line 176
    :cond_af
    new-instance v1, Ljava/io/EOFException;

    .line 178
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 181
    throw v1
.end method

.method public final readShort()S
    .registers 5

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget v1, p0, Lv0/a$a;->c:I

    .line 9
    if-gt v0, v1, :cond_49

    .line 11
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 22
    move-result v1

    .line 23
    or-int v2, v0, v1

    .line 25
    if-ltz v2, :cond_43

    .line 27
    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 29
    sget-object v3, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    .line 31
    if-ne v2, v3, :cond_25

    .line 33
    shl-int/lit8 v1, v1, 0x8

    .line 35
    add-int/2addr v1, v0

    .line 36
    int-to-short v0, v1

    .line 37
    return v0

    .line 38
    :cond_25
    sget-object v3, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    .line 40
    if-ne v2, v3, :cond_2e

    .line 42
    shl-int/lit8 v0, v0, 0x8

    .line 44
    add-int/2addr v0, v1

    .line 45
    int-to-short v0, v0

    .line 46
    return v0

    .line 47
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    .line 49
    const-string v1, "Invalid byte order: "

    .line 51
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0

    .line 68
    :cond_43
    new-instance v0, Ljava/io/EOFException;

    .line 70
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 73
    throw v0

    .line 74
    :cond_49
    new-instance v0, Ljava/io/EOFException;

    .line 76
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 79
    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final readUnsignedByte()I
    .registers 2

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final readUnsignedShort()I
    .registers 5

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    add-int/lit8 v0, v0, 0x2

    .line 5
    iput v0, p0, Lv0/a$a;->d:I

    .line 7
    iget v1, p0, Lv0/a$a;->c:I

    .line 9
    if-gt v0, v1, :cond_47

    .line 11
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 19
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 22
    move-result v1

    .line 23
    or-int v2, v0, v1

    .line 25
    if-ltz v2, :cond_41

    .line 27
    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 29
    sget-object v3, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    .line 31
    if-ne v2, v3, :cond_24

    .line 33
    shl-int/lit8 v1, v1, 0x8

    .line 35
    add-int/2addr v1, v0

    .line 36
    return v1

    .line 37
    :cond_24
    sget-object v3, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    .line 39
    if-ne v2, v3, :cond_2c

    .line 41
    shl-int/lit8 v0, v0, 0x8

    .line 43
    add-int/2addr v0, v1

    .line 44
    return v0

    .line 45
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    .line 47
    const-string v1, "Invalid byte order: "

    .line 49
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0

    .line 66
    :cond_41
    new-instance v0, Ljava/io/EOFException;

    .line 68
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 71
    throw v0

    .line 72
    :cond_47
    new-instance v0, Ljava/io/EOFException;

    .line 74
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 77
    throw v0
.end method

.method public final seek(J)V
    .registers 6

    .line 1
    iget v0, p0, Lv0/a$a;->d:I

    .line 3
    int-to-long v1, v0

    .line 4
    cmp-long v1, v1, p1

    .line 6
    if-lez v1, :cond_17

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lv0/a$a;->d:I

    .line 11
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 16
    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 18
    iget v1, p0, Lv0/a$a;->c:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    int-to-long v0, v0

    .line 25
    sub-long/2addr p1, v0

    .line 26
    :goto_19
    long-to-int p1, p1

    .line 27
    invoke-virtual {p0, p1}, Lv0/a$a;->skipBytes(I)I

    .line 30
    move-result p2

    .line 31
    if-ne p2, p1, :cond_21

    .line 33
    return-void

    .line 34
    :cond_21
    new-instance p1, Ljava/io/IOException;

    .line 36
    const-string p2, "Couldn\'t seek up to the byteCount"

    .line 38
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1
.end method

.method public final skipBytes(I)I
    .registers 5

    .line 1
    iget v0, p0, Lv0/a$a;->c:I

    .line 3
    iget v1, p0, Lv0/a$a;->d:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-ge v0, p1, :cond_16

    .line 13
    iget-object v1, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    .line 15
    sub-int v2, p1, v0

    .line 17
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    goto :goto_a

    .line 23
    :cond_16
    iget p1, p0, Lv0/a$a;->d:I

    .line 25
    add-int/2addr p1, v0

    .line 26
    iput p1, p0, Lv0/a$a;->d:I

    .line 28
    return v0
.end method
