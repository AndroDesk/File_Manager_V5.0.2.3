.class public final Lm0/g0;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateConstructorForUtilityClass"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/g0$n;,
        Lm0/g0$l;,
        Lm0/g0$d;,
        Lm0/g0$i;,
        Lm0/g0$b;,
        Lm0/g0$e;,
        Lm0/g0$m;,
        Lm0/g0$g;,
        Lm0/g0$k;,
        Lm0/g0$h;,
        Lm0/g0$j;,
        Lm0/g0$o;,
        Lm0/g0$p;,
        Lm0/g0$f;,
        Lm0/g0$c;,
        Lm0/g0$r;,
        Lm0/g0$s;,
        Lm0/g0$a;,
        Lm0/g0$q;
    }
.end annotation


# static fields
.field public static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lm0/o0;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Z

.field public static final d:Lm0/b0;

.field public static final e:Lm0/g0$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v0, 0x0

    sput-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lm0/g0;->c:Z

    new-instance v0, Lm0/b0;

    invoke-direct {v0}, Lm0/b0;-><init>()V

    sput-object v0, Lm0/g0;->d:Lm0/b0;

    new-instance v0, Lm0/g0$a;

    invoke-direct {v0}, Lm0/g0$a;-><init>()V

    sput-object v0, Lm0/g0;->e:Lm0/g0$a;

    return-void
.end method

.method public static a(Landroid/view/View;)Lm0/o0;
    .registers 3

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    :cond_b
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/o0;

    if-nez v0, :cond_1f

    new-instance v0, Lm0/o0;

    invoke-direct {v0, p0}, Lm0/o0;-><init>(Landroid/view/View;)V

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method public static b(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 4

    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {p0, v0}, Lm0/g0$h;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v1, p0}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p1
.end method

.method public static c(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_8

    return v1

    :cond_8
    sget-object v0, Lm0/g0$s;->d:Ljava/util/ArrayList;

    sget v0, Lc0/b;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/g0$s;

    if-nez v2, :cond_1c

    new-instance v2, Lm0/g0$s;

    invoke-direct {v2}, Lm0/g0$s;-><init>()V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :cond_29
    sget-object v0, Lm0/g0$s;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_7d

    :cond_32
    monitor-enter v0

    :try_start_33
    iget-object v3, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    if-nez v3, :cond_3e

    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_42
    :goto_42
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_78

    sget-object v4, Lm0/g0$s;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_5a

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_42

    :cond_5a
    iget-object v4, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_65
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_42

    iget-object v5, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_65

    :cond_78
    monitor-exit v0

    goto :goto_7d

    :catchall_7a
    move-exception p0

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_33 .. :try_end_7c} :catchall_7a

    throw p0

    :cond_7d
    :goto_7d
    invoke-virtual {v2, p0, p1}, Lm0/g0$s;->a(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-eqz p0, :cond_a8

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, v2, Lm0/g0$s;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_9e

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v2, Lm0/g0$s;->b:Landroid/util/SparseArray;

    :cond_9e
    iget-object v0, v2, Lm0/g0$s;->b:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a8
    if-eqz p0, :cond_ab

    const/4 v1, 0x1

    :cond_ab
    return v1
.end method

.method public static d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lm0/g0$n;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0

    :cond_b
    sget-boolean v0, Lm0/g0;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    goto :goto_37

    :cond_11
    sget-object v0, Lm0/g0;->b:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_27

    :try_start_16
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lm0/g0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_24

    goto :goto_27

    :catchall_24
    sput-boolean v2, Lm0/g0;->c:Z

    goto :goto_37

    :cond_27
    :goto_27
    :try_start_27
    sget-object v0, Lm0/g0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_37

    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_35

    move-object v1, p0

    goto :goto_37

    :catchall_35
    sput-boolean v2, Lm0/g0;->c:Z

    :cond_37
    :goto_37
    return-object v1
.end method

.method public static e(Landroid/view/View;)[Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Lm0/g0$p;->a(Landroid/view/View;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    sget v0, Lc0/b;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static f(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static g(ILandroid/view/View;)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    sget v1, Lc0/b;->tag_accessibility_pane_title:I

    const-class v2, Ljava/lang/CharSequence;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_21

    move v7, v5

    goto :goto_22

    :cond_21
    move v7, v6

    :goto_22
    const/4 v8, 0x0

    if-eqz v7, :cond_2a

    invoke-static {p1}, Lm0/g0$m;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_37

    :cond_2a
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object v2, v7

    goto :goto_37

    :cond_36
    move-object v2, v8

    :goto_37
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_49

    move v2, v5

    goto :goto_4a

    :cond_49
    move v2, v6

    :goto_4a
    invoke-static {p1}, Lm0/g0$g;->a(Landroid/view/View;)I

    move-result v7

    const/16 v9, 0x20

    if-nez v7, :cond_c4

    if-eqz v2, :cond_56

    goto/16 :goto_c4

    :cond_56
    if-ne p0, v9, :cond_91

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v2, p0}, Lm0/g0$g;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p0

    const-class v7, Ljava/lang/CharSequence;

    if-lt v3, v4, :cond_74

    goto :goto_75

    :cond_74
    move v5, v6

    :goto_75
    if-eqz v5, :cond_7c

    invoke-static {p1}, Lm0/g0$m;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_87

    :cond_7c
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    move-object v8, p1

    :cond_87
    :goto_87
    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_11d

    :cond_91
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :try_start_9b
    invoke-static {v0, p1, p1, p0}, Lm0/g0$g;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_9e
    .catch Ljava/lang/AbstractMethodError; {:try_start_9b .. :try_end_9e} :catch_a0

    goto/16 :goto_11d

    :catch_a0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not fully implement ViewParent"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewCompat"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11d

    :cond_c4
    :goto_c4
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v2, :cond_cb

    goto :goto_cd

    :cond_cb
    const/16 v9, 0x800

    :goto_cd
    invoke-virtual {v0, v9}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v0, p0}, Lm0/g0$g;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    if-eqz v2, :cond_11a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p0

    const-class v2, Ljava/lang/CharSequence;

    if-lt v3, v4, :cond_de

    move v6, v5

    :cond_de
    if-eqz v6, :cond_e5

    invoke-static {p1}, Lm0/g0$m;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_f0

    :cond_e5
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    move-object v8, v1

    :cond_f0
    :goto_f0
    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lm0/g0$d;->c(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_fe

    invoke-static {p1, v5}, Lm0/g0$d;->s(Landroid/view/View;I)V

    :cond_fe
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_102
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_11a

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lm0/g0$d;->c(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_115

    const/4 p0, 0x2

    invoke-static {p1, p0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    goto :goto_11a

    :cond_115
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_102

    :cond_11a
    :goto_11a
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_11d
    :goto_11d
    return-void
.end method

.method public static h(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 4

    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {p0, v0}, Lm0/g0$h;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v1, p0}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p1
.end method

.method public static i(Landroid/view/View;Lm0/c;)Lm0/c;
    .registers 5

    const-string v0, "ViewCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performReceiveContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_49

    invoke-static {p0, p1}, Lm0/g0$p;->b(Landroid/view/View;Lm0/c;)Lm0/c;

    move-result-object p0

    return-object p0

    :cond_49
    sget v0, Lc0/b;->tag_on_receive_content_listener:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/w;

    if-eqz v0, :cond_69

    invoke-interface {v0, p0, p1}, Lm0/w;->a(Landroid/view/View;Lm0/c;)Lm0/c;

    move-result-object p1

    if-nez p1, :cond_5b

    const/4 p0, 0x0

    goto :goto_68

    :cond_5b
    instance-of v0, p0, Lm0/x;

    if-eqz v0, :cond_62

    check-cast p0, Lm0/x;

    goto :goto_64

    :cond_62
    sget-object p0, Lm0/g0;->d:Lm0/b0;

    :goto_64
    invoke-interface {p0, p1}, Lm0/x;->onReceiveContent(Lm0/c;)Lm0/c;

    move-result-object p0

    :goto_68
    return-object p0

    :cond_69
    instance-of v0, p0, Lm0/x;

    if-eqz v0, :cond_70

    check-cast p0, Lm0/x;

    goto :goto_72

    :cond_70
    sget-object p0, Lm0/g0;->d:Lm0/b0;

    :goto_72
    invoke-interface {p0, p1}, Lm0/x;->onReceiveContent(Lm0/c;)Lm0/c;

    move-result-object p0

    return-object p0
.end method

.method public static j(ILandroid/view/View;)V
    .registers 4

    sget v0, Lc0/b;->tag_accessibility_actions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2c

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/c$a;

    invoke-virtual {v0}, Ln0/c$a;->a()I

    move-result v0

    if-ne v0, p0, :cond_29

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2c

    :cond_29
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static k(Landroid/view/View;Ln0/c$a;Ln0/g;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_e

    invoke-virtual {p1}, Ln0/c$a;->a()I

    move-result p1

    invoke-static {p1, p0}, Lm0/g0;->j(ILandroid/view/View;)V

    invoke-static {v0, p0}, Lm0/g0;->g(ILandroid/view/View;)V

    goto :goto_56

    :cond_e
    new-instance v1, Ln0/c$a;

    iget v2, p1, Ln0/c$a;->b:I

    iget-object p1, p1, Ln0/c$a;->c:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p2, p1}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    invoke-static {p0}, Lm0/g0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_2d

    :cond_1f
    instance-of p2, p1, Lm0/a$a;

    if-eqz p2, :cond_28

    check-cast p1, Lm0/a$a;

    iget-object v3, p1, Lm0/a$a;->a:Lm0/a;

    goto :goto_2d

    :cond_28
    new-instance v3, Lm0/a;

    invoke-direct {v3, p1}, Lm0/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_2d
    if-nez v3, :cond_34

    new-instance v3, Lm0/a;

    invoke-direct {v3}, Lm0/a;-><init>()V

    :cond_34
    invoke-static {p0, v3}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    invoke-virtual {v1}, Ln0/c$a;->a()I

    move-result p1

    invoke-static {p1, p0}, Lm0/g0;->j(ILandroid/view/View;)V

    sget p1, Lc0/b;->tag_accessibility_actions:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_50

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_50
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p0}, Lm0/g0;->g(ILandroid/view/View;)V

    :goto_56
    return-void
.end method

.method public static l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V
    .registers 15
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "ContextFirst"
            }
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_10

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v2 .. v8}, Lm0/g0$n;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_10
    return-void
.end method

.method public static m(Landroid/view/View;Lm0/a;)V
    .registers 3

    if-nez p1, :cond_f

    invoke-static {p0}, Lm0/g0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Lm0/a$a;

    if-eqz v0, :cond_f

    new-instance p1, Lm0/a;

    invoke-direct {p1}, Lm0/a;-><init>()V

    :cond_f
    if-nez p1, :cond_13

    const/4 p1, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lm0/a;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    :goto_17
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static n(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 5

    new-instance v0, Lm0/d0;

    sget v1, Lc0/b;->tag_accessibility_pane_title:I

    const-class v2, Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2}, Lm0/d0;-><init>(ILjava/lang/Class;)V

    invoke-virtual {v0, p0, p1}, Lm0/g0$b;->e(Landroid/view/View;Ljava/lang/Object;)V

    if-eqz p1, :cond_39

    sget-object p1, Lm0/g0;->e:Lm0/g0$a;

    iget-object v0, p1, Lm0/g0$a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_4a

    :cond_39
    sget-object p1, Lm0/g0;->e:Lm0/g0$a;

    iget-object v0, p1, Lm0/g0$a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-static {p0, p1}, Lm0/g0$d;->o(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public static o(Landroid/view/View;Lm0/z;)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p0, v0}, Lm0/g0$k;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    return-void
.end method
