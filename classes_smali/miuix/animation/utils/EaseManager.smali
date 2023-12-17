.class public Lmiuix/animation/utils/EaseManager;
.super Ljava/lang/Object;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/EaseManager$SpringInterpolator;,
        Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;,
        Lmiuix/animation/utils/EaseManager$EaseStyle;,
        Lmiuix/animation/utils/EaseManager$EaseStyleDef;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:J = 0x12cL

.field public static final sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/animation/TimeInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createTimeInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .registers 3

    packed-switch p0, :pswitch_data_b6

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0x1a
    new-instance p0, Lmiuix/view/animation/BounceEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_b  #0x19
    new-instance p0, Lmiuix/view/animation/BounceEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_11  #0x18
    new-instance p0, Lmiuix/view/animation/BounceEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_17  #0x17
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object p0

    :pswitch_1d  #0x16
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p0

    :pswitch_23  #0x15
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0

    :pswitch_29  #0x14
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p0

    :pswitch_2f  #0x13
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_35  #0x12
    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_3b  #0x11
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_41  #0x10
    new-instance p0, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_47  #0xf
    new-instance p0, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_4d  #0xe
    new-instance p0, Lmiuix/view/animation/SineEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_53  #0xd
    new-instance p0, Lmiuix/view/animation/QuinticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_59  #0xc
    new-instance p0, Lmiuix/view/animation/QuinticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_5f  #0xb
    new-instance p0, Lmiuix/view/animation/QuinticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_65  #0xa
    new-instance p0, Lmiuix/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_6b  #0x9
    new-instance p0, Lmiuix/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_71  #0x8
    new-instance p0, Lmiuix/view/animation/QuarticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_77  #0x7
    new-instance p0, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_7d  #0x6
    new-instance p0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_83  #0x5
    new-instance p0, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_89  #0x4
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    return-object p0

    :pswitch_8f  #0x3
    new-instance p0, Lmiuix/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    return-object p0

    :pswitch_95  #0x2
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInInterpolator;-><init>()V

    return-object p0

    :pswitch_9b  #0x0
    new-instance p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object p0

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object p0

    return-object p0

    :pswitch_af  #0xffffffff, 0x1
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p0

    nop

    :pswitch_data_b6
    .packed-switch -0x1
        :pswitch_af  #ffffffff
        :pswitch_9b  #00000000
        :pswitch_af  #00000001
        :pswitch_95  #00000002
        :pswitch_8f  #00000003
        :pswitch_89  #00000004
        :pswitch_83  #00000005
        :pswitch_7d  #00000006
        :pswitch_77  #00000007
        :pswitch_71  #00000008
        :pswitch_6b  #00000009
        :pswitch_65  #0000000a
        :pswitch_5f  #0000000b
        :pswitch_59  #0000000c
        :pswitch_53  #0000000d
        :pswitch_4d  #0000000e
        :pswitch_47  #0000000f
        :pswitch_41  #00000010
        :pswitch_3b  #00000011
        :pswitch_35  #00000012
        :pswitch_2f  #00000013
        :pswitch_29  #00000014
        :pswitch_23  #00000015
        :pswitch_1d  #00000016
        :pswitch_17  #00000017
        :pswitch_11  #00000018
        :pswitch_b  #00000019
        :pswitch_5  #0000001a
    .end packed-switch
.end method

.method public static varargs getInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .registers 2

    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;
    .registers 4

    if-eqz p0, :cond_26

    sget-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    if-nez v1, :cond_25

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    iget-object v2, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    invoke-static {v1, v2}, Lmiuix/animation/utils/EaseManager;->createTimeInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_25

    iget p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-object v1

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
    .registers 3

    new-instance v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    return-object v0
.end method

.method public static varargs getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 5

    const/4 v0, -0x1

    if-lt p0, v0, :cond_1f

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_e

    array-length v0, p1

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    goto :goto_10

    :cond_e
    new-array v0, v1, [F

    :goto_10
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    array-length v0, p1

    if-lez v0, :cond_1e

    aget p1, p1, v1

    float-to-int p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    :cond_1e
    return-object p0

    :cond_1f
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    return-object v0
.end method

.method public static isPhysicsStyle(I)Z
    .registers 2

    const/4 v0, -0x1

    if-ge p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method
