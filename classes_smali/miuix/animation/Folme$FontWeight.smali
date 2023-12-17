.class public interface abstract Lmiuix/animation/Folme$FontWeight;
.super Ljava/lang/Object;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/Folme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FontWeight"
.end annotation


# static fields
.field public static final BOLD:I

.field public static final DEMI_BOLD:I

.field public static final EXTRA_LIGHT:I

.field public static final HEAVY:I

.field public static final LIGHT:I

.field public static final MEDIUM:I

.field public static final NORMAL:I

.field public static final REGULAR:I

.field public static final SEMI_BOLD:I

.field public static final THIN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->BOLD:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->DEMI_BOLD:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->EXTRA_LIGHT:I

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->HEAVY:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->LIGHT:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->MEDIUM:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->NORMAL:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->REGULAR:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontWeight;->SEMI_BOLD:I

    return-void
.end method
