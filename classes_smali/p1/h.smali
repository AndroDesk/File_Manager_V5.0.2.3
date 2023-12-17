.class public final Lp1/h;
.super Ljava/lang/Object;
.source "RC4Encoder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:[B

.field public final b:Ls1/j;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lp1/h;->a:[B

    .line 6
    new-instance v0, Ls1/j;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Ls1/j;-><init>(I)V

    .line 12
    iput-object v0, p0, Lp1/h;->b:Ls1/j;

    .line 14
    invoke-virtual {v0, p1}, Ls1/j;->b([B)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lp1/h;->b:Ls1/j;

    .line 3
    iget-object v1, p0, Lp1/h;->a:[B

    .line 5
    invoke-virtual {v0, v1}, Ls1/j;->b([B)V
    :try_end_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_7

    .line 8
    :catch_7
    return-void
.end method

.method public final b(J)V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lp1/h;->b:Ls1/j;

    .line 3
    iget-object v1, p0, Lp1/h;->a:[B

    .line 5
    invoke-virtual {v0, v1}, Ls1/j;->b([B)V

    .line 8
    iget-object v0, p0, Lp1/h;->b:Ls1/j;

    .line 10
    const-wide/16 v1, 0x0

    .line 12
    :goto_b
    cmp-long v3, v1, p1

    .line 14
    if-gez v3, :cond_2c

    .line 16
    iget v3, v0, Ls1/j;->c:I

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 22
    iput v3, v0, Ls1/j;->c:I

    .line 24
    iget-object v4, v0, Ls1/j;->b:[I

    .line 26
    aget v5, v4, v3

    .line 28
    iget v6, v0, Ls1/j;->d:I

    .line 30
    add-int/2addr v6, v5

    .line 31
    and-int/lit16 v6, v6, 0xff

    .line 33
    iput v6, v0, Ls1/j;->d:I

    .line 35
    aget v7, v4, v6

    .line 37
    aput v7, v4, v3

    .line 39
    aput v5, v4, v6

    .line 41
    const-wide/16 v3, 0x1

    .line 43
    add-long/2addr v1, v3

    .line 44
    goto :goto_b

    .line 45
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_2f} :catch_2f

    .line 48
    :catch_2f
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Lp1/h;

    .line 3
    iget-object v1, p0, Lp1/h;->a:[B

    .line 5
    invoke-direct {v0, v1}, Lp1/h;-><init>([B)V
    :try_end_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_8

    .line 8
    goto :goto_9

    .line 9
    :catch_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return-object v0
.end method
