.class public interface abstract Lcom/google/android/material/slider/LabelFormatter;
.super Ljava/lang/Object;
.source "LabelFormatter.java"


# static fields
.field public static final LABEL_FLOATING:I

.field public static final LABEL_GONE:I

.field public static final LABEL_WITHIN_BOUNDS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/material/slider/LabelFormatter;->LABEL_FLOATING:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/material/slider/LabelFormatter;->LABEL_GONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/material/slider/LabelFormatter;->LABEL_WITHIN_BOUNDS:I

    return-void
.end method


# virtual methods
.method public abstract getFormattedValue(F)Ljava/lang/String;
.end method
