.class public Lcom/miui/maml/animation/interpolater/QuadEaseInInterpolater;
.super Ljava/lang/Object;
.source "QuadEaseInInterpolater.java"

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
    .registers 2

    mul-float/2addr p1, p1

    return p1
.end method
