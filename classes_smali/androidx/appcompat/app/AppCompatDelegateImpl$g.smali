.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$g;
.super Lm/h;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final synthetic d:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p2}, Lm/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_a

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Z

    return-void

    :catchall_a
    move-exception p1

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Z

    throw p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->b:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->H(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-super {p0, p1}, Lm/h;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    invoke-super {p0, p1}, Lm/h;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4d

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    iget-object v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    if-eqz v4, :cond_1c

    invoke-virtual {v4, v3, p1}, Landroidx/appcompat/app/a0;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_48

    :cond_1c
    iget-object v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v3, :cond_31

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p1, :cond_48

    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    goto :goto_48

    :cond_31
    iget-object v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-nez v3, :cond_4a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v1, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    if-eqz p1, :cond_4a

    :cond_48
    :goto_48
    move p1, v2

    goto :goto_4b

    :cond_4a
    move p1, v1

    :goto_4b
    if-eqz p1, :cond_4e

    :cond_4d
    move v1, v2

    :cond_4e
    return v1
.end method

.method public final onContentChanged()V
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_b
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_8

    instance-of v0, p2, Landroidx/appcompat/view/menu/h;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-super {p0, p1, p2}, Lm/h;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .registers 2

    invoke-super {p0, p1}, Lm/h;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1, p2}, Lm/h;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_15

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    iget-object p1, p2, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a0;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_18

    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_18
    :goto_18
    return v1
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .registers 5

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->c:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_c
    invoke-super {p0, p1, p2}, Lm/h;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_21

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    iget-object p1, p2, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    if-eqz p1, :cond_32

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a0;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_32

    :cond_21
    if-nez p1, :cond_2f

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    iget-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz v1, :cond_32

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_32

    :cond_2f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_32
    :goto_32
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7

    instance-of v0, p3, Landroidx/appcompat/view/menu/h;

    if-eqz v0, :cond_8

    move-object v0, p3

    check-cast v0, Landroidx/appcompat/view/menu/h;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    if-nez p1, :cond_f

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-eqz v0, :cond_15

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/h;->setOverrideVisibleItems(Z)V

    :cond_15
    invoke-super {p0, p1, p2, p3}, Lm/h;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_1e

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->setOverrideVisibleItems(Z)V

    :cond_1e
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    if-eqz v0, :cond_f

    invoke-super {p0, p1, v0, p3}, Lm/h;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_12

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lm/h;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_12
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 11

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    if-eqz v1, :cond_1c4

    if-eqz p2, :cond_a

    goto/16 :goto_1c4

    :cond_a
    new-instance p2, Lm/e$a;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lm/e$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lm/a;->a()V

    :cond_1a
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$c;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lm/e$a;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    if-eqz v1, :cond_35

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a0;->startActionMode(Lm/a$a;)Lm/a;

    move-result-object v1

    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    if-eqz v1, :cond_35

    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    if-eqz v2, :cond_35

    invoke-interface {v2, v1}, Landroidx/appcompat/app/i;->onSupportActionModeStarted(Lm/a;)V

    :cond_35
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1b8

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lm0/o0;->b()V

    :cond_41
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lm/a;->a()V

    :cond_48
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    if-eqz v1, :cond_55

    iget-boolean v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    if-nez v3, :cond_55

    :try_start_50
    invoke-interface {v1, v0}, Landroidx/appcompat/app/i;->onWindowStartingSupportActionMode(Lm/a$a;)Lm/a;

    move-result-object v1
    :try_end_54
    .catch Ljava/lang/AbstractMethodError; {:try_start_50 .. :try_end_54} :catch_55

    goto :goto_56

    :catch_55
    :cond_55
    move-object v1, v2

    :goto_56
    if-eqz v1, :cond_5c

    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    goto/16 :goto_1a6

    :cond_5c
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_114

    iget-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:Z

    if-eqz v1, :cond_e8

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lh/a;->actionBarTheme:I

    invoke-virtual {v5, v6, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_9b

    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v5, Lm/c;

    iget-object v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    invoke-direct {v5, v7, v4}, Lm/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5}, Lm/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_9d

    :cond_9b
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    :goto_9d
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v6, v5, v2}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v6, Landroid/widget/PopupWindow;

    sget v7, Lh/a;->actionModePopupWindowStyle:I

    invoke-direct {v6, v5, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroidx/core/widget/i;->d(Landroid/widget/PopupWindow;I)V

    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    iget-object v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Lh/a;->actionBarSize:I

    invoke-virtual {v6, v7, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v1, Landroidx/appcompat/app/n;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/n;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/appcompat/app/n;

    goto :goto_114

    :cond_e8
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    sget v5, Lh/f;->action_mode_bar_stub:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v1, :cond_114

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    if-eqz v5, :cond_100

    invoke-virtual {v5}, Landroidx/appcompat/app/a0;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_101

    :cond_100
    move-object v5, v2

    :goto_101
    if-nez v5, :cond_105

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    :cond_105
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_114
    :goto_114
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_1a6

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    if-eqz v1, :cond_11f

    invoke-virtual {v1}, Lm0/o0;->b()V

    :cond_11f
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    new-instance v1, Lm/d;

    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v1, v5, v6, v0}, Lm/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lm/a$a;)V

    iget-object v5, v1, Lm/d;->h:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    invoke-virtual {v1}, Lm/d;->g()V

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lm/a;)V

    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    if-eqz v0, :cond_154

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_154

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_154

    goto :goto_155

    :cond_154
    move v3, v4

    :goto_155
    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz v3, :cond_173

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v1}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm0/o0;->a(F)V

    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    new-instance v0, Landroidx/appcompat/app/o;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/o;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    invoke-virtual {v1, v0}, Lm0/o0;->d(Lm0/p0;)V

    goto :goto_194

    :cond_173
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_194

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    :cond_194
    :goto_194
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1a6

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/appcompat/app/n;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a6

    :cond_1a4
    iput-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    :cond_1a6
    :goto_1a6
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    if-eqz v0, :cond_1b1

    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    if-eqz v1, :cond_1b1

    invoke-interface {v1, v0}, Landroidx/appcompat/app/i;->onSupportActionModeStarted(Lm/a;)V

    :cond_1b1
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    :cond_1b8
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    if-eqz p1, :cond_1c3

    invoke-virtual {p2, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    move-result-object v2

    :cond_1c3
    return-object v2

    :cond_1c4
    :goto_1c4
    invoke-super {p0, p1, p2}, Lm/h;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
