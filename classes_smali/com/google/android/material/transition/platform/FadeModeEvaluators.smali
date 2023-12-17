.class Lcom/google/android/material/transition/platform/FadeModeEvaluators;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"


# static fields
.field private static final CROSS:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final IN:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final OUT:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final THROUGH:Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators$1;

    .line 3
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeModeEvaluators$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 8
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators$2;

    .line 10
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeModeEvaluators$2;-><init>()V

    .line 13
    sput-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 15
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators$3;

    .line 17
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeModeEvaluators$3;-><init>()V

    .line 20
    sput-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->CROSS:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 22
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators$4;

    .line 24
    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeModeEvaluators$4;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->THROUGH:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(IZ)Lcom/google/android/material/transition/platform/FadeModeEvaluator;
    .registers 3

    .line 1
    if-eqz p0, :cond_25

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1d

    .line 6
    const/4 p1, 0x2

    .line 7
    if-eq p0, p1, :cond_1a

    .line 9
    const/4 p1, 0x3

    .line 10
    if-ne p0, p1, :cond_e

    .line 12
    sget-object p0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->THROUGH:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "Invalid fade mode: "

    .line 19
    invoke-static {v0, p0}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    :cond_1a
    sget-object p0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->CROSS:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 29
    return-object p0

    .line 30
    :cond_1d
    if-eqz p1, :cond_22

    .line 32
    sget-object p0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    sget-object p0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 37
    :goto_24
    return-object p0

    .line 38
    :cond_25
    if-eqz p1, :cond_2a

    .line 40
    sget-object p0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    sget-object p0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 45
    :goto_2c
    return-object p0
.end method
