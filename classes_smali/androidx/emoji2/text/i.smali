.class public final Landroidx/emoji2/text/i;
.super Ljava/lang/Object;
.source "EmojiMetadata.java"


# static fields
.field public static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lt0/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Landroidx/emoji2/text/o;

.field public volatile c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Landroidx/emoji2/text/i;->d:Ljava/lang/ThreadLocal;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/o;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/emoji2/text/i;->c:I

    .line 7
    iput-object p1, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    .line 9
    iput p2, p0, Landroidx/emoji2/text/i;->a:I

    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x10

    .line 7
    invoke-virtual {v0, v1}, Lt0/c;->a(I)I

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_20

    .line 13
    iget-object v2, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 15
    iget v0, v0, Lt0/c;->a:I

    .line 17
    add-int/2addr v1, v0

    .line 18
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v1

    .line 23
    add-int/lit8 v0, v0, 0x4

    .line 25
    mul-int/lit8 p1, p1, 0x4

    .line 27
    add-int/2addr p1, v0

    .line 28
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 31
    move-result p1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    :goto_21
    return p1
.end method

.method public final b()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x10

    .line 7
    invoke-virtual {v0, v1}, Lt0/c;->a(I)I

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1d

    .line 13
    iget v2, v0, Lt0/c;->a:I

    .line 15
    add-int/2addr v1, v2

    .line 16
    iget-object v2, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    iget-object v0, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 28
    move-result v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    :goto_1e
    return v0
.end method

.method public final c()Lt0/a;
    .registers 6

    .line 1
    sget-object v0, Landroidx/emoji2/text/i;->d:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lt0/a;

    .line 9
    if-nez v1, :cond_12

    .line 11
    new-instance v1, Lt0/a;

    .line 13
    invoke-direct {v1}, Lt0/a;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    .line 21
    iget-object v0, v0, Landroidx/emoji2/text/o;->a:Lt0/b;

    .line 23
    iget v2, p0, Landroidx/emoji2/text/i;->a:I

    .line 25
    const/4 v3, 0x6

    .line 26
    invoke-virtual {v0, v3}, Lt0/c;->a(I)I

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3a

    .line 32
    iget v4, v0, Lt0/c;->a:I

    .line 34
    add-int/2addr v3, v4

    .line 35
    iget-object v4, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 40
    move-result v4

    .line 41
    add-int/2addr v4, v3

    .line 42
    add-int/lit8 v4, v4, 0x4

    .line 44
    mul-int/lit8 v2, v2, 0x4

    .line 46
    add-int/2addr v2, v4

    .line 47
    iget-object v3, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 52
    move-result v3

    .line 53
    add-int/2addr v3, v2

    .line 54
    iget-object v0, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v1, v3, v0}, Lt0/c;->b(ILjava/nio/ByteBuffer;)V

    .line 59
    :cond_3a
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", id:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x4

    .line 23
    invoke-virtual {v1, v2}, Lt0/c;->a(I)I

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_27

    .line 30
    iget-object v4, v1, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 32
    iget v1, v1, Lt0/c;->a:I

    .line 34
    add-int/2addr v2, v1

    .line 35
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 38
    move-result v1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v1, v3

    .line 41
    :goto_28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", codepoints:"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Landroidx/emoji2/text/i;->b()I

    .line 56
    move-result v1

    .line 57
    :goto_38
    if-ge v3, v1, :cond_4d

    .line 59
    invoke-virtual {p0, v3}, Landroidx/emoji2/text/i;->a(I)I

    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, " "

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_38

    .line 78
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method
