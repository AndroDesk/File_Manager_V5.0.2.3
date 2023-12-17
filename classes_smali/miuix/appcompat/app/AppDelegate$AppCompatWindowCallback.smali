.class Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;
.super Lm/h;
.source "AppDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AppDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppCompatWindowCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AppDelegate;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppDelegate;Landroid/view/Window$Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    invoke-direct {p0, p2}, Lm/h;-><init>(Landroid/view/Window$Callback;)V

    .line 6
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchGenericMotionEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-super {p0, p1}, Lm/h;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-super {p0, p1}, Lm/h;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchKeyShortcutEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-super {p0, p1}, Lm/h;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTouchEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-super {p0, p1}, Lm/h;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchTrackballEvent(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    invoke-super {p0, p1}, Lm/h;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 5
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
    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/ShortcutsCallback;->dispatchProvideKeyboardShortcuts(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V

    .line 12
    invoke-super {p0, p1, p2, p3}, Lm/h;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 15
    return-void
.end method
