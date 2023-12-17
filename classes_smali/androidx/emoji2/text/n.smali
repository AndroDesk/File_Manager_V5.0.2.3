.class public final Landroidx/emoji2/text/n;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/n$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/nio/MappedByteBuffer;)Lt0/b;
    .registers 13

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/emoji2/text/n$a;

    .line 7
    invoke-direct {v0, p0}, Landroidx/emoji2/text/n$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 17
    move-result v2

    .line 18
    const v3, 0xffff

    .line 21
    and-int/2addr v2, v3

    .line 22
    const/16 v3, 0x64

    .line 24
    const-string v4, "Cannot read metadata."

    .line 26
    if-gt v2, v3, :cond_9f

    .line 28
    const/4 v3, 0x6

    .line 29
    invoke-virtual {v0, v3}, Landroidx/emoji2/text/n$a;->b(I)V

    .line 32
    const/4 v3, 0x0

    .line 33
    move v5, v3

    .line 34
    :goto_21
    const-wide/16 v6, -0x1

    .line 36
    if-ge v5, v2, :cond_3e

    .line 38
    iget-object v8, v0, Landroidx/emoji2/text/n$a;->a:Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 43
    move-result v8

    .line 44
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    .line 47
    invoke-virtual {v0}, Landroidx/emoji2/text/n$a;->a()J

    .line 50
    move-result-wide v9

    .line 51
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    .line 54
    const v11, 0x6d657461

    .line 57
    if-ne v11, v8, :cond_3b

    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    .line 62
    goto :goto_21

    .line 63
    :cond_3e
    move-wide v9, v6

    .line 64
    :goto_3f
    cmp-long v1, v9, v6

    .line 66
    if-eqz v1, :cond_99

    .line 68
    iget-object v1, v0, Landroidx/emoji2/text/n$a;->a:Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 73
    move-result v1

    .line 74
    int-to-long v1, v1

    .line 75
    sub-long v1, v9, v1

    .line 77
    long-to-int v1, v1

    .line 78
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    .line 81
    const/16 v1, 0xc

    .line 83
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    .line 86
    invoke-virtual {v0}, Landroidx/emoji2/text/n$a;->a()J

    .line 89
    move-result-wide v1

    .line 90
    :goto_59
    int-to-long v5, v3

    .line 91
    cmp-long v5, v5, v1

    .line 93
    if-gez v5, :cond_99

    .line 95
    iget-object v5, v0, Landroidx/emoji2/text/n$a;->a:Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 100
    move-result v5

    .line 101
    invoke-virtual {v0}, Landroidx/emoji2/text/n$a;->a()J

    .line 104
    move-result-wide v6

    .line 105
    invoke-virtual {v0}, Landroidx/emoji2/text/n$a;->a()J

    .line 108
    const v8, 0x456d6a69

    .line 111
    if-eq v8, v5, :cond_79

    .line 113
    const v8, 0x656d6a69

    .line 116
    if-ne v8, v5, :cond_76

    .line 118
    goto :goto_79

    .line 119
    :cond_76
    add-int/lit8 v3, v3, 0x1

    .line 121
    goto :goto_59

    .line 122
    :cond_79
    :goto_79
    add-long/2addr v6, v9

    .line 123
    long-to-int v0, v6

    .line 124
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    new-instance v0, Lt0/b;

    .line 129
    invoke-direct {v0}, Lt0/b;-><init>()V

    .line 132
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 134
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 140
    move-result v1

    .line 141
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 144
    move-result v1

    .line 145
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 148
    move-result v2

    .line 149
    add-int/2addr v2, v1

    .line 150
    invoke-virtual {v0, v2, p0}, Lt0/c;->b(ILjava/nio/ByteBuffer;)V

    .line 153
    return-object v0

    .line 154
    :cond_99
    new-instance p0, Ljava/io/IOException;

    .line 156
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    throw p0

    .line 160
    :cond_9f
    new-instance p0, Ljava/io/IOException;

    .line 162
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    throw p0
.end method
