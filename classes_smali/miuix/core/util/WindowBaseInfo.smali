.class public Lmiuix/core/util/WindowBaseInfo;
.super Ljava/lang/Object;
.source "WindowBaseInfo.java"


# static fields
.field public static final SCREEN_MODE_FREEFORM_BASE:I = 0x2000

.field public static final SCREEN_MODE_FULL:I = 0x0

.field public static final SCREEN_MODE_SPLITSCREEN_BASE:I = 0x1000

.field public static final TYPE_COMPACT:I = 0x1

.field public static final TYPE_LARGE:I = 0x3

.field public static final TYPE_REGULAR:I = 0x2

.field public static final TYPE_TINY:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field public modeDirty:Z

.field public sizeDirty:Z

.field public windowMode:I

.field public windowSize:Landroid/graphics/Point;

.field public windowSizeDp:Landroid/graphics/Point;

.field public windowType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 7
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 9
    new-instance v0, Landroid/graphics/Point;

    .line 11
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 16
    new-instance v0, Landroid/graphics/Point;

    .line 18
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 21
    iput-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 23
    return-void
.end method


# virtual methods
.method public isDirty()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method
