.class public Lt0/c;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field public a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La/b;->k:La/b;

    if-nez v0, :cond_e

    new-instance v0, La/b;

    invoke-direct {v0}, La/b;-><init>()V

    sput-object v0, La/b;->k:La/b;

    :cond_e
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 4

    iget v0, p0, Lt0/c;->d:I

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lt0/c;->c:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public final b(ILjava/nio/ByteBuffer;)V
    .registers 3

    iput-object p2, p0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_16

    iput p1, p0, Lt0/c;->a:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lt0/c;->c:I

    iget-object p2, p0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput p1, p0, Lt0/c;->d:I

    goto :goto_1d

    :cond_16
    const/4 p1, 0x0

    iput p1, p0, Lt0/c;->a:I

    iput p1, p0, Lt0/c;->c:I

    iput p1, p0, Lt0/c;->d:I

    :goto_1d
    return-void
.end method
