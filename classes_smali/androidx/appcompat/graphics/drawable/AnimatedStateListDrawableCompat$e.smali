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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->b:I

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:[I

    if-eqz v1, :cond_10

    array-length v1, v1

    if-ge v1, v0, :cond_14

    :cond_10
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:[I

    :cond_14
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v2, v0, :cond_2c

    if-eqz p2, :cond_21

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    :cond_21
    move v4, v2

    :goto_22
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    aput v4, v1, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    iput v3, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->c:I

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 6

    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->c:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->b:I

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->a:[I

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_17

    aget v3, v1, v2

    if-lt p1, v3, :cond_17

    sub-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    if-ge v2, v0, :cond_1f

    int-to-float p1, p1

    iget v1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$e;->c:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    return v1
.end method
