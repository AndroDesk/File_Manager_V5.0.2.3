.class public Lcom/miui/maml/animation/interpolater/QuadEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "QuadEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_e

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    :cond_e
    const/high16 v2, -0x41000000  # -0.5f

    sub-float/2addr p1, v1

    sub-float v0, p1, v0

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    return v0
.end method
