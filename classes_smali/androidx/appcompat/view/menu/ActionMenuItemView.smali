.class public Landroidx/appcompat/view/menu/ActionMenuItemView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/o$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/appcompat/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ActionMenuItemView$b;,
        Landroidx/appcompat/view/menu/ActionMenuItemView$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/j;

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroidx/appcompat/view/menu/h$b;

.field public e:Landroidx/appcompat/view/menu/ActionMenuItemView$a;

.field public f:Landroidx/appcompat/view/menu/ActionMenuItemView$b;

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Z

    .line 5
    sget-object v1, Lh/j;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lh/j;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42000000  # 32.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000  # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 9
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:I

    .line 10
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:I

    .line 12
    invoke-virtual {p0, p3}, Landroid/view/View;->setSaveEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method

.method public final b()Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v0

    .line 13
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 15
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 17
    const/16 v3, 0x1e0

    .line 19
    if-ge v1, v3, :cond_22

    .line 21
    const/16 v4, 0x280

    .line 23
    if-lt v1, v4, :cond_1a

    .line 25
    if-ge v2, v3, :cond_22

    .line 27
    :cond_1a
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 29
    const/4 v1, 0x2

    .line 30
    if-ne v0, v1, :cond_20

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    :goto_22
    const/4 v0, 0x1

    .line 36
    :goto_23
    return v0
.end method

.method public final c()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_24

    .line 14
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 16
    iget v2, v2, Landroidx/appcompat/view/menu/j;->y:I

    .line 18
    const/4 v4, 0x4

    .line 19
    and-int/2addr v2, v4

    .line 20
    if-ne v2, v4, :cond_17

    .line 22
    move v2, v1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v2, v3

    .line 25
    :goto_18
    if-eqz v2, :cond_23

    .line 27
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Z

    .line 29
    if-nez v2, :cond_24

    .line 31
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Z

    .line 33
    if-eqz v2, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v1, v3

    .line 37
    :cond_24
    :goto_24
    and-int/2addr v0, v1

    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_2b

    .line 41
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move-object v2, v1

    .line 45
    :goto_2c
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 50
    iget-object v2, v2, Landroidx/appcompat/view/menu/j;->q:Ljava/lang/CharSequence;

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_45

    .line 58
    if-eqz v0, :cond_3d

    .line 60
    move-object v2, v1

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 64
    iget-object v2, v2, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 66
    :goto_41
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    goto :goto_48

    .line 70
    :cond_45
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    :goto_48
    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 75
    iget-object v2, v2, Landroidx/appcompat/view/menu/j;->r:Ljava/lang/CharSequence;

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_5d

    .line 83
    if-eqz v0, :cond_55

    .line 85
    goto :goto_59

    .line 86
    :cond_55
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 88
    iget-object v1, v0, Landroidx/appcompat/view/menu/j;->e:Ljava/lang/CharSequence;

    .line 90
    :goto_59
    invoke-static {p0, v1}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    invoke-static {p0, v2}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 97
    :goto_60
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    const-class v0, Landroid/widget/Button;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    return-object v0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/j;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getTitleCondensed()Ljava/lang/CharSequence;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    iget p2, p1, Landroidx/appcompat/view/menu/j;->a:I

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isVisible()Z

    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1d

    .line 28
    const/4 p2, 0x0

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    const/16 p2, 0x8

    .line 32
    :goto_1f
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isEnabled()Z

    .line 38
    move-result p2

    .line 39
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3a

    .line 48
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->e:Landroidx/appcompat/view/menu/ActionMenuItemView$a;

    .line 50
    if-nez p1, :cond_3a

    .line 52
    new-instance p1, Landroidx/appcompat/view/menu/ActionMenuItemView$a;

    .line 54
    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$a;-><init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V

    .line 57
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->e:Landroidx/appcompat/view/menu/ActionMenuItemView$a;

    .line 59
    :cond_3a
    return-void
.end method

.method public final needsDividerAfter()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->a()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final needsDividerBefore()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_10

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->d:Landroidx/appcompat/view/menu/h$b;

    .line 3
    if-eqz p1, :cond_9

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 7
    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/h$b;->a(Landroidx/appcompat/view/menu/j;)Z

    .line 10
    :cond_9
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    .line 7
    move-result p1

    .line 8
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Z

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->c()V

    .line 13
    return-void
.end method

.method public final onMeasure(II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    iget v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:I

    .line 9
    if-ltz v1, :cond_19

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 22
    move-result v4

    .line 23
    invoke-super {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 26
    :cond_19
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 29
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 32
    move-result v1

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    move-result v2

    .line 41
    const/high16 v3, -0x80000000

    .line 43
    if-ne v1, v3, :cond_33

    .line 45
    iget v3, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:I

    .line 47
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 50
    move-result p1

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    iget p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:I

    .line 54
    :goto_35
    const/high16 v3, 0x40000000  # 2.0f

    .line 56
    if-eq v1, v3, :cond_46

    .line 58
    iget v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:I

    .line 60
    if-lez v1, :cond_46

    .line 62
    if-ge v2, p1, :cond_46

    .line 64
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 67
    move-result p1

    .line 68
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 71
    :cond_46
    if-nez v0, :cond_6c

    .line 73
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    .line 75
    if-eqz p1, :cond_6c

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    move-result p1

    .line 81
    iget-object p2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 90
    move-result p2

    .line 91
    sub-int/2addr p1, p2

    .line 92
    div-int/lit8 p1, p1, 0x2

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 97
    move-result p2

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 101
    move-result v0

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 105
    move-result v1

    .line 106
    invoke-super {p0, p1, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    :cond_6c
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_14

    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->e:Landroidx/appcompat/view/menu/ActionMenuItemView$a;

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/h0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public setCheckable(Z)V
    .registers 2

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    return-void
.end method

.method public setExpandedFormat(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Z

    .line 3
    if-eq v0, p1, :cond_f

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Z

    .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/j;

    .line 9
    if-eqz p1, :cond_f

    .line 11
    iget-object v0, p1, Landroidx/appcompat/view/menu/j;->n:Landroidx/appcompat/view/menu/h;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/j;)V

    .line 16
    :cond_f
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz p1, :cond_25

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 12
    move-result v1

    .line 13
    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:I

    .line 15
    if-le v0, v2, :cond_17

    .line 17
    int-to-float v3, v2

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v3, v0

    .line 20
    int-to-float v0, v1

    .line 21
    mul-float/2addr v0, v3

    .line 22
    float-to-int v1, v0

    .line 23
    move v0, v2

    .line 24
    :cond_17
    if-le v1, v2, :cond_20

    .line 26
    int-to-float v3, v2

    .line 27
    int-to-float v1, v1

    .line 28
    div-float/2addr v3, v1

    .line 29
    int-to-float v0, v0

    .line 30
    mul-float/2addr v0, v3

    .line 31
    float-to-int v0, v0

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v2, v1

    .line 34
    :goto_21
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    :cond_25
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->c()V

    .line 45
    return-void
.end method

.method public setItemInvoker(Landroidx/appcompat/view/menu/h$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->d:Landroidx/appcompat/view/menu/h$b;

    .line 3
    return-void
.end method

.method public final setPadding(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:I

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    return-void
.end method

.method public setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Landroidx/appcompat/view/menu/ActionMenuItemView$b;

    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->c()V

    .line 6
    return-void
.end method
