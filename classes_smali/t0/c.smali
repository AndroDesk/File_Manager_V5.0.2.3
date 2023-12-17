.class public Lt0/c;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field public a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, La/b;->k:La/b;

    .line 6
    if-nez v0, :cond_e

    .line 8
    new-instance v0, La/b;

    .line 10
    invoke-direct {v0}, La/b;-><init>()V

    .line 13
    sput-object v0, La/b;->k:La/b;

    .line 15
    :cond_e
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 4

    .line 1
    iget v0, p0, Lt0/c;->d:I

    .line 3
    if-ge p1, v0, :cond_e

    .line 5
    iget-object v0, p0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 7
    iget v1, p0, Lt0/c;->c:I

    .line 9
    add-int/2addr v1, p1

    .line 10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 13
    move-result p1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method public final b(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 3
    if-eqz p2, :cond_16

    .line 5
    iput p1, p0, Lt0/c;->a:I

    .line 7
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 10
    move-result p2

    .line 11
    sub-int/2addr p1, p2

    .line 12
    iput p1, p0, Lt0/c;->c:I

    .line 14
    iget-object p2, p0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lt0/c;->d:I

    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lt0/c;->a:I

    .line 26
    iput p1, p0, Lt0/c;->c:I

    .line 28
    iput p1, p0, Lt0/c;->d:I

    .line 30
    :goto_1d
    return-void
.end method
