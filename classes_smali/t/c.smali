.class public Lt/c;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Ll0/d;


# instance fields
.field public final synthetic a:I

.field public final b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    iput p2, p0, Lt/c;->a:I

    const-string v0, "The max pool size must be > 0"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_11

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lt/c;->b:[Ljava/lang/Object;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_21

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lt/c;->b:[Ljava/lang/Object;

    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lt/c;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_28

    goto :goto_17

    :pswitch_7  #0x0
    iget v0, p0, Lt/c;->c:I

    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lt/c;->b:[Ljava/lang/Object;

    aget-object v3, v2, v0

    aput-object v1, v2, v0

    iput v0, p0, Lt/c;->c:I

    move-object v1, v3

    :cond_16
    return-object v1

    :goto_17
    iget v0, p0, Lt/c;->c:I

    if-lez v0, :cond_26

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lt/c;->b:[Ljava/lang/Object;

    aget-object v3, v2, v0

    aput-object v1, v2, v0

    iput v0, p0, Lt/c;->c:I

    move-object v1, v3

    :cond_26
    return-object v1

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 7

    iget v0, p0, Lt/c;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_40

    goto :goto_17

    :pswitch_8  #0x0
    iget v0, p0, Lt/c;->c:I

    iget-object v3, p0, Lt/c;->b:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v0, v4, :cond_15

    aput-object p1, v3, v0

    add-int/2addr v0, v1

    iput v0, p0, Lt/c;->c:I

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    return v1

    :goto_17
    move v0, v2

    :goto_18
    iget v3, p0, Lt/c;->c:I

    if-ge v0, v3, :cond_27

    iget-object v4, p0, Lt/c;->b:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-ne v4, p1, :cond_24

    move v0, v1

    goto :goto_28

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    move v0, v2

    :goto_28
    if-nez v0, :cond_37

    iget-object v0, p0, Lt/c;->b:[Ljava/lang/Object;

    array-length v4, v0

    if-ge v3, v4, :cond_35

    aput-object p1, v0, v3

    add-int/2addr v3, v1

    iput v3, p0, Lt/c;->c:I

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    return v1

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
