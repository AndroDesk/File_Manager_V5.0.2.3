.class public final Lm0/h;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/h$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Z

.field public static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 5

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_9

    goto :goto_77

    :cond_9
    sget-object v0, Lm0/g0$s;->d:Ljava/util/ArrayList;

    sget v0, Lc0/b;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/g0$s;

    if-nez v1, :cond_1d

    new-instance v1, Lm0/g0$s;

    invoke-direct {v1}, Lm0/g0$s;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1d
    iget-object p0, v1, Lm0/g0$s;->c:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_28

    goto :goto_77

    :cond_28
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p0, v1, Lm0/g0$s;->c:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x0

    iget-object v0, v1, Lm0/g0$s;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_3b

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lm0/g0$s;->b:Landroid/util/SparseArray;

    :cond_3b
    iget-object v0, v1, Lm0/g0$s;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_57

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_57

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_57
    if-nez p0, :cond_63

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    :cond_63
    if-eqz p0, :cond_77

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_78

    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {p0, p1}, Lm0/g0$s;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v2, 0x0

    :cond_78
    :goto_78
    return v2
.end method

.method public static b(Lm0/h$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_f

    invoke-interface {p0, p3}, Lm0/h$a;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_f
    instance-of v1, p2, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_81

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x52

    if-ne v1, v4, :cond_64

    if-eqz p1, :cond_64

    sget-boolean v1, Lm0/h;->a:Z

    if-nez v1, :cond_4c

    :try_start_38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "onMenuKeyEvent"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/KeyEvent;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lm0/h;->b:Ljava/lang/reflect/Method;
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_4a} :catch_4a

    :catch_4a
    sput-boolean v3, Lm0/h;->a:Z

    :cond_4c
    sget-object v1, Lm0/h;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_61

    :try_start_50
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, v0

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5b

    goto :goto_61

    :cond_5b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_61
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_61} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_61} :catch_61

    :catch_61
    :cond_61
    :goto_61
    if-eqz v0, :cond_64

    goto :goto_80

    :cond_64
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_80

    :cond_6b
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p3}, Lm0/g0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_76

    goto :goto_80

    :cond_76
    if-eqz p0, :cond_7c

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    :cond_7c
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v3

    :goto_80
    return v3

    :cond_81
    instance-of v1, p2, Landroid/app/Dialog;

    if-eqz v1, :cond_d4

    check-cast p2, Landroid/app/Dialog;

    sget-boolean p0, Lm0/h;->c:Z

    if-nez p0, :cond_9a

    :try_start_8b
    const-class p0, Landroid/app/Dialog;

    const-string p1, "mOnKeyListener"

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Lm0/h;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_98
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8b .. :try_end_98} :catch_98

    :catch_98
    sput-boolean v3, Lm0/h;->c:Z

    :cond_9a
    sget-object p0, Lm0/h;->d:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_a5

    :try_start_9e
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_a4
    .catch Ljava/lang/IllegalAccessException; {:try_start_9e .. :try_end_a4} :catch_a5

    goto :goto_a6

    :catch_a5
    :cond_a5
    move-object p0, v2

    :goto_a6
    if-eqz p0, :cond_b3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_b3

    goto :goto_d3

    :cond_b3
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_be

    goto :goto_d3

    :cond_be
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p3}, Lm0/g0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_c9

    goto :goto_d3

    :cond_c9
    if-eqz p0, :cond_cf

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    :cond_cf
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v3

    :goto_d3
    return v3

    :cond_d4
    if-eqz p1, :cond_dc

    invoke-static {p1, p3}, Lm0/g0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_e2

    :cond_dc
    invoke-interface {p0, p3}, Lm0/h$a;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_e3

    :cond_e2
    move v0, v3

    :cond_e3
    return v0
.end method
