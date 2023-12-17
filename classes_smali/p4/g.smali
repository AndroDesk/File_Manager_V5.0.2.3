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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lp4/g;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lp4/g;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lp4/g;->d:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lp4/g;->a:[B

    .line 7
    iput p2, p0, Lp4/g;->b:I

    .line 8
    iput p3, p0, Lp4/g;->c:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lp4/g;->d:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lp4/g;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lp4/g;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_7

    .line 6
    move-object v2, v0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move-object v2, v1

    .line 9
    :goto_8
    iget-object v3, p0, Lp4/g;->g:Lp4/g;

    .line 11
    iput-object v0, v3, Lp4/g;->f:Lp4/g;

    .line 13
    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    .line 15
    iput-object v3, v0, Lp4/g;->g:Lp4/g;

    .line 17
    iput-object v1, p0, Lp4/g;->f:Lp4/g;

    .line 19
    iput-object v1, p0, Lp4/g;->g:Lp4/g;

    .line 21
    return-object v2
.end method

.method public final b(Lp4/g;)V
    .registers 3

    .line 1
    iput-object p0, p1, Lp4/g;->g:Lp4/g;

    .line 3
    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    .line 5
    iput-object v0, p1, Lp4/g;->f:Lp4/g;

    .line 7
    iget-object v0, p0, Lp4/g;->f:Lp4/g;

    .line 9
    iput-object p1, v0, Lp4/g;->g:Lp4/g;

    .line 11
    iput-object p1, p0, Lp4/g;->f:Lp4/g;

    .line 13
    return-void
.end method

.method public final c()Lp4/g;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp4/g;->d:Z

    .line 4
    new-instance v0, Lp4/g;

    .line 6
    iget-object v1, p0, Lp4/g;->a:[B

    .line 8
    iget v2, p0, Lp4/g;->b:I

    .line 10
    iget v3, p0, Lp4/g;->c:I

    .line 12
    invoke-direct {v0, v1, v2, v3}, Lp4/g;-><init>([BII)V

    .line 15
    return-object v0
.end method

.method public final d(Lp4/g;I)V
    .registers 7

    .line 1
    iget-boolean v0, p1, Lp4/g;->e:Z

    .line 3
    if-eqz v0, :cond_4a

    .line 5
    iget v0, p1, Lp4/g;->c:I

    .line 7
    add-int v1, v0, p2

    .line 9
    const/16 v2, 0x2000

    .line 11
    if-le v1, v2, :cond_34

    .line 13
    iget-boolean v1, p1, Lp4/g;->d:Z

    .line 15
    if-nez v1, :cond_2e

    .line 17
    add-int v1, v0, p2

    .line 19
    iget v3, p1, Lp4/g;->b:I

    .line 21
    sub-int/2addr v1, v3

    .line 22
    if-gt v1, v2, :cond_28

    .line 24
    iget-object v1, p1, Lp4/g;->a:[B

    .line 26
    sub-int/2addr v0, v3

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget v0, p1, Lp4/g;->c:I

    .line 33
    iget v1, p1, Lp4/g;->b:I

    .line 35
    sub-int/2addr v0, v1

    .line 36
    iput v0, p1, Lp4/g;->c:I

    .line 38
    iput v2, p1, Lp4/g;->b:I

    .line 40
    goto :goto_34

    .line 41
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 46
    throw p1

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 52
    throw p1

    .line 53
    :cond_34
    :goto_34
    iget-object v0, p0, Lp4/g;->a:[B

    .line 55
    iget v1, p0, Lp4/g;->b:I

    .line 57
    iget-object v2, p1, Lp4/g;->a:[B

    .line 59
    iget v3, p1, Lp4/g;->c:I

    .line 61
    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v0, p1, Lp4/g;->c:I

    .line 66
    add-int/2addr v0, p2

    .line 67
    iput v0, p1, Lp4/g;->c:I

    .line 69
    iget p1, p0, Lp4/g;->b:I

    .line 71
    add-int/2addr p1, p2

    .line 72
    iput p1, p0, Lp4/g;->b:I

    .line 74
    return-void

    .line 75
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 80
    throw p1
.end method
