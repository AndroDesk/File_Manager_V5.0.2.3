.class public Lcom/miui/maml/animation/interpolater/QuadEaseOutInterpolater;
.super Ljava/lang/Object;
.source "QuadEaseOutInterpolater.java"

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
    .registers 4

    neg-float v0, p1

    const/high16 v1, 0x40000000  # 2.0f

    sub-float/2addr p1, v1

    mul-float/2addr p1, v0

    return p1
.end method
