.class public final Lmiuix/animation/property/FloatValueHolder;
.super Ljava/lang/Object;
.source "FloatValueHolder.java"


# instance fields
.field private mValue:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/animation/property/FloatValueHolder;->mValue:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmiuix/animation/property/FloatValueHolder;->mValue:F

    .line 5
    invoke-virtual {p0, p1}, Lmiuix/animation/property/FloatValueHolder;->setValue(F)V

    return-void
.end method


# virtual methods
.method public getValue()F
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/animation/property/FloatValueHolder;->mValue:F

    .line 3
    return v0
.end method

.method public setValue(F)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/animation/property/FloatValueHolder;->mValue:F

    .line 3
    return-void
.end method
