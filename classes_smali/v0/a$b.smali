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
.method public constructor <init>(I[BI)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lv0/a$b;->a:I

    .line 6
    iput p3, p0, Lv0/a$b;->b:I

    .line 8
    iput-object p2, p0, Lv0/a$b;->c:[B

    .line 10
    return-void
.end method

.method public static a(Ljava/lang/String;)Lv0/a$b;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lv0/a;->z:Ljava/nio/charset/Charset;

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Lv0/a$b;

    .line 25
    array-length v1, p0

    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v2, p0, v1}, Lv0/a$b;-><init>(I[BI)V

    .line 30
    return-object v0
.end method

.method public static b(JLjava/nio/ByteOrder;)Lv0/a$b;
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [J

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-wide p0, v1, v2

    .line 7
    sget-object p0, Lv0/a;->q:[I

    .line 9
    const/4 p1, 0x4

    .line 10
    aget p0, p0, p1

    .line 12
    mul-int/2addr p0, v0

    .line 13
    new-array p0, p0, [B

    .line 15
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 22
    :goto_15
    if-ge v2, v0, :cond_20

    .line 24
    aget-wide v3, v1, v2

    .line 26
    long-to-int p2, v3

    .line 27
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_15

    .line 33
    :cond_20
    new-instance p2, Lv0/a$b;

    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    move-result-object p0

    .line 39
    invoke-direct {p2, p1, p0, v0}, Lv0/a$b;-><init>(I[BI)V

    .line 42
    return-object p2
.end method

.method public static c(Lv0/a$d;Ljava/nio/ByteOrder;)Lv0/a$b;
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lv0/a$d;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    sget-object p0, Lv0/a;->q:[I

    .line 9
    const/4 v3, 0x5

    .line 10
    aget p0, p0, v3

    .line 12
    mul-int/2addr p0, v0

    .line 13
    new-array p0, p0, [B

    .line 15
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 22
    :goto_15
    if-ge v2, v0, :cond_28

    .line 24
    aget-object p1, v1, v2

    .line 26
    iget-wide v4, p1, Lv0/a$d;->a:J

    .line 28
    long-to-int v4, v4

    .line 29
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 32
    iget-wide v4, p1, Lv0/a$d;->b:J

    .line 34
    long-to-int p1, v4

    .line 35
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_15

    .line 41
    :cond_28
    new-instance p1, Lv0/a$b;

    .line 43
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p1, v3, p0, v0}, Lv0/a$b;-><init>(I[BI)V

    .line 50
    return-object p1
.end method

.method public static d(ILjava/nio/ByteOrder;)Lv0/a$b;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    const/4 v2, 0x0

    .line 5
    aput p0, v1, v2

    .line 7
    sget-object p0, Lv0/a;->q:[I

    .line 9
    const/4 v3, 0x3

    .line 10
    aget p0, p0, v3

    .line 12
    mul-int/2addr p0, v0

    .line 13
    new-array p0, p0, [B

    .line 15
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 22
    :goto_15
    if-ge v2, v0, :cond_20

    .line 24
    aget p1, v1, v2

    .line 26
    int-to-short p1, p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_15

    .line 33
    :cond_20
    new-instance p1, Lv0/a$b;

    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    move-result-object p0

    .line 39
    invoke-direct {p1, v3, p0, v0}, Lv0/a$b;-><init>(I[BI)V

    .line 42
    return-object p1
.end method


# virtual methods
.method public final e(Ljava/nio/ByteOrder;)D
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_6e

    .line 7
    instance-of v0, p1, Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_11
    instance-of v0, p1, [J

    .line 20
    const/4 v1, 0x0

    .line 21
    const-string v2, "There are more than one component"

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v0, :cond_28

    .line 26
    check-cast p1, [J

    .line 28
    array-length v0, p1

    .line 29
    if-ne v0, v3, :cond_22

    .line 31
    aget-wide v0, p1, v1

    .line 33
    long-to-double v0, v0

    .line 34
    return-wide v0

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 37
    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :cond_28
    instance-of v0, p1, [I

    .line 43
    if-eqz v0, :cond_3b

    .line 45
    check-cast p1, [I

    .line 47
    array-length v0, p1

    .line 48
    if-ne v0, v3, :cond_35

    .line 50
    aget p1, p1, v1

    .line 52
    int-to-double v0, p1

    .line 53
    return-wide v0

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 56
    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    :cond_3b
    instance-of v0, p1, [D

    .line 62
    if-eqz v0, :cond_4d

    .line 64
    check-cast p1, [D

    .line 66
    array-length v0, p1

    .line 67
    if-ne v0, v3, :cond_47

    .line 69
    aget-wide v0, p1, v1

    .line 71
    return-wide v0

    .line 72
    :cond_47
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 74
    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_4d
    instance-of v0, p1, [Lv0/a$d;

    .line 80
    if-eqz v0, :cond_66

    .line 82
    check-cast p1, [Lv0/a$d;

    .line 84
    array-length v0, p1

    .line 85
    if-ne v0, v3, :cond_60

    .line 87
    aget-object p1, p1, v1

    .line 89
    iget-wide v0, p1, Lv0/a$d;->a:J

    .line 91
    long-to-double v0, v0

    .line 92
    iget-wide v2, p1, Lv0/a$d;->b:J

    .line 94
    long-to-double v2, v2

    .line 95
    div-double/2addr v0, v2

    .line 96
    return-wide v0

    .line 97
    :cond_60
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 99
    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p1

    .line 103
    :cond_66
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 105
    const-string v0, "Couldn\'t find a double value"

    .line 107
    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1

    .line 111
    :cond_6e
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 113
    const-string v0, "NULL can\'t be converted to a double value"

    .line 115
    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p1
.end method

.method public final f(Ljava/nio/ByteOrder;)I
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_42

    .line 7
    instance-of v0, p1, Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_11
    instance-of v0, p1, [J

    .line 20
    const/4 v1, 0x0

    .line 21
    const-string v2, "There are more than one component"

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v0, :cond_28

    .line 26
    check-cast p1, [J

    .line 28
    array-length v0, p1

    .line 29
    if-ne v0, v3, :cond_22

    .line 31
    aget-wide v0, p1, v1

    .line 33
    long-to-int p1, v0

    .line 34
    return p1

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 37
    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :cond_28
    instance-of v0, p1, [I

    .line 43
    if-eqz v0, :cond_3a

    .line 45
    check-cast p1, [I

    .line 47
    array-length v0, p1

    .line 48
    if-ne v0, v3, :cond_34

    .line 50
    aget p1, p1, v1

    .line 52
    return p1

    .line 53
    :cond_34
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 55
    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1

    .line 59
    :cond_3a
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 61
    const-string v0, "Couldn\'t find a integer value"

    .line 63
    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p1

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 69
    const-string v0, "NULL can\'t be converted to a integer value"

    .line 71
    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
.end method

.method public final g(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p0, p1}, Lv0/a$b;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 15
    return-object p1

    .line 16
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    instance-of v2, p1, [J

    .line 23
    const-string v3, ","

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v2, :cond_33

    .line 28
    check-cast p1, [J

    .line 30
    :cond_1d
    :goto_1d
    array-length v0, p1

    .line 31
    if-ge v4, v0, :cond_2e

    .line 33
    aget-wide v5, p1, v4

    .line 35
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    array-length v0, p1

    .line 41
    if-eq v4, v0, :cond_1d

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_1d

    .line 47
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_33
    instance-of v2, p1, [I

    .line 54
    if-eqz v2, :cond_4f

    .line 56
    check-cast p1, [I

    .line 58
    :cond_39
    :goto_39
    array-length v0, p1

    .line 59
    if-ge v4, v0, :cond_4a

    .line 61
    aget v0, p1, v4

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 68
    array-length v0, p1

    .line 69
    if-eq v4, v0, :cond_39

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    goto :goto_39

    .line 75
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_4f
    instance-of v2, p1, [D

    .line 82
    if-eqz v2, :cond_6b

    .line 84
    check-cast p1, [D

    .line 86
    :cond_55
    :goto_55
    array-length v0, p1

    .line 87
    if-ge v4, v0, :cond_66

    .line 89
    aget-wide v5, p1, v4

    .line 91
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 96
    array-length v0, p1

    .line 97
    if-eq v4, v0, :cond_55

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    goto :goto_55

    .line 103
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_6b
    instance-of v2, p1, [Lv0/a$d;

    .line 110
    if-eqz v2, :cond_95

    .line 112
    check-cast p1, [Lv0/a$d;

    .line 114
    :cond_71
    :goto_71
    array-length v0, p1

    .line 115
    if-ge v4, v0, :cond_90

    .line 117
    aget-object v0, p1, v4

    .line 119
    iget-wide v5, v0, Lv0/a$d;->a:J

    .line 121
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    const/16 v0, 0x2f

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    aget-object v0, p1, v4

    .line 131
    iget-wide v5, v0, Lv0/a$d;->b:J

    .line 133
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v4, v4, 0x1

    .line 138
    array-length v0, p1

    .line 139
    if-eq v4, v0, :cond_71

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    goto :goto_71

    .line 145
    :cond_90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    :cond_95
    return-object v0
.end method

.method public final h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;
    .registers 14

    .line 1
    const-string v0, "IOException occurred while closing InputStream"

    .line 3
    const-string v1, "ExifInterface"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    new-instance v3, Lv0/a$a;

    .line 8
    iget-object v4, p0, Lv0/a$b;->c:[B

    .line 10
    invoke-direct {v3, v4}, Lv0/a$a;-><init>([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_190
    .catchall {:try_start_5 .. :try_end_c} :catchall_18e

    .line 13
    :try_start_c
    iput-object p1, v3, Lv0/a$a;->b:Ljava/nio/ByteOrder;

    .line 15
    iget p1, p0, Lv0/a$b;->a:I

    .line 17
    const/4 v4, 0x0

    .line 18
    const-wide v5, 0xffffffffL

    .line 23
    const/4 v7, 0x1

    .line 24
    packed-switch p1, :pswitch_data_1b0

    .line 27
    goto/16 :goto_185

    .line 29
    :pswitch_1c  #0xc
    iget p1, p0, Lv0/a$b;->b:I

    .line 31
    new-array p1, p1, [D

    .line 33
    :goto_20
    iget v5, p0, Lv0/a$b;->b:I

    .line 35
    if-ge v4, v5, :cond_2d

    .line 37
    invoke-virtual {v3}, Lv0/a$a;->readDouble()D

    .line 40
    move-result-wide v5

    .line 41
    aput-wide v5, p1, v4
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2a} :catch_c8
    .catchall {:try_start_c .. :try_end_2a} :catchall_1a2

    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_20

    .line 46
    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 49
    goto :goto_35

    .line 50
    :catch_31
    move-exception v2

    .line 51
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :goto_35
    return-object p1

    .line 55
    :pswitch_36  #0xb
    :try_start_36
    iget p1, p0, Lv0/a$b;->b:I

    .line 57
    new-array p1, p1, [D

    .line 59
    :goto_3a
    iget v5, p0, Lv0/a$b;->b:I

    .line 61
    if-ge v4, v5, :cond_48

    .line 63
    invoke-virtual {v3}, Lv0/a$a;->readFloat()F

    .line 66
    move-result v5

    .line 67
    float-to-double v5, v5

    .line 68
    aput-wide v5, p1, v4
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_45} :catch_c8
    .catchall {:try_start_36 .. :try_end_45} :catchall_1a2

    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 72
    goto :goto_3a

    .line 73
    :cond_48
    :try_start_48
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 76
    goto :goto_50

    .line 77
    :catch_4c
    move-exception v2

    .line 78
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_50
    return-object p1

    .line 82
    :pswitch_51  #0xa
    :try_start_51
    iget p1, p0, Lv0/a$b;->b:I

    .line 84
    new-array p1, p1, [Lv0/a$d;

    .line 86
    :goto_55
    iget v5, p0, Lv0/a$b;->b:I

    .line 88
    if-ge v4, v5, :cond_6d

    .line 90
    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    .line 93
    move-result v5

    .line 94
    int-to-long v5, v5

    .line 95
    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    .line 98
    move-result v7

    .line 99
    int-to-long v7, v7

    .line 100
    new-instance v9, Lv0/a$d;

    .line 102
    invoke-direct {v9, v5, v6, v7, v8}, Lv0/a$d;-><init>(JJ)V

    .line 105
    aput-object v9, p1, v4
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_6a} :catch_c8
    .catchall {:try_start_51 .. :try_end_6a} :catchall_1a2

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 109
    goto :goto_55

    .line 110
    :cond_6d
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    .line 113
    goto :goto_75

    .line 114
    :catch_71
    move-exception v2

    .line 115
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_75
    return-object p1

    .line 119
    :pswitch_76  #0x9
    :try_start_76
    iget p1, p0, Lv0/a$b;->b:I

    .line 121
    new-array p1, p1, [I

    .line 123
    :goto_7a
    iget v5, p0, Lv0/a$b;->b:I

    .line 125
    if-ge v4, v5, :cond_87

    .line 127
    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    .line 130
    move-result v5

    .line 131
    aput v5, p1, v4
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_84} :catch_c8
    .catchall {:try_start_76 .. :try_end_84} :catchall_1a2

    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 135
    goto :goto_7a

    .line 136
    :cond_87
    :try_start_87
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 139
    goto :goto_8f

    .line 140
    :catch_8b
    move-exception v2

    .line 141
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :goto_8f
    return-object p1

    .line 145
    :pswitch_90  #0x8
    :try_start_90
    iget p1, p0, Lv0/a$b;->b:I

    .line 147
    new-array p1, p1, [I

    .line 149
    :goto_94
    iget v5, p0, Lv0/a$b;->b:I

    .line 151
    if-ge v4, v5, :cond_a1

    .line 153
    invoke-virtual {v3}, Lv0/a$a;->readShort()S

    .line 156
    move-result v5

    .line 157
    aput v5, p1, v4
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9e} :catch_c8
    .catchall {:try_start_90 .. :try_end_9e} :catchall_1a2

    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 161
    goto :goto_94

    .line 162
    :cond_a1
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 165
    goto :goto_a9

    .line 166
    :catch_a5
    move-exception v2

    .line 167
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :goto_a9
    return-object p1

    .line 171
    :pswitch_aa  #0x5
    :try_start_aa
    iget p1, p0, Lv0/a$b;->b:I

    .line 173
    new-array p1, p1, [Lv0/a$d;

    .line 175
    :goto_ae
    iget v7, p0, Lv0/a$b;->b:I

    .line 177
    if-ge v4, v7, :cond_cb

    .line 179
    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    .line 182
    move-result v7

    .line 183
    int-to-long v7, v7

    .line 184
    and-long/2addr v7, v5

    .line 185
    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    .line 188
    move-result v9

    .line 189
    int-to-long v9, v9

    .line 190
    and-long/2addr v9, v5

    .line 191
    new-instance v11, Lv0/a$d;

    .line 193
    invoke-direct {v11, v7, v8, v9, v10}, Lv0/a$d;-><init>(JJ)V

    .line 196
    aput-object v11, p1, v4
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_c5} :catch_c8
    .catchall {:try_start_aa .. :try_end_c5} :catchall_1a2

    .line 198
    add-int/lit8 v4, v4, 0x1

    .line 200
    goto :goto_ae

    .line 201
    :catch_c8
    move-exception p1

    .line 202
    goto/16 :goto_192

    .line 204
    :cond_cb
    :try_start_cb
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 207
    goto :goto_d3

    .line 208
    :catch_cf
    move-exception v2

    .line 209
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :goto_d3
    return-object p1

    .line 213
    :pswitch_d4  #0x4
    :try_start_d4
    iget p1, p0, Lv0/a$b;->b:I

    .line 215
    new-array p1, p1, [J

    .line 217
    :goto_d8
    iget v7, p0, Lv0/a$b;->b:I

    .line 219
    if-ge v4, v7, :cond_e7

    .line 221
    invoke-virtual {v3}, Lv0/a$a;->readInt()I

    .line 224
    move-result v7

    .line 225
    int-to-long v7, v7

    .line 226
    and-long/2addr v7, v5

    .line 227
    aput-wide v7, p1, v4
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_e4} :catch_c8
    .catchall {:try_start_d4 .. :try_end_e4} :catchall_1a2

    .line 229
    add-int/lit8 v4, v4, 0x1

    .line 231
    goto :goto_d8

    .line 232
    :cond_e7
    :try_start_e7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    .line 235
    goto :goto_ef

    .line 236
    :catch_eb
    move-exception v2

    .line 237
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    :goto_ef
    return-object p1

    .line 241
    :pswitch_f0  #0x3
    :try_start_f0
    iget p1, p0, Lv0/a$b;->b:I

    .line 243
    new-array p1, p1, [I

    .line 245
    :goto_f4
    iget v5, p0, Lv0/a$b;->b:I

    .line 247
    if-ge v4, v5, :cond_101

    .line 249
    invoke-virtual {v3}, Lv0/a$a;->readUnsignedShort()I

    .line 252
    move-result v5

    .line 253
    aput v5, p1, v4
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_fe} :catch_c8
    .catchall {:try_start_f0 .. :try_end_fe} :catchall_1a2

    .line 255
    add-int/lit8 v4, v4, 0x1

    .line 257
    goto :goto_f4

    .line 258
    :cond_101
    :try_start_101
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    .line 261
    goto :goto_109

    .line 262
    :catch_105
    move-exception v2

    .line 263
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :goto_109
    return-object p1

    .line 267
    :pswitch_10a  #0x2, 0x7
    :try_start_10a
    iget p1, p0, Lv0/a$b;->b:I

    .line 269
    sget-object v5, Lv0/a;->r:[B

    .line 271
    array-length v5, v5

    .line 272
    if-lt p1, v5, :cond_127

    .line 274
    move p1, v4

    .line 275
    :goto_112
    sget-object v5, Lv0/a;->r:[B

    .line 277
    array-length v6, v5

    .line 278
    if-ge p1, v6, :cond_124

    .line 280
    iget-object v6, p0, Lv0/a$b;->c:[B

    .line 282
    aget-byte v6, v6, p1

    .line 284
    aget-byte v8, v5, p1

    .line 286
    if-eq v6, v8, :cond_121

    .line 288
    move v7, v4

    .line 289
    goto :goto_124

    .line 290
    :cond_121
    add-int/lit8 p1, p1, 0x1

    .line 292
    goto :goto_112

    .line 293
    :cond_124
    :goto_124
    if-eqz v7, :cond_127

    .line 295
    array-length v4, v5

    .line 296
    :cond_127
    new-instance p1, Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    :goto_12c
    iget v5, p0, Lv0/a$b;->b:I

    .line 303
    if-ge v4, v5, :cond_148

    .line 305
    iget-object v5, p0, Lv0/a$b;->c:[B

    .line 307
    aget-byte v5, v5, v4

    .line 309
    if-nez v5, :cond_137

    .line 311
    goto :goto_148

    .line 312
    :cond_137
    const/16 v6, 0x20

    .line 314
    if-lt v5, v6, :cond_140

    .line 316
    int-to-char v5, v5

    .line 317
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    goto :goto_145

    .line 321
    :cond_140
    const/16 v5, 0x3f

    .line 323
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :goto_145
    add-int/lit8 v4, v4, 0x1

    .line 328
    goto :goto_12c

    .line 329
    :cond_148
    :goto_148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object p1
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_14c} :catch_c8
    .catchall {:try_start_10a .. :try_end_14c} :catchall_1a2

    .line 333
    :try_start_14c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    .line 336
    goto :goto_154

    .line 337
    :catch_150
    move-exception v2

    .line 338
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :goto_154
    return-object p1

    .line 342
    :pswitch_155  #0x1, 0x6
    :try_start_155
    iget-object p1, p0, Lv0/a$b;->c:[B

    .line 344
    array-length v5, p1

    .line 345
    if-ne v5, v7, :cond_175

    .line 347
    aget-byte v5, p1, v4

    .line 349
    if-ltz v5, :cond_175

    .line 351
    if-gt v5, v7, :cond_175

    .line 353
    new-instance p1, Ljava/lang/String;

    .line 355
    new-array v6, v7, [C

    .line 357
    add-int/lit8 v5, v5, 0x30

    .line 359
    int-to-char v5, v5

    .line 360
    aput-char v5, v6, v4

    .line 362
    invoke-direct {p1, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_16c} :catch_c8
    .catchall {:try_start_155 .. :try_end_16c} :catchall_1a2

    .line 365
    :try_start_16c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_170

    .line 368
    goto :goto_174

    .line 369
    :catch_170
    move-exception v2

    .line 370
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :goto_174
    return-object p1

    .line 374
    :cond_175
    :try_start_175
    new-instance v4, Ljava/lang/String;

    .line 376
    sget-object v5, Lv0/a;->z:Ljava/nio/charset/Charset;

    .line 378
    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_17c} :catch_c8
    .catchall {:try_start_175 .. :try_end_17c} :catchall_1a2

    .line 381
    :try_start_17c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_180

    .line 384
    goto :goto_184

    .line 385
    :catch_180
    move-exception p1

    .line 386
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    :goto_184
    return-object v4

    .line 390
    :goto_185
    :try_start_185
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_189

    .line 393
    goto :goto_18d

    .line 394
    :catch_189
    move-exception p1

    .line 395
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    :goto_18d
    return-object v2

    .line 399
    :catchall_18e
    move-exception p1

    .line 400
    goto :goto_1a4

    .line 401
    :catch_190
    move-exception p1

    .line 402
    move-object v3, v2

    .line 403
    :goto_192
    :try_start_192
    const-string v4, "IOException occurred during reading a value"

    .line 405
    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_197
    .catchall {:try_start_192 .. :try_end_197} :catchall_1a2

    .line 408
    if-eqz v3, :cond_1a1

    .line 410
    :try_start_199
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_19d

    .line 413
    goto :goto_1a1

    .line 414
    :catch_19d
    move-exception p1

    .line 415
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    :cond_1a1
    :goto_1a1
    return-object v2

    .line 419
    :catchall_1a2
    move-exception p1

    .line 420
    move-object v2, v3

    .line 421
    :goto_1a4
    if-eqz v2, :cond_1ae

    .line 423
    :try_start_1a6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_1aa

    .line 426
    goto :goto_1ae

    .line 427
    :catch_1aa
    move-exception v2

    .line 428
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    :cond_1ae
    :goto_1ae
    throw p1

    .line 432
    nop

    .line 433
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

    .line 1
    const-string v0, "("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lv0/a;->p:[Ljava/lang/String;

    .line 9
    iget v2, p0, Lv0/a$b;->a:I

    .line 11
    aget-object v1, v1, v2

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", data length:"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lv0/a$b;->c:[B

    .line 23
    array-length v1, v1

    .line 24
    const-string v2, ")"

    .line 26
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
