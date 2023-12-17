.class public interface abstract annotation Lcom/google/android/flexbox/JustifyContent;
.super Ljava/lang/Object;
.source "JustifyContent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CENTER:I

.field public static final FLEX_END:I

.field public static final FLEX_START:I

.field public static final SPACE_AROUND:I

.field public static final SPACE_BETWEEN:I

.field public static final SPACE_EVENLY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/JustifyContent;->CENTER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/JustifyContent;->FLEX_END:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/JustifyContent;->FLEX_START:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/JustifyContent;->SPACE_AROUND:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/JustifyContent;->SPACE_BETWEEN:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/JustifyContent;->SPACE_EVENLY:I

    return-void
.end method
