.class public final synthetic Lj0/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lj0/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    iget v0, p0, Lj0/d;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_25

    :pswitch_6  #0x0
    check-cast p1, [B

    check-cast p2, [B

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_12

    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    goto :goto_24

    :cond_12
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    array-length v2, p1

    if-ge v1, v2, :cond_23

    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_20

    sub-int p1, v2, v3

    goto :goto_24

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_23
    move p1, v0

    :goto_24
    return p1

    :goto_25
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
