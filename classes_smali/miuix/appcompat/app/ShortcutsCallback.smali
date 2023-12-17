.class public interface abstract Lmiuix/appcompat/app/ShortcutsCallback;
.super Ljava/lang/Object;
.source "ShortcutsCallback.java"


# direct methods
.method public static dispatchGenericMotionEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static dispatchKeyDown(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static dispatchKeyEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyEvent(Landroid/view/KeyEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static dispatchKeyLongPress(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static dispatchKeyMultiple(Landroidx/fragment/app/FragmentManager;IILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static dispatchKeyShortcutEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static dispatchKeyUp(Landroidx/fragment/app/FragmentManager;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/ShortcutsCallback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static dispatchProvideKeyboardShortcuts(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_30

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 48
    goto :goto_8

    .line 49
    :cond_30
    return-void
.end method

.method public static dispatchTouchEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method

.method public static dispatchTrackballEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_34

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_8

    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 39
    instance-of v1, v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 41
    if-eqz v1, :cond_8

    .line 43
    check-cast v0, Lmiuix/appcompat/app/ShortcutsCallback;

    .line 45
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_8

    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_34
    const/4 p0, 0x0

    .line 54
    return p0
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 4
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

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
