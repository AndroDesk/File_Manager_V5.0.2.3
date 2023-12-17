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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Ljava/nio/MappedByteBuffer;)Lt0/b;
    .registers 13

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Landroidx/emoji2/text/n$a;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/n$a;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    const/16 v3, 0x64

    const-string v4, "Cannot read metadata."

    if-gt v2, v3, :cond_9f

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroidx/emoji2/text/n$a;->b(I)V

    const/4 v3, 0x0

    move v5, v3

    :goto_21
    const-wide/16 v6, -0x1

    if-ge v5, v2, :cond_3e

    iget-object v8, v0, Landroidx/emoji2/text/n$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    invoke-virtual {v0}, Landroidx/emoji2/text/n$a;->a()J

    move-result-wide v9

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    const v11, 0x6d657461

    if-ne v11, v8, :cond_3b

    goto :goto_3f

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_3e
    move-wide v9, v6

    :goto_3f
    cmp-long v1, v9, v6

    if-eqz v1, :cond_99

    iget-object v1, v0, Landroidx/emoji2/text/n$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v9, v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/n$a;->b(I)V

    invoke-virtual {v0}, Landroidx/emoji2/text/n$a;->a()J

    move-result-wide v1

    :goto_59
    int-to-long v5, v3

    cmp-long v5, v5, v1

    if-gez v5, :cond_99

    iget-object v5, v0, Landroidx/emoji2/text/n$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v0}, Landroidx/emoji2/text/n$a;->a()J

    move-result-wide v6

    invoke-virtual {v0}, Landroidx/emoji2/text/n$a;->a()J

    const v8, 0x456d6a69

    if-eq v8, v5, :cond_79

    const v8, 0x656d6a69

    if-ne v8, v5, :cond_76

    goto :goto_79

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_79
    :goto_79
    add-long/2addr v6, v9

    long-to-int v0, v6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Lt0/b;

    invoke-direct {v0}, Lt0/b;-><init>()V

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, p0}, Lt0/c;->b(ILjava/nio/ByteBuffer;)V

    return-object v0

    :cond_99
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
