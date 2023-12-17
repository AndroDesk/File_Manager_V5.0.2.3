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

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/emoji2/text/i;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/o;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/i;->c:I

    iput-object p1, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    iput p2, p0, Landroidx/emoji2/text/i;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 5

    invoke-virtual {p0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lt0/c;->a(I)I

    move-result v1

    if-eqz v1, :cond_20

    iget-object v2, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget v0, v0, Lt0/c;->a:I

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method public final b()I
    .registers 4

    invoke-virtual {p0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lt0/c;->a(I)I

    move-result v1

    if-eqz v1, :cond_1d

    iget v2, v0, Lt0/c;->a:I

    add-int/2addr v1, v2

    iget-object v2, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v0, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public final c()Lt0/a;
    .registers 6

    sget-object v0, Landroidx/emoji2/text/i;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt0/a;

    if-nez v1, :cond_12

    new-instance v1, Lt0/a;

    invoke-direct {v1}, Lt0/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    iget-object v0, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/o;

    iget-object v0, v0, Landroidx/emoji2/text/o;->a:Lt0/b;

    iget v2, p0, Landroidx/emoji2/text/i;->a:I

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lt0/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_3a

    iget v4, v0, Lt0/c;->a:I

    add-int/2addr v3, v4

    iget-object v4, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    iget-object v3, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v0, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3, v0}, Lt0/c;->b(ILjava/nio/ByteBuffer;)V

    :cond_3a
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lt0/c;->a(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    iget-object v4, v1, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget v1, v1, Lt0/c;->a:I

    add-int/2addr v2, v1

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_28

    :cond_27
    move v1, v3

    :goto_28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codepoints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/i;->b()I

    move-result v1

    :goto_38
    if-ge v3, v1, :cond_4d

    invoke-virtual {p0, v3}, Landroidx/emoji2/text/i;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
