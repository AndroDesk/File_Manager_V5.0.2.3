.class public final Landroidx/appcompat/widget/b1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroidx/appcompat/widget/d0;


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public c:Landroidx/appcompat/widget/r0;

.field public d:Landroidx/appcompat/widget/AppCompatSpinner;

.field public e:Landroid/view/View;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Z

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/view/Window$Callback;

.field public n:Z

.field public o:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public p:I

.field public q:I

.field public r:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .registers 7

    sget v0, Lh/h;->abc_action_bar_up_description:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/widget/b1;->p:I

    iput v1, p0, Landroidx/appcompat/widget/b1;->q:I

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/b1;->k:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    iput-boolean v2, p0, Landroidx/appcompat/widget/b1;->i:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/b1;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    sget-object v3, Lh/j;->ActionBar:[I

    sget v4, Lh/a;->actionBarStyle:I

    invoke-static {p1, v2, v3, v4}, Landroidx/appcompat/widget/y0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/y0;

    move-result-object p1

    sget v2, Lh/j;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/b1;->r:Landroid/graphics/drawable/Drawable;

    sget v2, Lh/j;->ActionBar_title:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4b
    sget v2, Lh/j;->ActionBar_subtitle:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->p(Ljava/lang/CharSequence;)V

    :cond_5a
    sget v2, Lh/j;->ActionBar_logo:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->k(Landroid/graphics/drawable/Drawable;)V

    :cond_65
    sget v2, Lh/j;->ActionBar_icon:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_70

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_70
    iget-object v2, p0, Landroidx/appcompat/widget/b1;->h:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_7b

    iget-object v2, p0, Landroidx/appcompat/widget/b1;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7b

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->G(Landroid/graphics/drawable/Drawable;)V

    :cond_7b
    sget v2, Lh/j;->ActionBar_displayOptions:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->n(I)V

    sget v2, Lh/j;->ActionBar_customNavigationLayout:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    if-eqz v2, :cond_a6

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->setCustomView(Landroid/view/View;)V

    iget v2, p0, Landroidx/appcompat/widget/b1;->b:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/b1;->n(I)V

    :cond_a6
    sget v2, Lh/j;->ActionBar_height:I

    iget-object v3, p1, Landroidx/appcompat/widget/y0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    if-lez v2, :cond_bd

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_bd
    sget v2, Lh/j;->ActionBar_contentInsetStart:I

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result v2

    sget v4, Lh/j;->ActionBar_contentInsetEnd:I

    invoke-virtual {p1, v4, v3}, Landroidx/appcompat/widget/y0;->c(II)I

    move-result v3

    if-gez v2, :cond_ce

    if-ltz v3, :cond_db

    :cond_ce
    iget-object v4, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    :cond_db
    sget v2, Lh/j;->ActionBar_titleTextStyle:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    if-eqz v2, :cond_ec

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    :cond_ec
    sget v2, Lh/j;->ActionBar_subtitleTextStyle:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v2

    if-eqz v2, :cond_fd

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    :cond_fd
    sget v2, Lh/j;->ActionBar_popupTheme:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v1

    if-eqz v1, :cond_10a

    iget-object v2, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    :cond_10a
    invoke-virtual {p1}, Landroidx/appcompat/widget/y0;->n()V

    iget p1, p0, Landroidx/appcompat/widget/b1;->q:I

    if-ne v0, p1, :cond_112

    goto :goto_125

    :cond_112
    iput v0, p0, Landroidx/appcompat/widget/b1;->q:I

    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_125

    iget p1, p0, Landroidx/appcompat/widget/b1;->q:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->B(I)V

    :cond_125
    :goto_125
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->l:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Landroidx/appcompat/widget/a1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/a1;-><init>(Landroidx/appcompat/widget/b1;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final A()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final B(I)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final C()V
    .registers 3

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final D(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/v;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->I()V

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public final E()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final F()V
    .registers 3

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final G(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->h:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->r:Landroid/graphics/drawable/Drawable;

    :goto_f
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    :cond_13
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_19
    return-void
.end method

.method public final H(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public final I()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-nez v0, :cond_1d

    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lh/a;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(I)V

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    return-void
.end method

.method public final J()V
    .registers 3

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/b1;->q:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_1d

    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final K()V
    .registers 3

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_15

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    goto :goto_16

    :cond_f
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/b1;->n:Z

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final collapseActionView()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    return-void
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public final e(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/app/AppCompatDelegateImpl$b;)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->o:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_15

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/b1;->o:Landroidx/appcompat/widget/ActionMenuPresenter;

    sget v1, Lh/f;->action_menu_presenter:I

    iput v1, v0, Landroidx/appcompat/view/menu/b;->i:I

    :cond_15
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->o:Landroidx/appcompat/widget/ActionMenuPresenter;

    iput-object p2, v0, Landroidx/appcompat/view/menu/b;->e:Landroidx/appcompat/view/menu/n$a;

    iget-object p2, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/Toolbar;->setMenu(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    return-void
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroid/view/View;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    return-void
.end method

.method public final i(Landroidx/appcompat/widget/r0;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    if-eqz p1, :cond_36

    iget v0, p0, Landroidx/appcompat/widget/b1;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v1, 0x800053

    iput v1, v0, Landroidx/appcompat/app/a$a;->a:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/r0;->setAllowCollapse(Z)V

    :cond_36
    return-void
.end method

.method public final j()V
    .registers 1

    return-void
.end method

.method public final k(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->K()V

    return-void
.end method

.method public final l()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public final n(I)V
    .registers 6

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroidx/appcompat/widget/b1;->b:I

    if-eqz v0, :cond_6a

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->J()V

    :cond_13
    iget v1, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_20

    goto :goto_22

    :cond_20
    iget-object v3, p0, Landroidx/appcompat/widget/b1;->r:Landroid/graphics/drawable/Drawable;

    :goto_22
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_26
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    :goto_2b
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->K()V

    :cond_32
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_53

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/b1;->k:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_53

    :cond_49
    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_53
    :goto_53
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6a

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroid/view/View;

    if-eqz v0, :cond_6a

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_65

    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6a

    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->l:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->J()V

    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->k:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public final q(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(I)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->k(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final s()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/b1;->p:I

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->e:Landroid/view/View;

    if-eqz v0, :cond_f

    iget v1, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    iput-object p1, p0, Landroidx/appcompat/widget/b1;->e:Landroid/view/View;

    if-eqz p1, :cond_1e

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1e
    return-void
.end method

.method public final setIcon(I)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->K()V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/b1;->i:Z

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/b1;->i:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lm0/g0;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1d
    return-void
.end method

.method public final setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->m:Landroid/view/Window$Callback;

    return-void
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/b1;->i:Z

    if-nez v0, :cond_1e

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->j:Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/b1;->i:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lm0/g0;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1e
    return-void
.end method

.method public final t(IJ)Lm0/o0;
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    move-result-object v0

    if-nez p1, :cond_b

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Lm0/o0;->a(F)V

    invoke-virtual {v0, p2, p3}, Lm0/o0;->c(J)V

    new-instance p2, Landroidx/appcompat/widget/b1$a;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/b1$a;-><init>(Landroidx/appcompat/widget/b1;I)V

    invoke-virtual {v0, p2}, Lm0/o0;->d(Lm0/p0;)V

    return-object v0
.end method

.method public final u(I)V
    .registers 6

    iget v0, p0, Landroidx/appcompat/widget/b1;->p:I

    if-eq p1, v0, :cond_69

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1d

    if-eq v0, v1, :cond_b

    goto :goto_2e

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v3, :cond_2e

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2e

    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v3, :cond_2e

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2e
    :goto_2e
    iput p1, p0, Landroidx/appcompat/widget/b1;->p:I

    if-eqz p1, :cond_69

    const/4 v0, 0x0

    if-eq p1, v2, :cond_5f

    if-ne p1, v1, :cond_53

    iget-object p1, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    if-eqz p1, :cond_69

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Landroidx/appcompat/widget/b1;->c:Landroidx/appcompat/widget/r0;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar$g;

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v0, 0x800053

    iput v0, p1, Landroidx/appcompat/app/a$a;->a:I

    goto :goto_69

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid navigation mode "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->I()V

    iget-object p1, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/b1;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_69
    :goto_69
    return-void
.end method

.method public final v(I)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/widget/b1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Li/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b1;->G(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final w(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final x()Landroidx/appcompat/widget/Toolbar;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final y()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final z()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/b1;->b:I

    return v0
.end method
