.class public final Landroidx/constraintlayout/widget/c$d;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/c$d;->c:I

    .line 11
    const/high16 v0, 0x3f800000  # 1.0f

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 15
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 17
    iput v0, p0, Landroidx/constraintlayout/widget/c$d;->e:F

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    sget-object v0, Lz/d;->PropertySet:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/c$d;->a:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_e
    if-ge v0, p2, :cond_50

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 20
    move-result v1

    .line 21
    sget v2, Lz/d;->PropertySet_android_alpha:I

    .line 23
    if-ne v1, v2, :cond_21

    .line 25
    iget v2, p0, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 30
    move-result v1

    .line 31
    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->d:F

    .line 33
    goto :goto_4d

    .line 34
    :cond_21
    sget v2, Lz/d;->PropertySet_android_visibility:I

    .line 36
    if-ne v1, v2, :cond_34

    .line 38
    iget v2, p0, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 40
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 43
    move-result v1

    .line 44
    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 46
    sget-object v2, Landroidx/constraintlayout/widget/c;->f:[I

    .line 48
    aget v1, v2, v1

    .line 50
    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->b:I

    .line 52
    goto :goto_4d

    .line 53
    :cond_34
    sget v2, Lz/d;->PropertySet_visibilityMode:I

    .line 55
    if-ne v1, v2, :cond_41

    .line 57
    iget v2, p0, Landroidx/constraintlayout/widget/c$d;->c:I

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 62
    move-result v1

    .line 63
    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->c:I

    .line 65
    goto :goto_4d

    .line 66
    :cond_41
    sget v2, Lz/d;->PropertySet_motionProgress:I

    .line 68
    if-ne v1, v2, :cond_4d

    .line 70
    iget v2, p0, Landroidx/constraintlayout/widget/c$d;->e:F

    .line 72
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 75
    move-result v1

    .line 76
    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->e:F

    .line 78
    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_e

    .line 81
    :cond_50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method
