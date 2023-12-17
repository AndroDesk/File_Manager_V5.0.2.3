.class public interface abstract annotation Lmiuix/navigator/Visibility;
.super Ljava/lang/Object;
.source "Visibility.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final FULLY_VISIBLE:I

.field public static final INVISIBLE:I

.field public static final MASKED_MASK:I

.field public static final PARTIAL_VISIBLE:I

.field public static final VISIBLE_MASK:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/Visibility;->FULLY_VISIBLE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/Visibility;->INVISIBLE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/Visibility;->MASKED_MASK:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/Visibility;->PARTIAL_VISIBLE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/Visibility;->VISIBLE_MASK:I

    return-void
.end method
