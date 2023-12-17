.class public final Landroidx/appcompat/app/x;
.super Landroidx/appcompat/app/a;
.source "ToolbarActionBar.java"


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;I)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;IZ)V
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;Z)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final closeOptionsMenu()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final collapseActionView()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final dispatchMenuVisibilityChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/app/x;->a:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/x;->a:Z

    const/4 p1, 0x0

    throw p1
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final getDisplayOptions()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final getElevation()F
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final getHeight()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNavigationItemCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getNavigationMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getSelectedNavigationIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final getSelectedTab()Landroidx/appcompat/app/a$d;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTabAt(I)Landroidx/appcompat/app/a$d;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTabCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getThemedContext()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final hide()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final invalidateOptionsMenu()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final isShowing()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final isTitleTruncated()Z
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/app/a;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public final newTab()Landroidx/appcompat/app/a$d;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p1, 0x0

    throw p1
.end method

.method public final onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x0

    throw p1
.end method

.method public final openOptionsMenu()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final removeAllTabs()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final removeTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeTabAt(I)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestFocus()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final selectTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setCustomView(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setCustomView(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroidx/appcompat/app/a$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/app/a$a;-><init>(II)V

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    const/4 p1, 0x0

    throw p1
.end method

.method public final setCustomView(Landroid/view/View;Landroidx/appcompat/app/a$a;)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const/4 p1, 0x0

    throw p1
.end method

.method public final setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 2

    return-void
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setDisplayOptions(I)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final setDisplayOptions(II)V
    .registers 3

    const/4 p1, 0x0

    throw p1
.end method

.method public final setDisplayShowCustomEnabled(Z)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setDisplayShowHomeEnabled(Z)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setDisplayShowTitleEnabled(Z)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setDisplayUseLogoEnabled(Z)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setElevation(F)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setHomeActionContentDescription(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setHomeAsUpIndicator(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setHomeButtonEnabled(Z)V
    .registers 2

    return-void
.end method

.method public final setIcon(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/a$c;)V
    .registers 3

    new-instance p1, Landroidx/appcompat/app/v;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/v;-><init>(Landroidx/appcompat/app/a$c;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setLogo(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setNavigationMode(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tabs not supported in this configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const/4 p1, 0x0

    throw p1
.end method

.method public final setSelectedNavigationItem(I)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setShowHideAnimationEnabled(Z)V
    .registers 2

    return-void
.end method

.method public final setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public final setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public final setSubtitle(I)V
    .registers 3

    const/4 v0, 0x0

    throw v0
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setTitle(I)V
    .registers 3

    const/4 v0, 0x0

    throw v0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final show()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
