.class public final Lp4/g;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Lp4/g;

.field public g:Lp4/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lp4/g;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp4/g;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp4/g;->d:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/g;->a:[B

    iput p2, p0, Lp4/g;->b:I

    iput p3, p0, Lp4/g;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp4/g;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp4/g;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lp4/g;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    move-object v2, v0

    goto :goto_8

    :cond_7
    move-object v2, v1

    :goto_8
    iget-object v3, p0, Lp4/g;->g:Lp4/g;

    iput-object v0, v3, Lp4/g;->f:Lp4/g;

    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    iput-object v3, v0, Lp4/g;->g:Lp4/g;

    iput-object v1, p0, Lp4/g;->f:Lp4/g;

    iput-object v1, p0, Lp4/g;->g:Lp4/g;

    return-object v2
.end method

.method public final b(Lp4/g;)V
    .registers 3

    iput-object p0, p1, Lp4/g;->g:Lp4/g;

    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    iput-object v0, p1, Lp4/g;->f:Lp4/g;

    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    iput-object p1, v0, Lp4/g;->g:Lp4/g;

    iput-object p1, p0, Lp4/g;->f:Lp4/g;

    return-void
.end method

.method public final c()Lp4/g;
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp4/g;->d:Z

    new-instance v0, Lp4/g;

    iget-object v1, p0, Lp4/g;->a:[B

    iget v2, p0, Lp4/g;->b:I

    iget v3, p0, Lp4/g;->c:I

    invoke-direct {v0, v1, v2, v3}, Lp4/g;-><init>([BII)V

    return-object v0
.end method

.method public final d(Lp4/g;I)V
    .registers 7

    iget-boolean v0, p1, Lp4/g;->e:Z

    if-eqz v0, :cond_4a

    iget v0, p1, Lp4/g;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_34

    iget-boolean v1, p1, Lp4/g;->d:Z

    if-nez v1, :cond_2e

    add-int v1, v0, p2

    iget v3, p1, Lp4/g;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_28

    iget-object v1, p1, Lp4/g;->a:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lp4/g;->c:I

    iget v1, p1, Lp4/g;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lp4/g;->c:I

    iput v2, p1, Lp4/g;->b:I

    goto :goto_34

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_34
    :goto_34
    iget-object v0, p0, Lp4/g;->a:[B

    iget v1, p0, Lp4/g;->b:I

    iget-object v2, p1, Lp4/g;->a:[B

    iget v3, p1, Lp4/g;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lp4/g;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lp4/g;->c:I

    iget p1, p0, Lp4/g;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lp4/g;->b:I

    return-void

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
