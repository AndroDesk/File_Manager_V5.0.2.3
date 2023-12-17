.class public Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SeekBarGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekBarGradientState"
.end annotation


# instance fields
.field public mParent:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    invoke-virtual {p0, v1, v1, p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 4
    :cond_6
    invoke-virtual {p0, p1, v1, p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 5
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_6
    invoke-virtual {p0, p1, p2, p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    .line 6
    return-object v0
.end method

.method public setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3
    return-void
.end method
