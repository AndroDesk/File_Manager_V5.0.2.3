.class public Lmiuix/view/animation/CubicEaseInInterpolator;
.super Ljava/lang/Object;
.source "CubicEaseInInterpolator.java"

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
    .registers 3

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method
