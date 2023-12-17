.class public final Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:[I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->b:I

    .line 10
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:[I

    .line 12
    if-eqz v1, :cond_10

    .line 14
    array-length v1, v1

    .line 15
    if-ge v1, v0, :cond_14

    .line 17
    :cond_10
    new-array v1, v0, [I

    .line 19
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:[I

    .line 21
    :cond_14
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:[I

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_18
    if-ge v2, v0, :cond_2c

    .line 27
    if-eqz p2, :cond_21

    .line 29
    sub-int v4, v0, v2

    .line 31
    add-int/lit8 v4, v4, -0x1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v4, v2

    .line 35
    :goto_22
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 38
    move-result v4

    .line 39
    aput v4, v1, v2

    .line 41
    add-int/2addr v3, v4

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_18

    .line 45
    :cond_2c
    iput v3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->c:I

    .line 47
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 6

    .line 1
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->c:I

    .line 3
    int-to-float v0, v0

    .line 4
    mul-float/2addr p1, v0

    .line 5
    const/high16 v0, 0x3f000000  # 0.5f

    .line 7
    add-float/2addr p1, v0

    .line 8
    float-to-int p1, p1

    .line 9
    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->b:I

    .line 11
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:[I

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v0, :cond_17

    .line 16
    aget v3, v1, v2

    .line 18
    if-lt p1, v3, :cond_17

    .line 20
    sub-int/2addr p1, v3

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_d

    .line 24
    :cond_17
    if-ge v2, v0, :cond_1f

    .line 26
    int-to-float p1, p1

    .line 27
    iget v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->c:I

    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr p1, v1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :goto_20
    int-to-float v1, v2

    .line 34
    int-to-float v0, v0

    .line 35
    div-float/2addr v1, v0

    .line 36
    add-float/2addr v1, p1

    .line 37
    return v1
.end method
