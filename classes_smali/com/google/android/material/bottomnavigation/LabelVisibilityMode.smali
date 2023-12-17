.class public interface abstract annotation Lcom/google/android/material/bottomnavigation/LabelVisibilityMode;
.super Ljava/lang/Object;
.source "LabelVisibilityMode.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final LABEL_VISIBILITY_AUTO:I

.field public static final LABEL_VISIBILITY_LABELED:I

.field public static final LABEL_VISIBILITY_SELECTED:I

.field public static final LABEL_VISIBILITY_UNLABELED:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/material/bottomnavigation/LabelVisibilityMode;->LABEL_VISIBILITY_AUTO:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/material/bottomnavigation/LabelVisibilityMode;->LABEL_VISIBILITY_LABELED:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/material/bottomnavigation/LabelVisibilityMode;->LABEL_VISIBILITY_SELECTED:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/material/bottomnavigation/LabelVisibilityMode;->LABEL_VISIBILITY_UNLABELED:I

    return-void
.end method
