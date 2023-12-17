.class public Lmiuix/core/util/WindowBaseInfo;
.super Ljava/lang/Object;
.source "WindowBaseInfo.java"


# static fields
.field public static final SCREEN_MODE_FREEFORM_BASE:I

.field public static final SCREEN_MODE_FULL:I

.field public static final SCREEN_MODE_SPLITSCREEN_BASE:I

.field public static final TYPE_COMPACT:I

.field public static final TYPE_LARGE:I

.field public static final TYPE_REGULAR:I

.field public static final TYPE_TINY:I

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public modeDirty:Z

.field public sizeDirty:Z

.field public windowMode:I

.field public windowSize:Landroid/graphics/Point;

.field public windowSizeDp:Landroid/graphics/Point;

.field public windowType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x90d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/WindowBaseInfo;->SCREEN_MODE_FREEFORM_BASE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/WindowBaseInfo;->SCREEN_MODE_FULL:I

    const v0, 0x93d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/WindowBaseInfo;->SCREEN_MODE_SPLITSCREEN_BASE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/WindowBaseInfo;->TYPE_COMPACT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/WindowBaseInfo;->TYPE_LARGE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/WindowBaseInfo;->TYPE_REGULAR:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/WindowBaseInfo;->TYPE_TINY:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/util/WindowBaseInfo;->TYPE_UNKNOWN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public isDirty()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
