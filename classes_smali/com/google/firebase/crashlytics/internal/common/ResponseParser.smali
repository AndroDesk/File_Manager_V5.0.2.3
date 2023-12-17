.class public Lcom/google/firebase/crashlytics/internal/common/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# static fields
.field public static final ResponseActionDiscard:I

.field public static final ResponseActionRetry:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/common/ResponseParser;->ResponseActionDiscard:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/common/ResponseParser;->ResponseActionRetry:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(I)I
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-lt p0, v1, :cond_a

    const/16 v1, 0x12b

    if-gt p0, v1, :cond_a

    return v0

    :cond_a
    const/16 v1, 0x12c

    const/4 v2, 0x1

    if-lt p0, v1, :cond_14

    const/16 v1, 0x18f

    if-gt p0, v1, :cond_14

    return v2

    :cond_14
    const/16 v1, 0x190

    if-lt p0, v1, :cond_1d

    const/16 v1, 0x1f3

    if-gt p0, v1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method
