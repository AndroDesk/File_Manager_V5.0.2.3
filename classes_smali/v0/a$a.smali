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

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lv0/a$a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lv0/a$a;->d:I

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lv0/a$a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 2

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final read()I
    .registers 2

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/a$a;->d:I

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 5

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    iget p2, p0, Lv0/a$a;->d:I

    add-int/2addr p2, p1

    iput p2, p0, Lv0/a$a;->d:I

    return p1
.end method

.method public final readBoolean()Z
    .registers 2

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/a$a;->d:I

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public final readByte()B
    .registers 3

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/a$a;->d:I

    iget v1, p0, Lv0/a$a;->c:I

    if-gt v0, v1, :cond_1a

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_14

    int-to-byte v0, v0

    return v0

    :cond_14
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readChar()C
    .registers 2

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lv0/a$a;->d:I

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public final readDouble()D
    .registers 3

    invoke-virtual {p0}, Lv0/a$a;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2

    invoke-virtual {p0}, Lv0/a$a;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .registers 5

    iget v0, p0, Lv0/a$a;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lv0/a$a;->d:I

    iget v1, p0, Lv0/a$a;->c:I

    if-gt v0, v1, :cond_1e

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_16

    return-void

    :cond_16
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final readFully([BII)V
    .registers 6

    iget v0, p0, Lv0/a$a;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lv0/a$a;->d:I

    iget v1, p0, Lv0/a$a;->c:I

    if-gt v0, v1, :cond_1a

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_12

    return-void

    :cond_12
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t read up to the length of buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final readInt()I
    .registers 7

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lv0/a$a;->d:I

    iget v1, p0, Lv0/a$a;->c:I

    if-gt v0, v1, :cond_61

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iget-object v2, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    iget-object v3, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_5b

    iget-object v4, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    sget-object v5, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_38

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    return v3

    :cond_38
    sget-object v5, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_46

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    :cond_46
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_61
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 3

    const-string v0, "ExifInterface"

    const-string v1, "Currently unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final readLong()J
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Lv0/a$a;->d:I

    add-int/lit8 v1, v1, 0x8

    iput v1, v0, Lv0/a$a;->d:I

    iget v2, v0, Lv0/a$a;->c:I

    if-gt v1, v2, :cond_af

    iget-object v1, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iget-object v2, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    iget-object v3, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    iget-object v4, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    iget-object v5, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    iget-object v6, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    iget-object v7, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    iget-object v8, v0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    or-int v9, v1, v2

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v5

    or-int/2addr v9, v6

    or-int/2addr v9, v7

    or-int/2addr v9, v8

    if-ltz v9, :cond_a9

    iget-object v9, v0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    sget-object v10, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    const/16 v13, 0x20

    const/16 v14, 0x28

    const/16 v15, 0x30

    const/16 v16, 0x38

    if-ne v9, v10, :cond_72

    int-to-long v8, v8

    shl-long v8, v8, v16

    int-to-long v11, v7

    shl-long/2addr v11, v15

    add-long/2addr v8, v11

    int-to-long v6, v6

    shl-long/2addr v6, v14

    add-long/2addr v8, v6

    int-to-long v5, v5

    shl-long/2addr v5, v13

    add-long/2addr v8, v5

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v8, v4

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    add-long/2addr v8, v3

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v8, v2

    int-to-long v1, v1

    add-long/2addr v8, v1

    return-wide v8

    :cond_72
    sget-object v10, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    if-ne v9, v10, :cond_94

    int-to-long v9, v1

    shl-long v9, v9, v16

    int-to-long v1, v2

    shl-long/2addr v1, v15

    add-long/2addr v9, v1

    int-to-long v1, v3

    shl-long/2addr v1, v14

    add-long/2addr v9, v1

    int-to-long v1, v4

    shl-long/2addr v1, v13

    add-long/2addr v9, v1

    int-to-long v1, v5

    const/16 v3, 0x18

    shl-long/2addr v1, v3

    add-long/2addr v9, v1

    int-to-long v1, v6

    const/16 v3, 0x10

    shl-long/2addr v1, v3

    add-long/2addr v9, v1

    int-to-long v1, v7

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v9, v1

    int-to-long v1, v8

    add-long/2addr v9, v1

    return-wide v9

    :cond_94
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid byte order: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a9
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_af
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final readShort()S
    .registers 5

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lv0/a$a;->d:I

    iget v1, p0, Lv0/a$a;->c:I

    if-gt v0, v1, :cond_49

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_43

    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    sget-object v3, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_25

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    int-to-short v0, v1

    return v0

    :cond_25
    sget-object v3, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2e

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_49
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lv0/a$a;->d:I

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .registers 2

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv0/a$a;->d:I

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public final readUnsignedShort()I
    .registers 5

    iget v0, p0, Lv0/a$a;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lv0/a$a;->d:I

    iget v1, p0, Lv0/a$a;->c:I

    if-gt v0, v1, :cond_47

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_41

    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    sget-object v3, Lv0/a$a;->e:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_24

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    return v1

    :cond_24
    sget-object v3, Lv0/a$a;->f:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2c

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid byte order: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_47
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final seek(J)V
    .registers 6

    iget v0, p0, Lv0/a$a;->d:I

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-lez v1, :cond_17

    const/4 v0, 0x0

    iput v0, p0, Lv0/a$a;->d:I

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    iget v1, p0, Lv0/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    goto :goto_19

    :cond_17
    int-to-long v0, v0

    sub-long/2addr p1, v0

    :goto_19
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lv0/a$a;->skipBytes(I)I

    move-result p2

    if-ne p2, p1, :cond_21

    return-void

    :cond_21
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Couldn\'t seek up to the byteCount"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final skipBytes(I)I
    .registers 5

    iget v0, p0, Lv0/a$a;->c:I

    iget v1, p0, Lv0/a$a;->d:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_16

    iget-object v1, p0, Lv0/a$a;->a:Ljava/io/DataInputStream;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a

    :cond_16
    iget p1, p0, Lv0/a$a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lv0/a$a;->d:I

    return v0
.end method
