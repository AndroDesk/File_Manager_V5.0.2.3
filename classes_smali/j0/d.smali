.class public final synthetic Lj0/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lj0/d;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    .line 1
    iget v0, p0, Lj0/d;->a:I

    .line 3
    packed-switch v0, :pswitch_data_2e

    .line 6
    goto :goto_25

    .line 7
    :pswitch_6  #0x0
    check-cast p1, [B

    .line 9
    check-cast p2, [B

    .line 11
    array-length v0, p1

    .line 12
    array-length v1, p2

    .line 13
    if-eq v0, v1, :cond_12

    .line 15
    array-length p1, p1

    .line 16
    array-length p2, p2

    .line 17
    sub-int/2addr p1, p2

    .line 18
    goto :goto_24

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :goto_14
    array-length v2, p1

    .line 22
    if-ge v1, v2, :cond_23

    .line 24
    aget-byte v2, p1, v1

    .line 26
    aget-byte v3, p2, v1

    .line 28
    if-eq v2, v3, :cond_20

    .line 30
    sub-int p1, v2, v3

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_14

    .line 36
    :cond_23
    move p1, v0

    .line 37
    :goto_24
    return p1

    .line 38
    :goto_25
    check-cast p1, Ljava/lang/Comparable;

    .line 40
    check-cast p2, Ljava/lang/Comparable;

    .line 42
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
