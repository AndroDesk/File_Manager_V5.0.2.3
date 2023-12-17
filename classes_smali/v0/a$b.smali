.class public final Lv0/a$b;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I[BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv0/a$b;->a:I

    iput p3, p0, Lv0/a$b;->b:I

    iput-object p2, p0, Lv0/a$b;->c:[B

    return-void
.end method

.method public static a(Ljava/lang/String;)Lv0/a$b;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lv0/a;->z:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    new-instance v0, Lv0/a$b;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0, v1}, Lv0/a$b;-><init>(I[BI)V

    return-object v0
.end method

.method public static b(JLjava/nio/ByteOrder;)Lv0/a$b;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    sget-object p0, Lv0/a;->q:[I

    const/4 p1, 0x4

    aget p0, p0, p1

    mul-int/2addr p0, v0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_15
    if-ge v2, v0, :cond_20

    aget-wide v3, v1, v2

    long-to-int p2, v3

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_20
    new-instance p2, Lv0/a$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-direct {p2, p1, p0, v0}, Lv0/a$b;-><init>(I[BI)V

    return-object p2
.end method

.method public static c(Lv0/a$d;Ljava/nio/ByteOrder;)Lv0/a$b;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Lv0/a$d;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object p0, Lv0/a;->q:[I

    const/4 v3, 0x5

    aget p0, p0, v3

    mul-int/2addr p0, v0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_15
    if-ge v2, v0, :cond_28

    aget-object p1, v1, v2

    iget-wide v4, p1, Lv0/a$d;->a:J

    long-to-int v4, v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v4, p1, Lv0/a$d;->b:J

    long-to-int p1, v4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_28
    new-instance p1, Lv0/a$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-direct {p1, v3, p0, v0}, Lv0/a$b;-><init>(I[BI)V

    return-object p1
.end method

.method public static d(ILjava/nio/ByteOrder;)Lv0/a$b;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    sget-object p0, Lv0/a;->q:[I

    const/4 v3, 0x3

    aget p0, p0, v3

    mul-int/2addr p0, v0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_15
    if-ge v2, v0, :cond_20

    aget p1, v1, v2

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_20
    new-instance p1, Lv0/a$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-direct {p1, v3, p0, v0}, Lv0/a$b;-><init>(I[BI)V

    return-object p1
.end method


# virtual methods
.method public final e(Ljava/nio/ByteOrder;)D
    .registers 6

    invoke-virtual {p0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_6e

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_11
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    check-cast p1, [J

    array-length v0, p1

    if-ne v0, v3, :cond_22

    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    instance-of v0, p1, [I

    if-eqz v0, :cond_3b

    check-cast p1, [I

    array-length v0, p1

    if-ne v0, v3, :cond_35

    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    :cond_35
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    instance-of v0, p1, [D

    if-eqz v0, :cond_4d

    check-cast p1, [D

    array-length v0, p1

    if-ne v0, v3, :cond_47

    aget-wide v0, p1, v1

    return-wide v0

    :cond_47
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    instance-of v0, p1, [Lv0/a$d;

    if-eqz v0, :cond_66

    check-cast p1, [Lv0/a$d;

    array-length v0, p1

    if-ne v0, v3, :cond_60

    aget-object p1, p1, v1

    iget-wide v0, p1, Lv0/a$d;->a:J

    long-to-double v0, v0

    iget-wide v2, p1, Lv0/a$d;->b:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    :cond_60
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/nio/ByteOrder;)I
    .registers 6

    invoke-virtual {p0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_42

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    check-cast p1, [J

    array-length v0, p1

    if-ne v0, v3, :cond_22

    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    instance-of v0, p1, [I

    if-eqz v0, :cond_3a

    check-cast p1, [I

    array-length v0, p1

    if-ne v0, v3, :cond_34

    aget p1, p1, v1

    return p1

    :cond_34
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_33

    check-cast p1, [J

    :cond_1d
    :goto_1d
    array-length v0, p1

    if-ge v4, v0, :cond_2e

    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_1d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_33
    instance-of v2, p1, [I

    if-eqz v2, :cond_4f

    check-cast p1, [I

    :cond_39
    :goto_39
    array-length v0, p1

    if-ge v4, v0, :cond_4a

    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_39

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4f
    instance-of v2, p1, [D

    if-eqz v2, :cond_6b

    check-cast p1, [D

    :cond_55
    :goto_55
    array-length v0, p1

    if-ge v4, v0, :cond_66

    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_55

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6b
    instance-of v2, p1, [Lv0/a$d;

    if-eqz v2, :cond_95

    check-cast p1, [Lv0/a$d;

    :cond_71
    :goto_71
    array-length v0, p1

    if-ge v4, v0, :cond_90

    aget-object v0, p1, v4

    iget-wide v5, v0, Lv0/a$d;->a:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, p1, v4

    iget-wide v5, v0, Lv0/a$d;->b:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_71

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    :cond_90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_95
    return-object v0
.end method

.method public final h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;
    .registers 14

    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Lv0/a$a;

    iget-object v4, p0, Lv0/a$b;->c:[B

    invoke-direct {v3, v4}, Lv0/a$a;-><init>([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_190
    .catchall {:try_start_5 .. :try_end_c} :catchall_18e

    :try_start_c
    iput-object p1, v3, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    iget p1, p0, Lv0/a$b;->a:I

    const/4 v4, 0x0

    const-wide v5, 0xffffffffL

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_1b0

    goto/16 :goto_185

    :pswitch_1c  #0xc
    iget p1, p0, Lv0/a$b;->b:I

    new-array p1, p1, [D

    :goto_20
    iget v5, p0, Lv0/a$b;->b:I

    if-ge v4, v5, :cond_2d

    invoke-virtual {v3}, Lv0/a$a;->readDouble()D

    move-result-wide v5

    aput-wide v5, p1, v4
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2a} :catch_c8
    .catchall {:try_start_c .. :try_end_2a} :catchall_1a2

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-object p1

    :pswitch_36  #0xb
    :try_start_36
    iget p1, p0, Lv0/a$b;->b:I

    new-array p1, p1, [D

    :goto_3a
    iget v5, p0, Lv0/a$b;->b:I

    if-ge v4, v5, :cond_48

    invoke-virtual {v3}, Lv0/a$a;->readFloat()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, p1, v4
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_45} :catch_c8
    .catchall {:try_start_36 .. :try_end_45} :catchall_1a2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_48
    :try_start_48
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    return-object p1

    :pswitch_51  #0xa
    :try_start_51
    iget p1, p0, Lv0/a$b;->b:I

    new-array p1, p1, [Lv0/a$d;

    :goto_55
    iget v5, p0, Lv0/a$b;->b:I

    if-ge v4, v5, :cond_6d

    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    move-result v7

    int-to-long v7, v7

    new-instance v9, Lv0/a$d;

    invoke-direct {v9, v5, v6, v7, v8}, Lv0/a$d;-><init>(JJ)V

    aput-object v9, p1, v4
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_6a} :catch_c8
    .catchall {:try_start_51 .. :try_end_6a} :catchall_1a2

    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_6d
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_75
    return-object p1

    :pswitch_76  #0x9
    :try_start_76
    iget p1, p0, Lv0/a$b;->b:I

    new-array p1, p1, [I

    :goto_7a
    iget v5, p0, Lv0/a$b;->b:I

    if-ge v4, v5, :cond_87

    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    move-result v5

    aput v5, p1, v4
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_84} :catch_c8
    .catchall {:try_start_76 .. :try_end_84} :catchall_1a2

    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    :cond_87
    :try_start_87
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8f
    return-object p1

    :pswitch_90  #0x8
    :try_start_90
    iget p1, p0, Lv0/a$b;->b:I

    new-array p1, p1, [I

    :goto_94
    iget v5, p0, Lv0/a$b;->b:I

    if-ge v4, v5, :cond_a1

    invoke-virtual {v3}, Lv0/a$a;->readShort()S

    move-result v5

    aput v5, p1, v4
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9e} :catch_c8
    .catchall {:try_start_90 .. :try_end_9e} :catchall_1a2

    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    :cond_a1
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_a9

    :catch_a5
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a9
    return-object p1

    :pswitch_aa  #0x5
    :try_start_aa
    iget p1, p0, Lv0/a$b;->b:I

    new-array p1, p1, [Lv0/a$d;

    :goto_ae
    iget v7, p0, Lv0/a$b;->b:I

    if-ge v4, v7, :cond_cb

    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    new-instance v11, Lv0/a$d;

    invoke-direct {v11, v7, v8, v9, v10}, Lv0/a$d;-><init>(JJ)V

    aput-object v11, p1, v4
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_c5} :catch_c8
    .catchall {:try_start_aa .. :try_end_c5} :catchall_1a2

    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    :catch_c8
    move-exception p1

    goto/16 :goto_192

    :cond_cb
    :try_start_cb
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_d3

    :catch_cf
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    return-object p1

    :pswitch_d4  #0x4
    :try_start_d4
    iget p1, p0, Lv0/a$b;->b:I

    new-array p1, p1, [J

    :goto_d8
    iget v7, p0, Lv0/a$b;->b:I

    if-ge v4, v7, :cond_e7

    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    aput-wide v7, p1, v4
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_e4} :catch_c8
    .catchall {:try_start_d4 .. :try_end_e4} :catchall_1a2

    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    :cond_e7
    :try_start_e7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_ef

    :catch_eb
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ef
    return-object p1

    :pswitch_f0  #0x3
    :try_start_f0
    iget p1, p0, Lv0/a$b;->b:I

    new-array p1, p1, [I

    :goto_f4
    iget v5, p0, Lv0/a$b;->b:I

    if-ge v4, v5, :cond_101

    invoke-virtual {v3}, Lv0/a$a;->readUnsignedShort()I

    move-result v5

    aput v5, p1, v4
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_fe} :catch_c8
    .catchall {:try_start_f0 .. :try_end_fe} :catchall_1a2

    add-int/lit8 v4, v4, 0x1

    goto :goto_f4

    :cond_101
    :try_start_101
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    goto :goto_109

    :catch_105
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_109
    return-object p1

    :pswitch_10a  #0x2, 0x7
    :try_start_10a
    iget p1, p0, Lv0/a$b;->b:I

    sget-object v5, Lv0/a;->r:[B

    array-length v5, v5

    if-lt p1, v5, :cond_127

    move p1, v4

    :goto_112
    sget-object v5, Lv0/a;->r:[B

    array-length v6, v5

    if-ge p1, v6, :cond_124

    iget-object v6, p0, Lv0/a$b;->c:[B

    aget-byte v6, v6, p1

    aget-byte v8, v5, p1

    if-eq v6, v8, :cond_121

    move v7, v4

    goto :goto_124

    :cond_121
    add-int/lit8 p1, p1, 0x1

    goto :goto_112

    :cond_124
    :goto_124
    if-eqz v7, :cond_127

    array-length v4, v5

    :cond_127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12c
    iget v5, p0, Lv0/a$b;->b:I

    if-ge v4, v5, :cond_148

    iget-object v5, p0, Lv0/a$b;->c:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_137

    goto :goto_148

    :cond_137
    const/16 v6, 0x20

    if-lt v5, v6, :cond_140

    int-to-char v5, v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_145

    :cond_140
    const/16 v5, 0x3f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_145
    add-int/lit8 v4, v4, 0x1

    goto :goto_12c

    :cond_148
    :goto_148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_14c} :catch_c8
    .catchall {:try_start_10a .. :try_end_14c} :catchall_1a2

    :try_start_14c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_154

    :catch_150
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_154
    return-object p1

    :pswitch_155  #0x1, 0x6
    :try_start_155
    iget-object p1, p0, Lv0/a$b;->c:[B

    array-length v5, p1

    if-ne v5, v7, :cond_175

    aget-byte v5, p1, v4

    if-ltz v5, :cond_175

    if-gt v5, v7, :cond_175

    new-instance p1, Ljava/lang/String;

    new-array v6, v7, [C

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, v6, v4

    invoke-direct {p1, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_16c} :catch_c8
    .catchall {:try_start_155 .. :try_end_16c} :catchall_1a2

    :try_start_16c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_170

    goto :goto_174

    :catch_170
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_174
    return-object p1

    :cond_175
    :try_start_175
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lv0/a;->z:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_17c} :catch_c8
    .catchall {:try_start_175 .. :try_end_17c} :catchall_1a2

    :try_start_17c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_180

    goto :goto_184

    :catch_180
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_184
    return-object v4

    :goto_185
    :try_start_185
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_189

    goto :goto_18d

    :catch_189
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18d
    return-object v2

    :catchall_18e
    move-exception p1

    goto :goto_1a4

    :catch_190
    move-exception p1

    move-object v3, v2

    :goto_192
    :try_start_192
    const-string v4, "IOException occurred during reading a value"

    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_197
    .catchall {:try_start_192 .. :try_end_197} :catchall_1a2

    if-eqz v3, :cond_1a1

    :try_start_199
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_19d

    goto :goto_1a1

    :catch_19d
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a1
    :goto_1a1
    return-object v2

    :catchall_1a2
    move-exception p1

    move-object v2, v3

    :goto_1a4
    if-eqz v2, :cond_1ae

    :try_start_1a6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_1aa

    goto :goto_1ae

    :catch_1aa
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1ae
    :goto_1ae
    throw p1

    nop

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_155  #00000001
        :pswitch_10a  #00000002
        :pswitch_f0  #00000003
        :pswitch_d4  #00000004
        :pswitch_aa  #00000005
        :pswitch_155  #00000006
        :pswitch_10a  #00000007
        :pswitch_90  #00000008
        :pswitch_76  #00000009
        :pswitch_51  #0000000a
        :pswitch_36  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "("

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lv0/a;->p:[Ljava/lang/String;

    iget v2, p0, Lv0/a$b;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv0/a$b;->c:[B

    array-length v1, v1

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
