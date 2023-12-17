.class public Lcom/android/fileexplorer/util/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/AnimationUtils$AnimationListenerAdapter;
    }
.end annotation


# static fields
.field public static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx0/b;

    .line 3
    invoke-direct {v0}, Lx0/b;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lerp(FFF)F
    .registers 3

    invoke-static {p1, p0, p2, p0}, Lf0/e;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static lerp(IIF)I
    .registers 3

    .line 1
    sub-int/2addr p1, p0

    .line 2
    int-to-float p1, p1

    .line 3
    mul-float/2addr p2, p1

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 7
    move-result p1

    .line 8
    add-int/2addr p1, p0

    .line 9
    return p1
.end method
