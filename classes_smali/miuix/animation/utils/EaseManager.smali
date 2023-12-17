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

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createTimeInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .registers 3

    .line 1
    packed-switch p0, :pswitch_data_b6

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_5  #0x1a
    new-instance p0, Lmiuix/view/animation/BounceEaseInOutInterpolator;

    .line 8
    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInOutInterpolator;-><init>()V

    .line 11
    return-object p0

    .line 12
    :pswitch_b  #0x19
    new-instance p0, Lmiuix/view/animation/BounceEaseOutInterpolator;

    .line 14
    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    .line 17
    return-object p0

    .line 18
    :pswitch_11  #0x18
    new-instance p0, Lmiuix/view/animation/BounceEaseInInterpolator;

    .line 20
    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInInterpolator;-><init>()V

    .line 23
    return-object p0

    .line 24
    :pswitch_17  #0x17
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    .line 26
    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 29
    return-object p0

    .line 30
    :pswitch_1d  #0x16
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    .line 32
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 35
    return-object p0

    .line 36
    :pswitch_23  #0x15
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 38
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 41
    return-object p0

    .line 42
    :pswitch_29  #0x14
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 44
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 47
    return-object p0

    .line 48
    :pswitch_2f  #0x13
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;

    .line 50
    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    .line 53
    return-object p0

    .line 54
    :pswitch_35  #0x12
    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    .line 56
    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    .line 59
    return-object p0

    .line 60
    :pswitch_3b  #0x11
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    .line 62
    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    .line 65
    return-object p0

    .line 66
    :pswitch_41  #0x10
    new-instance p0, Lmiuix/view/animation/SineEaseInOutInterpolator;

    .line 68
    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 71
    return-object p0

    .line 72
    :pswitch_47  #0xf
    new-instance p0, Lmiuix/view/animation/SineEaseOutInterpolator;

    .line 74
    invoke-direct {p0}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    .line 77
    return-object p0

    .line 78
    :pswitch_4d  #0xe
    new-instance p0, Lmiuix/view/animation/SineEaseInInterpolator;

    .line 80
    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInInterpolator;-><init>()V

    .line 83
    return-object p0

    .line 84
    :pswitch_53  #0xd
    new-instance p0, Lmiuix/view/animation/QuinticEaseInOutInterpolator;

    .line 86
    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInOutInterpolator;-><init>()V

    .line 89
    return-object p0

    .line 90
    :pswitch_59  #0xc
    new-instance p0, Lmiuix/view/animation/QuinticEaseOutInterpolator;

    .line 92
    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseOutInterpolator;-><init>()V

    .line 95
    return-object p0

    .line 96
    :pswitch_5f  #0xb
    new-instance p0, Lmiuix/view/animation/QuinticEaseInInterpolator;

    .line 98
    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInInterpolator;-><init>()V

    .line 101
    return-object p0

    .line 102
    :pswitch_65  #0xa
    new-instance p0, Lmiuix/view/animation/QuarticEaseInOutInterpolator;

    .line 104
    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    .line 107
    return-object p0

    .line 108
    :pswitch_6b  #0x9
    new-instance p0, Lmiuix/view/animation/QuarticEaseOutInterpolator;

    .line 110
    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseOutInterpolator;-><init>()V

    .line 113
    return-object p0

    .line 114
    :pswitch_71  #0x8
    new-instance p0, Lmiuix/view/animation/QuarticEaseInInterpolator;

    .line 116
    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInInterpolator;-><init>()V

    .line 119
    return-object p0

    .line 120
    :pswitch_77  #0x7
    new-instance p0, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 122
    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    .line 125
    return-object p0

    .line 126
    :pswitch_7d  #0x6
    new-instance p0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 128
    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 131
    return-object p0

    .line 132
    :pswitch_83  #0x5
    new-instance p0, Lmiuix/view/animation/CubicEaseInInterpolator;

    .line 134
    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    .line 137
    return-object p0

    .line 138
    :pswitch_89  #0x4
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;

    .line 140
    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    .line 143
    return-object p0

    .line 144
    :pswitch_8f  #0x3
    new-instance p0, Lmiuix/view/animation/QuadraticEaseOutInterpolator;

    .line 146
    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    .line 149
    return-object p0

    .line 150
    :pswitch_95  #0x2
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInInterpolator;

    .line 152
    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInInterpolator;-><init>()V

    .line 155
    return-object p0

    .line 156
    :pswitch_9b  #0x0
    new-instance p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 158
    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 161
    const/4 v0, 0x0

    .line 162
    aget v0, p1, v0

    .line 164
    invoke-virtual {p0, v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 167
    move-result-object p0

    .line 168
    const/4 v0, 0x1

    .line 169
    aget p1, p1, v0

    .line 171
    invoke-virtual {p0, p1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 174
    move-result-object p0

    .line 175
    return-object p0

    .line 176
    :pswitch_af  #0xffffffff, 0x1
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    .line 178
    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 181
    return-object p0

    .line 182
    nop

    .line 183
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

    .line 1
    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;
    .registers 4

    if-eqz p0, :cond_26

    .line 3
    sget-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    if-nez v1, :cond_25

    .line 4
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    iget-object v2, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[F

    invoke-static {v1, v2}, Lmiuix/animation/utils/EaseManager;->createTimeInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 5
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

    .line 1
    new-instance v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 3
    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    .line 6
    return-object v0
.end method

.method public static varargs getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p0, v0, :cond_1f

    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-le v0, v2, :cond_e

    .line 9
    array-length v0, p1

    .line 10
    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    .line 13
    move-result-object v0

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    new-array v0, v1, [F

    .line 17
    :goto_10
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 20
    move-result-object p0

    .line 21
    array-length v0, p1

    .line 22
    if-lez v0, :cond_1e

    .line 24
    aget p1, p1, v1

    .line 26
    float-to-int p1, p1

    .line 27
    int-to-long v0, p1

    .line 28
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 31
    :cond_1e
    return-object p0

    .line 32
    :cond_1f
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 34
    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 37
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
