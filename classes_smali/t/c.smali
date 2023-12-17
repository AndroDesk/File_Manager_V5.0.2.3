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
.method public constructor <init>(II)V
    .registers 5

    .line 1
    iput p2, p0, Lt/c;->a:I

    .line 3
    const-string v0, "The max pool size must be > 0"

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p2, v1, :cond_17

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    if-lez p1, :cond_11

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lt/c;->b:[Ljava/lang/Object;

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    :cond_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-lez p1, :cond_21

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lt/c;->b:[Ljava/lang/Object;

    .line 33
    return-void

    .line 34
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lt/c;->a:I

    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_28

    .line 7
    goto :goto_17

    .line 8
    :pswitch_7  #0x0
    iget v0, p0, Lt/c;->c:I

    .line 10
    if-lez v0, :cond_16

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 14
    iget-object v2, p0, Lt/c;->b:[Ljava/lang/Object;

    .line 16
    aget-object v3, v2, v0

    .line 18
    aput-object v1, v2, v0

    .line 20
    iput v0, p0, Lt/c;->c:I

    .line 22
    move-object v1, v3

    .line 23
    :cond_16
    return-object v1

    .line 24
    :goto_17
    iget v0, p0, Lt/c;->c:I

    .line 26
    if-lez v0, :cond_26

    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 30
    iget-object v2, p0, Lt/c;->b:[Ljava/lang/Object;

    .line 32
    aget-object v3, v2, v0

    .line 34
    aput-object v1, v2, v0

    .line 36
    iput v0, p0, Lt/c;->c:I

    .line 38
    move-object v1, v3

    .line 39
    :cond_26
    return-object v1

    .line 40
    nop

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    iget v0, p0, Lt/c;->a:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_40

    .line 8
    goto :goto_17

    .line 9
    :pswitch_8  #0x0
    iget v0, p0, Lt/c;->c:I

    .line 11
    iget-object v3, p0, Lt/c;->b:[Ljava/lang/Object;

    .line 13
    array-length v4, v3

    .line 14
    if-ge v0, v4, :cond_15

    .line 16
    aput-object p1, v3, v0

    .line 18
    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lt/c;->c:I

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v1, v2

    .line 23
    :goto_16
    return v1

    .line 24
    :goto_17
    move v0, v2

    .line 25
    :goto_18
    iget v3, p0, Lt/c;->c:I

    .line 27
    if-ge v0, v3, :cond_27

    .line 29
    iget-object v4, p0, Lt/c;->b:[Ljava/lang/Object;

    .line 31
    aget-object v4, v4, v0

    .line 33
    if-ne v4, p1, :cond_24

    .line 35
    move v0, v1

    .line 36
    goto :goto_28

    .line 37
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_18

    .line 40
    :cond_27
    move v0, v2

    .line 41
    :goto_28
    if-nez v0, :cond_37

    .line 43
    iget-object v0, p0, Lt/c;->b:[Ljava/lang/Object;

    .line 45
    array-length v4, v0

    .line 46
    if-ge v3, v4, :cond_35

    .line 48
    aput-object p1, v0, v3

    .line 50
    add-int/2addr v3, v1

    .line 51
    iput v3, p0, Lt/c;->c:I

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v1, v2

    .line 55
    :goto_36
    return v1

    .line 56
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    const-string v0, "Already in the pool!"

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 64
    nop

    .line 65
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
