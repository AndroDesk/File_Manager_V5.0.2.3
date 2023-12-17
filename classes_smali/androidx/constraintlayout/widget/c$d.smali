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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$d;->a:Z

    iput v0, p0, Landroidx/constraintlayout/widget/c$d;->b:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$d;->c:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/c$d;->d:F

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/widget/c$d;->e:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    sget-object v0, Lz/d;->PropertySet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/c$d;->a:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p2, :cond_50

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Lz/d;->PropertySet_android_alpha:I

    if-ne v1, v2, :cond_21

    iget v2, p0, Landroidx/constraintlayout/widget/c$d;->d:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->d:F

    goto :goto_4d

    :cond_21
    sget v2, Lz/d;->PropertySet_android_visibility:I

    if-ne v1, v2, :cond_34

    iget v2, p0, Landroidx/constraintlayout/widget/c$d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->b:I

    sget-object v2, Landroidx/constraintlayout/widget/c;->f:[I

    aget v1, v2, v1

    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->b:I

    goto :goto_4d

    :cond_34
    sget v2, Lz/d;->PropertySet_visibilityMode:I

    if-ne v1, v2, :cond_41

    iget v2, p0, Landroidx/constraintlayout/widget/c$d;->c:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->c:I

    goto :goto_4d

    :cond_41
    sget v2, Lz/d;->PropertySet_motionProgress:I

    if-ne v1, v2, :cond_4d

    iget v2, p0, Landroidx/constraintlayout/widget/c$d;->e:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/widget/c$d;->e:F

    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
