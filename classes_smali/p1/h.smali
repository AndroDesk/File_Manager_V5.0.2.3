.class public final Lp1/h;
.super Ljava/lang/Object;
.source "RC4Encoder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:[B

.field public final b:Ls1/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/h;->a:[B

    new-instance v0, Ls1/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/j;-><init>(I)V

    iput-object v0, p0, Lp1/h;->b:Ls1/j;

    invoke-virtual {v0, p1}, Ls1/j;->b([B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lp1/h;->b:Ls1/j;

    iget-object v1, p0, Lp1/h;->a:[B

    invoke-virtual {v0, v1}, Ls1/j;->b([B)V
    :try_end_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public final b(J)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lp1/h;->b:Ls1/j;

    iget-object v1, p0, Lp1/h;->a:[B

    invoke-virtual {v0, v1}, Ls1/j;->b([B)V

    iget-object v0, p0, Lp1/h;->b:Ls1/j;

    const-wide/16 v1, 0x0

    :goto_b
    cmp-long v3, v1, p1

    if-gez v3, :cond_2c

    iget v3, v0, Ls1/j;->c:I

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Ls1/j;->c:I

    iget-object v4, v0, Ls1/j;->b:[I

    aget v5, v4, v3

    iget v6, v0, Ls1/j;->d:I

    add-int/2addr v6, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v0, Ls1/j;->d:I

    aget v7, v4, v6

    aput v7, v4, v3

    aput v5, v4, v6

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_b

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_2f} :catch_2f

    :catch_2f
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    new-instance v0, Lp1/h;

    iget-object v1, p0, Lp1/h;->a:[B

    invoke-direct {v0, v1}, Lp1/h;-><init>([B)V
    :try_end_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method
