.class public interface abstract annotation Lcom/google/android/flexbox/AlignContent;
.super Ljava/lang/Object;
.source "AlignContent.java"

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

.field public static final STRETCH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/AlignContent;->CENTER:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/AlignContent;->FLEX_END:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/AlignContent;->FLEX_START:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/AlignContent;->SPACE_AROUND:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/AlignContent;->SPACE_BETWEEN:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/flexbox/AlignContent;->STRETCH:I

    return-void
.end method
