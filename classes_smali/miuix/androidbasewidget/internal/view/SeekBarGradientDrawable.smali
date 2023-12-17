.class public Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SeekBarGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    }
.end annotation


# static fields
.field public static final HIGH_STIFFNESS:F = 986.96f


# instance fields
.field private mHeight:I

.field public mSeekBarGradientState:Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mWidth:I

    .line 3
    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mHeight:I

    .line 4
    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->newSeekBarGradientState()Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .registers 5

    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mWidth:I

    .line 8
    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mHeight:I

    if-nez p1, :cond_11

    .line 9
    iget-object p1, p3, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_20

    :cond_11
    if-nez p2, :cond_1a

    .line 10
    iget-object p2, p3, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_20

    .line 11
    :cond_1a
    iget-object v0, p3, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 12
    :goto_20
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    iput-object p2, p3, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 13
    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->newSeekBarGradientState()Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    .line 14
    iget-object p3, p3, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mWidth:I

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mHeight:I

    .line 17
    instance-of p2, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_58

    .line 18
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_58
    return-void
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mSeekBarGradientState:Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    .line 3
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mHeight:I

    .line 3
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->mWidth:I

    .line 3
    return v0
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public newSeekBarGradientState()Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .registers 2

    .line 1
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;

    .line 3
    invoke-direct {v0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;-><init>()V

    .line 6
    return-object v0
.end method

.method public onStateChange([I)Z
    .registers 8

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onStateChange([I)Z

    .line 4
    move-result v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-ge v2, v1, :cond_14

    .line 10
    aget v4, p1, v2

    .line 12
    const v5, 0x10100a7

    .line 15
    if-ne v4, v5, :cond_11

    .line 17
    const/4 v3, 0x1

    .line 18
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    if-eqz v3, :cond_19

    .line 23
    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->startPressedAnim()V

    .line 26
    :cond_19
    if-nez v3, :cond_1e

    .line 28
    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->startUnPressedAnim()V

    .line 31
    :cond_1e
    return v0
.end method

.method public startPressedAnim()V
    .registers 1

    return-void
.end method

.method public startUnPressedAnim()V
    .registers 1

    return-void
.end method
