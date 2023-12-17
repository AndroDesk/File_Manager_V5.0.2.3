.class public final Ls1/j;
.super Ljava/lang/Object;
.source "RC4.java"


# instance fields
.field public final synthetic a:I

.field public final b:[I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    iput p1, p0, Ls1/j;->a:I

    const/16 v0, 0x100

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, v0, [I

    iput-object p1, p0, Ls1/j;->b:[I

    return-void

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, v0, [I

    iput-object p1, p0, Ls1/j;->b:[I

    return-void
.end method


# virtual methods
.method public final a([BII[BI)V
    .registers 12

    iget v0, p0, Ls1/j;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_6c

    goto :goto_39

    :goto_7
    :pswitch_7  #0x0
    if-ge v1, p3, :cond_38

    iget v0, p0, Ls1/j;->c:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ls1/j;->c:I

    iget-object v2, p0, Ls1/j;->b:[I

    aget v3, v2, v0

    iget v4, p0, Ls1/j;->d:I

    add-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ls1/j;->d:I

    aget v5, v2, v4

    aput v5, v2, v0

    aput v3, v2, v4

    aget v0, v2, v0

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, p5, 0x1

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    aget v0, v2, v0

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v1, v1, 0x1

    move p5, v3

    move p2, v4

    goto :goto_7

    :cond_38
    return-void

    :goto_39
    if-ge v1, p3, :cond_6a

    iget v0, p0, Ls1/j;->c:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ls1/j;->c:I

    iget-object v2, p0, Ls1/j;->b:[I

    aget v3, v2, v0

    iget v4, p0, Ls1/j;->d:I

    add-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Ls1/j;->d:I

    aget v5, v2, v4

    aput v5, v2, v0

    aput v3, v2, v4

    aget v0, v2, v0

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, p5, 0x1

    add-int/lit8 v4, p2, 0x1

    aget-byte p2, p1, p2

    aget v0, v2, v0

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v1, v1, 0x1

    move p5, v3

    move p2, v4

    goto :goto_39

    :cond_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final b([B)V
    .registers 10

    iget v0, p0, Ls1/j;->a:I

    const/16 v1, 0x100

    const/4 v2, 0x0

    const-string v3, "Invalid user key length"

    const-string v4, "Null user key"

    packed-switch v0, :pswitch_data_86

    goto :goto_49

    :pswitch_d  #0x0
    if-eqz p1, :cond_43

    array-length v0, p1

    if-eqz v0, :cond_3d

    iput v2, p0, Ls1/j;->c:I

    iput v2, p0, Ls1/j;->d:I

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_20

    iget-object v4, p0, Ls1/j;->b:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_20
    move v3, v2

    move v4, v3

    :goto_22
    if-ge v2, v1, :cond_3c

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Ls1/j;->b:[I

    aget v7, v6, v2

    add-int/2addr v5, v7

    add-int/2addr v5, v4

    and-int/lit16 v4, v5, 0xff

    aget v5, v6, v4

    aput v5, v6, v2

    aput v7, v6, v4

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_3c
    return-void

    :cond_3d
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_49
    if-eqz p1, :cond_7f

    array-length v0, p1

    if-eqz v0, :cond_79

    iput v2, p0, Ls1/j;->c:I

    iput v2, p0, Ls1/j;->d:I

    move v3, v2

    :goto_53
    if-ge v3, v1, :cond_5c

    iget-object v4, p0, Ls1/j;->b:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_5c
    move v3, v2

    move v4, v3

    :goto_5e
    if-ge v2, v1, :cond_78

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Ls1/j;->b:[I

    aget v7, v6, v2

    add-int/2addr v5, v7

    add-int/2addr v5, v4

    and-int/lit16 v4, v5, 0xff

    aget v5, v6, v4

    aput v5, v6, v2

    aput v7, v6, v4

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_78
    return-void

    :cond_79
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7f
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_d  #00000000
    .end packed-switch
.end method
