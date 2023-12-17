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
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-direct {p0, p2}, Lm/h;-><init>(Landroid/view/Window$Callback;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Z

    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_a

    .line 8
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Z

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Z

    .line 14
    throw p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->b:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {p0}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 16
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->H(Landroid/view/KeyEvent;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1e

    .line 22
    invoke-super {p0, p1}, Lm/h;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    .line 32
    :goto_1f
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lm/h;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_4d

    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 18
    iget-object v4, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 20
    if-eqz v4, :cond_1c

    .line 22
    invoke-virtual {v4, v3, p1}, Landroidx/appcompat/app/a0;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1c

    .line 28
    goto :goto_48

    .line 29
    :cond_1c
    iget-object v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 31
    if-eqz v3, :cond_31

    .line 33
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 36
    move-result v4

    .line 37
    invoke-virtual {v0, v3, v4, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_31

    .line 43
    iget-object p1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 45
    if-eqz p1, :cond_48

    .line 47
    iput-boolean v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->l:Z

    .line 49
    goto :goto_48

    .line 50
    :cond_31
    iget-object v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->R:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 52
    if-nez v3, :cond_4a

    .line 54
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->T(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 64
    move-result v4

    .line 65
    invoke-virtual {v0, v3, v4, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->S(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    .line 68
    move-result p1

    .line 69
    iput-boolean v1, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->k:Z

    .line 71
    if-eqz p1, :cond_4a

    .line 73
    :cond_48
    :goto_48
    move p1, v2

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move p1, v1

    .line 76
    :goto_4b
    if-eqz p1, :cond_4e

    .line 78
    :cond_4d
    move v1, v2

    .line 79
    :cond_4e
    return v1
.end method

.method public final onContentChanged()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->a:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {p0}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 12
    :cond_b
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 1
    if-nez p1, :cond_8

    .line 3
    instance-of v0, p2, Landroidx/appcompat/view/menu/h;

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-super {p0, p1, p2}, Lm/h;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lm/h;->onCreatePanelView(I)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lm/h;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 6
    const/16 v0, 0x6c

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v0, :cond_15

    .line 11
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 14
    iget-object p1, p2, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 16
    if-eqz p1, :cond_18

    .line 18
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a0;->dispatchMenuVisibilityChanged(Z)V

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    :cond_18
    :goto_18
    return v1
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->c:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {p0}, Lm/h;->getWrapped()Landroid/view/Window$Callback;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-super {p0, p1, p2}, Lm/h;->onPanelClosed(ILandroid/view/Menu;)V

    .line 16
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 18
    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x6c

    .line 21
    if-ne p1, v1, :cond_21

    .line 23
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 26
    iget-object p1, p2, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 28
    if-eqz p1, :cond_32

    .line 30
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a0;->dispatchMenuVisibilityChanged(Z)V

    .line 33
    goto :goto_32

    .line 34
    :cond_21
    if-nez p1, :cond_2f

    .line 36
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 39
    move-result-object p1

    .line 40
    iget-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 42
    if-eqz v1, :cond_32

    .line 44
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->F(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    :cond_32
    :goto_32
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7

    .line 1
    instance-of v0, p3, Landroidx/appcompat/view/menu/h;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_f

    .line 13
    if-nez v0, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    if-eqz v0, :cond_15

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/h;->setOverrideVisibleItems(Z)V

    .line 22
    :cond_15
    invoke-super {p0, p1, p2, p3}, Lm/h;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->setOverrideVisibleItems(Z)V

    .line 31
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

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->M(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroidx/appcompat/view/menu/h;

    .line 10
    if-eqz v0, :cond_f

    .line 12
    invoke-super {p0, p1, v0, p3}, Lm/h;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lm/h;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 19
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

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Z

    .line 5
    if-eqz v1, :cond_1c4

    .line 7
    if-eqz p2, :cond_a

    .line 9
    goto/16 :goto_1c4

    .line 11
    :cond_a
    new-instance p2, Lm/e$a;

    .line 13
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 15
    invoke-direct {p2, v0, p1}, Lm/e$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$g;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 20
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {v0}, Lm/a;->a()V

    .line 27
    :cond_1a
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$c;

    .line 29
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$c;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lm/e$a;)V

    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 35
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 37
    if-eqz v1, :cond_35

    .line 39
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a0;->startActionMode(Lm/a$a;)Lm/a;

    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 45
    if-eqz v1, :cond_35

    .line 47
    iget-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    .line 49
    if-eqz v2, :cond_35

    .line 51
    invoke-interface {v2, v1}, Landroidx/appcompat/app/i;->onSupportActionModeStarted(Lm/a;)V

    .line 54
    :cond_35
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez v1, :cond_1b8

    .line 59
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 61
    if-eqz v1, :cond_41

    .line 63
    invoke-virtual {v1}, Lm0/o0;->b()V

    .line 66
    :cond_41
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 68
    if-eqz v1, :cond_48

    .line 70
    invoke-virtual {v1}, Lm/a;->a()V

    .line 73
    :cond_48
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    .line 75
    if-eqz v1, :cond_55

    .line 77
    iget-boolean v3, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->V:Z

    .line 79
    if-nez v3, :cond_55

    .line 81
    :try_start_50
    invoke-interface {v1, v0}, Landroidx/appcompat/app/i;->onWindowStartingSupportActionMode(Lm/a$a;)Lm/a;

    .line 84
    move-result-object v1
    :try_end_54
    .catch Ljava/lang/AbstractMethodError; {:try_start_50 .. :try_end_54} :catch_55

    .line 85
    goto :goto_56

    .line 86
    :catch_55
    :cond_55
    move-object v1, v2

    .line 87
    :goto_56
    if-eqz v1, :cond_5c

    .line 89
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 91
    goto/16 :goto_1a6

    .line 93
    :cond_5c
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 95
    const/4 v3, 0x1

    .line 96
    const/4 v4, 0x0

    .line 97
    if-nez v1, :cond_114

    .line 99
    iget-boolean v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->N:Z

    .line 101
    if-eqz v1, :cond_e8

    .line 103
    new-instance v1, Landroid/util/TypedValue;

    .line 105
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 108
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 110
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 113
    move-result-object v5

    .line 114
    sget v6, Lh/a;->actionBarTheme:I

    .line 116
    invoke-virtual {v5, v6, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 119
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    .line 121
    if-eqz v6, :cond_9b

    .line 123
    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 125
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 136
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 138
    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 141
    new-instance v5, Lm/c;

    .line 143
    iget-object v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 145
    invoke-direct {v5, v7, v4}, Lm/c;-><init>(Landroid/content/Context;I)V

    .line 148
    invoke-virtual {v5}, Lm/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 155
    goto :goto_9d

    .line 156
    :cond_9b
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 158
    :goto_9d
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 160
    invoke-direct {v6, v5, v2}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    iput-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 165
    new-instance v6, Landroid/widget/PopupWindow;

    .line 167
    sget v7, Lh/a;->actionModePopupWindowStyle:I

    .line 169
    invoke-direct {v6, v5, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    iput-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 174
    const/4 v7, 0x2

    .line 175
    invoke-static {v6, v7}, Landroidx/core/widget/i;->d(Landroid/widget/PopupWindow;I)V

    .line 178
    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 180
    iget-object v7, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 182
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 185
    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 187
    const/4 v7, -0x1

    .line 188
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 191
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 194
    move-result-object v6

    .line 195
    sget v7, Lh/a;->actionBarSize:I

    .line 197
    invoke-virtual {v6, v7, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 200
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 202
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 209
    move-result-object v5

    .line 210
    invoke-static {v1, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 213
    move-result v1

    .line 214
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 216
    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 219
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 221
    const/4 v5, -0x2

    .line 222
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 225
    new-instance v1, Landroidx/appcompat/app/n;

    .line 227
    invoke-direct {v1, p1}, Landroidx/appcompat/app/n;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 230
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/appcompat/app/n;

    .line 232
    goto :goto_114

    .line 233
    :cond_e8
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 235
    sget v5, Lh/f;->action_mode_bar_stub:I

    .line 237
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Landroidx/appcompat/widget/ViewStubCompat;

    .line 243
    if-eqz v1, :cond_114

    .line 245
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 248
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 250
    if-eqz v5, :cond_100

    .line 252
    invoke-virtual {v5}, Landroidx/appcompat/app/a0;->getThemedContext()Landroid/content/Context;

    .line 255
    move-result-object v5

    .line 256
    goto :goto_101

    .line 257
    :cond_100
    move-object v5, v2

    .line 258
    :goto_101
    if-nez v5, :cond_105

    .line 260
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->m:Landroid/content/Context;

    .line 262
    :cond_105
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 269
    invoke-virtual {v1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 272
    move-result-object v1

    .line 273
    check-cast v1, Landroidx/appcompat/widget/ActionBarContextView;

    .line 275
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 277
    :cond_114
    :goto_114
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 279
    if-eqz v1, :cond_1a6

    .line 281
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 283
    if-eqz v1, :cond_11f

    .line 285
    invoke-virtual {v1}, Lm0/o0;->b()V

    .line 288
    :cond_11f
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 290
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 293
    new-instance v1, Lm/d;

    .line 295
    iget-object v5, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 297
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 300
    move-result-object v5

    .line 301
    iget-object v6, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 303
    invoke-direct {v1, v5, v6, v0}, Lm/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lm/a$a;)V

    .line 306
    iget-object v5, v1, Lm/d;->h:Landroidx/appcompat/view/menu/h;

    .line 308
    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$c;->b(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_1a4

    .line 314
    invoke-virtual {v1}, Lm/d;->g()V

    .line 317
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 319
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lm/a;)V

    .line 322
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 324
    iget-boolean v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->E:Z

    .line 326
    if-eqz v0, :cond_154

    .line 328
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 330
    if-eqz v0, :cond_154

    .line 332
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 334
    invoke-static {v0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_154

    .line 340
    goto :goto_155

    .line 341
    :cond_154
    move v3, v4

    .line 342
    :goto_155
    const/high16 v0, 0x3f800000  # 1.0f

    .line 344
    if-eqz v3, :cond_173

    .line 346
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 348
    const/4 v3, 0x0

    .line 349
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 352
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 354
    invoke-static {v1}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v1, v0}, Lm0/o0;->a(F)V

    .line 361
    iput-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->C:Lm0/o0;

    .line 363
    new-instance v0, Landroidx/appcompat/app/o;

    .line 365
    invoke-direct {v0, p1}, Landroidx/appcompat/app/o;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 368
    invoke-virtual {v1, v0}, Lm0/o0;->d(Lm0/p0;)V

    .line 371
    goto :goto_194

    .line 372
    :cond_173
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 374
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 377
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 379
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 382
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 387
    move-result-object v0

    .line 388
    instance-of v0, v0, Landroid/view/View;

    .line 390
    if-eqz v0, :cond_194

    .line 392
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 394
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Landroid/view/View;

    .line 400
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 402
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 405
    :cond_194
    :goto_194
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->A:Landroid/widget/PopupWindow;

    .line 407
    if-eqz v0, :cond_1a6

    .line 409
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->n:Landroid/view/Window;

    .line 411
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 414
    move-result-object v0

    .line 415
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroidx/appcompat/app/n;

    .line 417
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 420
    goto :goto_1a6

    .line 421
    :cond_1a4
    iput-object v2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 423
    :cond_1a6
    :goto_1a6
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 425
    if-eqz v0, :cond_1b1

    .line 427
    iget-object v1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->p:Landroidx/appcompat/app/i;

    .line 429
    if-eqz v1, :cond_1b1

    .line 431
    invoke-interface {v1, v0}, Landroidx/appcompat/app/i;->onSupportActionModeStarted(Lm/a;)V

    .line 434
    :cond_1b1
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    .line 437
    iget-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 439
    iput-object v0, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 441
    :cond_1b8
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->V()V

    .line 444
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->y:Lm/a;

    .line 446
    if-eqz p1, :cond_1c3

    .line 448
    invoke-virtual {p2, p1}, Lm/e$a;->e(Lm/a;)Lm/e;

    .line 451
    move-result-object v2

    .line 452
    :cond_1c3
    return-object v2

    .line 453
    :cond_1c4
    :goto_1c4
    invoke-super {p0, p1, p2}, Lm/h;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 456
    move-result-object p1

    .line 457
    return-object p1
.end method
