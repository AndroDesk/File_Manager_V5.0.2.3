.class final Lcom/google/android/material/transition/platform/FadeModeEvaluators$4;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFF)Lcom/google/android/material/transition/platform/FadeModeResult;
    .registers 7

    .line 1
    const v0, 0x3eb33333  # 0.35f

    .line 4
    invoke-static {p3, p2, v0, p2}, Lf0/e;->a(FFFF)F

    .line 7
    move-result v0

    .line 8
    const/16 v1, 0xff

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2, p2, v0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    .line 14
    move-result p2

    .line 15
    invoke-static {v2, v1, v0, p3, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(IIFFF)I

    .line 18
    move-result p1

    .line 19
    invoke-static {p2, p1}, Lcom/google/android/material/transition/platform/FadeModeResult;->startOnTop(II)Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
