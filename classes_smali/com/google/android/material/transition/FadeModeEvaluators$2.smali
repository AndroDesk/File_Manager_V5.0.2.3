.class final Lcom/google/android/material/transition/FadeModeEvaluators$2;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lcom/google/android/material/transition/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/FadeModeEvaluators;
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
.method public evaluate(FFF)Lcom/google/android/material/transition/FadeModeResult;
    .registers 6

    .line 1
    const/16 v0, 0xff

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p2, p3, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(IIFFF)I

    .line 7
    move-result p1

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/material/transition/FadeModeResult;->startOnTop(II)Lcom/google/android/material/transition/FadeModeResult;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
