.class public Lmiuix/responsive/map/ResponsiveSpec;
.super Ljava/lang/Object;
.source "ResponsiveSpec.java"


# static fields
.field public static final EFFECTIVE_SCREEN_ORIENTATION_BOTH:I = 0x3

.field public static final EFFECTIVE_SCREEN_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final EFFECTIVE_SCREEN_ORIENTATION_NONE:I = 0x0

.field public static final EFFECTIVE_SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final HIDE_MODE_HALF_SCREEN:I = 0x2

.field public static final HIDE_MODE_INVALID:I = 0x0

.field public static final HIDE_MODE_NONE:I = 0x7

.field public static final HIDE_MODE_ONE_THIRD_SCREEN:I = 0x1

.field public static final HIDE_MODE_TWO_THIRD_SCREEN:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isScreenOrientationMatch(II)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
