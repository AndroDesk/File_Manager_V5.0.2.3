.class public final Landroidx/appcompat/widget/r0;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/r0$d;,
        Landroidx/appcompat/widget/r0$b;,
        Landroidx/appcompat/widget/r0$a;,
        Landroidx/appcompat/widget/r0$c;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/widget/q0;

.field public b:Landroidx/appcompat/widget/r0$b;

.field public c:Landroidx/appcompat/widget/i0;

.field public d:Landroidx/appcompat/widget/AppCompatSpinner;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/appcompat/widget/r0$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/r0$d;-><init>(Landroidx/appcompat/widget/r0;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    sget-object v1, Lh/j;->ActionBar:[I

    sget v2, Lh/a;->actionBarStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lh/j;->ActionBar_height:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lh/b;->abc_action_bar_embed_tabs:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_35

    sget v4, Lh/d;->abc_action_bar_stacked_max_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_35
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/r0;->setContentHeight(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lh/d;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/r0;->g:I

    new-instance p1, Landroidx/appcompat/widget/i0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lh/a;->actionBarTabBarStyle:I

    invoke-direct {p1, v0, v3, v1}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->setMeasureWithLargestChildEnabled(Z)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i0;->setGravity(I)V

    new-instance v0, Landroidx/appcompat/widget/i0$a;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/i0$a;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/app/a$d;Z)Landroidx/appcompat/widget/r0$c;
    .registers 5

    new-instance v0, Landroidx/appcompat/widget/r0$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/appcompat/widget/r0$c;-><init>(Landroidx/appcompat/widget/r0;Landroid/content/Context;Landroidx/appcompat/app/a$d;Z)V

    if-eqz p2, :cond_1b

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Landroidx/appcompat/widget/r0;->h:I

    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2f

    :cond_1b
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/r0;->b:Landroidx/appcompat/widget/r0$b;

    if-nez p1, :cond_2a

    new-instance p1, Landroidx/appcompat/widget/r0$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/r0$b;-><init>(Landroidx/appcompat/widget/r0;)V

    iput-object p1, p0, Landroidx/appcompat/widget/r0;->b:Landroidx/appcompat/widget/r0$b;

    :cond_2a
    iget-object p1, p0, Landroidx/appcompat/widget/r0;->b:Landroidx/appcompat/widget/r0$b;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2f
    return-object v0
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/r0;->setTabSelected(I)V

    return-void
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/r0$c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/r0$c;->a()V

    iget-object p1, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/r0$a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_18
    iget-boolean p1, p0, Landroidx/appcompat/widget/r0;->e:Z

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1f
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lh/j;->ActionBar:[I

    sget v1, Lh/a;->actionBarStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lh/j;->ActionBar_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lh/b;->abc_action_bar_embed_tabs:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_31

    sget v3, Lh/d;->abc_action_bar_stacked_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/r0;->setContentHeight(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lh/d;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/r0;->g:I

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    check-cast p2, Landroidx/appcompat/widget/r0$c;

    iget-object p1, p2, Landroidx/appcompat/widget/r0$c;->a:Landroidx/appcompat/app/a$d;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->select()V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000  # 2.0f

    if-ne p2, v2, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v0

    :goto_d
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    iget-object v4, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v1, :cond_41

    if-eq p2, v2, :cond_1f

    const/high16 v6, -0x80000000

    if-ne p2, v6, :cond_41

    :cond_1f
    const/4 p2, 0x2

    if-le v4, p2, :cond_2f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd  # 0.4f

    mul-float/2addr p2, v4

    float-to-int p2, p2

    iput p2, p0, Landroidx/appcompat/widget/r0;->f:I

    goto :goto_36

    :cond_2f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, p2

    iput v4, p0, Landroidx/appcompat/widget/r0;->f:I

    :goto_36
    iget p2, p0, Landroidx/appcompat/widget/r0;->f:I

    iget v4, p0, Landroidx/appcompat/widget/r0;->g:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/r0;->f:I

    goto :goto_43

    :cond_41
    iput v5, p0, Landroidx/appcompat/widget/r0;->f:I

    :goto_43
    iget p2, p0, Landroidx/appcompat/widget/r0;->h:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v3, :cond_51

    iget-boolean v2, p0, Landroidx/appcompat/widget/r0;->e:Z

    if-eqz v2, :cond_51

    move v2, v1

    goto :goto_52

    :cond_51
    move v2, v0

    :goto_52
    if-eqz v2, :cond_c7

    iget-object v2, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v2, v0, p2}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-le v2, v4, :cond_c3

    iget-object v2, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v2, :cond_70

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_70

    move v0, v1

    :cond_70
    if-eqz v0, :cond_73

    goto :goto_ca

    :cond_73
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_91

    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lh/a;->actionDropDownStyle:I

    invoke-direct {v0, v4, v1, v6}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroidx/appcompat/widget/i0$a;

    invoke-direct {v4, v2, v5}, Landroidx/appcompat/widget/i0$a;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    :cond_91
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v2, Landroidx/appcompat/widget/r0$a;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/r0$a;-><init>(Landroidx/appcompat/widget/r0;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_b2
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    if-eqz v0, :cond_bb

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    :cond_bb
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget v1, p0, Landroidx/appcompat/widget/r0;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_ca

    :cond_c3
    invoke-virtual {p0}, Landroidx/appcompat/widget/r0;->b()V

    goto :goto_ca

    :cond_c7
    invoke-virtual {p0}, Landroidx/appcompat/widget/r0;->b()V

    :goto_ca
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_de

    if-eq v0, p1, :cond_de

    iget p1, p0, Landroidx/appcompat/widget/r0;->i:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r0;->setTabSelected(I)V

    :cond_de
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/r0;->e:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/r0;->h:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .registers 7

    iput p1, p0, Landroidx/appcompat/widget/r0;->i:I

    iget-object v0, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_36

    iget-object v3, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    move v4, v1

    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_33

    iget-object v3, p0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    if-eqz v4, :cond_29

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_29
    new-instance v4, Landroidx/appcompat/widget/q0;

    invoke-direct {v4, p0, v3}, Landroidx/appcompat/widget/q0;-><init>(Landroidx/appcompat/widget/r0;Landroid/view/View;)V

    iput-object v4, p0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    invoke-virtual {p0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_36
    iget-object v0, p0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_3f

    if-ltz p1, :cond_3f

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_3f
    return-void
.end method
