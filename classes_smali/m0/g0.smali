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

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lm0/g0;->c:Z

    .line 13
    new-instance v0, Lm0/b0;

    .line 15
    invoke-direct {v0}, Lm0/b0;-><init>()V

    .line 18
    sput-object v0, Lm0/g0;->d:Lm0/b0;

    .line 20
    new-instance v0, Lm0/g0$a;

    .line 22
    invoke-direct {v0}, Lm0/g0$a;-><init>()V

    .line 25
    sput-object v0, Lm0/g0;->e:Lm0/g0$a;

    .line 27
    return-void
.end method

.method public static a(Landroid/view/View;)Lm0/o0;
    .registers 3

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 10
    sput-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 12
    :cond_b
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lm0/o0;

    .line 20
    if-nez v0, :cond_1f

    .line 22
    new-instance v0, Lm0/o0;

    .line 24
    invoke-direct {v0, p0}, Lm0/o0;-><init>(Landroid/view/View;)V

    .line 27
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 29
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_1f
    return-object v0
.end method

.method public static b(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    invoke-static {p0, v0}, Lm0/g0$h;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_15

    .line 17
    invoke-static {v1, p0}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    return-object p1
.end method

.method public static c(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1c

    .line 6
    if-lt v0, v2, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    sget-object v0, Lm0/g0$s;->d:Ljava/util/ArrayList;

    .line 11
    sget v0, Lc0/b;->tag_unhandled_key_event_manager:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lm0/g0$s;

    .line 19
    if-nez v2, :cond_1c

    .line 21
    new-instance v2, Lm0/g0$s;

    .line 23
    invoke-direct {v2}, Lm0/g0$s;-><init>()V

    .line 26
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_7d

    .line 35
    iget-object v0, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    .line 37
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 42
    :cond_29
    sget-object v0, Lm0/g0$s;->d:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_32

    .line 50
    goto :goto_7d

    .line 51
    :cond_32
    monitor-enter v0

    .line 52
    :try_start_33
    iget-object v3, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    .line 54
    if-nez v3, :cond_3e

    .line 56
    new-instance v3, Ljava/util/WeakHashMap;

    .line 58
    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    .line 61
    iput-object v3, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    .line 63
    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v3

    .line 67
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, -0x1

    .line 69
    if-ltz v3, :cond_78

    .line 71
    sget-object v4, Lm0/g0$s;->d:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 79
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Landroid/view/View;

    .line 85
    if-nez v5, :cond_5a

    .line 87
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    goto :goto_42

    .line 91
    :cond_5a
    iget-object v4, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    .line 93
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 101
    move-result-object v4

    .line 102
    :goto_65
    instance-of v5, v4, Landroid/view/View;

    .line 104
    if-eqz v5, :cond_42

    .line 106
    iget-object v5, v2, Lm0/g0$s;->a:Ljava/util/WeakHashMap;

    .line 108
    move-object v6, v4

    .line 109
    check-cast v6, Landroid/view/View;

    .line 111
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 113
    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 119
    move-result-object v4

    .line 120
    goto :goto_65

    .line 121
    :cond_78
    monitor-exit v0

    .line 122
    goto :goto_7d

    .line 123
    :catchall_7a
    move-exception p0

    .line 124
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_33 .. :try_end_7c} :catchall_7a

    .line 125
    throw p0

    .line 126
    :cond_7d
    :goto_7d
    invoke-virtual {v2, p0, p1}, Lm0/g0$s;->a(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_a8

    .line 136
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 139
    move-result p1

    .line 140
    if-eqz p0, :cond_a8

    .line 142
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_a8

    .line 148
    iget-object v0, v2, Lm0/g0$s;->b:Landroid/util/SparseArray;

    .line 150
    if-nez v0, :cond_9e

    .line 152
    new-instance v0, Landroid/util/SparseArray;

    .line 154
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 157
    iput-object v0, v2, Lm0/g0$s;->b:Landroid/util/SparseArray;

    .line 159
    :cond_9e
    iget-object v0, v2, Lm0/g0$s;->b:Landroid/util/SparseArray;

    .line 161
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 163
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    :cond_a8
    if-eqz p0, :cond_ab

    .line 171
    const/4 v1, 0x1

    .line 172
    :cond_ab
    return v1
.end method

.method public static d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    invoke-static {p0}, Lm0/g0$n;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    sget-boolean v0, Lm0/g0;->c:Z

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_37

    .line 18
    :cond_11
    sget-object v0, Lm0/g0;->b:Ljava/lang/reflect/Field;

    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v0, :cond_27

    .line 23
    :try_start_16
    const-class v0, Landroid/view/View;

    .line 25
    const-string v3, "mAccessibilityDelegate"

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lm0/g0;->b:Ljava/lang/reflect/Field;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_24

    .line 36
    goto :goto_27

    .line 37
    :catchall_24
    sput-boolean v2, Lm0/g0;->c:Z

    .line 39
    goto :goto_37

    .line 40
    :cond_27
    :goto_27
    :try_start_27
    sget-object v0, Lm0/g0;->b:Ljava/lang/reflect/Field;

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    .line 48
    if-eqz v0, :cond_37

    .line 50
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_35

    .line 52
    move-object v1, p0

    .line 53
    goto :goto_37

    .line 54
    :catchall_35
    sput-boolean v2, Lm0/g0;->c:Z

    .line 56
    :cond_37
    :goto_37
    return-object v1
.end method

.method public static e(Landroid/view/View;)[Ljava/lang/String;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    invoke-static {p0}, Lm0/g0$p;->a(Landroid/view/View;)[Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    sget v0, Lc0/b;->tag_on_receive_content_mime_types:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, [Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public static f(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static g(ILandroid/view/View;)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accessibility"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    sget v1, Lc0/b;->tag_accessibility_pane_title:I

    .line 22
    const-class v2, Ljava/lang/CharSequence;

    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    const/16 v4, 0x1c

    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    if-lt v3, v4, :cond_21

    .line 32
    move v7, v5

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v7, v6

    .line 35
    :goto_22
    const/4 v8, 0x0

    .line 36
    if-eqz v7, :cond_2a

    .line 38
    invoke-static {p1}, Lm0/g0$m;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 41
    move-result-object v2

    .line 42
    goto :goto_37

    .line 43
    :cond_2a
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v2, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_36

    .line 53
    move-object v2, v7

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move-object v2, v8

    .line 56
    :goto_37
    check-cast v2, Ljava/lang/CharSequence;

    .line 58
    if-eqz v2, :cond_49

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_49

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_49

    .line 72
    move v2, v5

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v2, v6

    .line 75
    :goto_4a
    invoke-static {p1}, Lm0/g0$g;->a(Landroid/view/View;)I

    .line 78
    move-result v7

    .line 79
    const/16 v9, 0x20

    .line 81
    if-nez v7, :cond_c4

    .line 83
    if-eqz v2, :cond_56

    .line 85
    goto/16 :goto_c4

    .line 87
    :cond_56
    if-ne p0, v9, :cond_91

    .line 89
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p1, v2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 96
    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 99
    invoke-static {v2, p0}, Lm0/g0$g;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 102
    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 108
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 111
    move-result-object p0

    .line 112
    const-class v7, Ljava/lang/CharSequence;

    .line 114
    if-lt v3, v4, :cond_74

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v5, v6

    .line 118
    :goto_75
    if-eqz v5, :cond_7c

    .line 120
    invoke-static {p1}, Lm0/g0$m;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 123
    move-result-object v8

    .line 124
    goto :goto_87

    .line 125
    :cond_7c
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_87

    .line 135
    move-object v8, p1

    .line 136
    :cond_87
    :goto_87
    check-cast v8, Ljava/lang/CharSequence;

    .line 138
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 144
    goto/16 :goto_11d

    .line 146
    :cond_91
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_11d

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 155
    move-result-object v0

    .line 156
    :try_start_9b
    invoke-static {v0, p1, p1, p0}, Lm0/g0$g;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_9e
    .catch Ljava/lang/AbstractMethodError; {:try_start_9b .. :try_end_9e} :catch_a0

    .line 159
    goto/16 :goto_11d

    .line 161
    :catch_a0
    move-exception p0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string p1, " does not fully implement ViewParent"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    const-string v0, "ViewCompat"

    .line 193
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    goto :goto_11d

    .line 197
    :cond_c4
    :goto_c4
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 200
    move-result-object v0

    .line 201
    if-eqz v2, :cond_cb

    .line 203
    goto :goto_cd

    .line 204
    :cond_cb
    const/16 v9, 0x800

    .line 206
    :goto_cd
    invoke-virtual {v0, v9}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 209
    invoke-static {v0, p0}, Lm0/g0$g;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 212
    if-eqz v2, :cond_11a

    .line 214
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 217
    move-result-object p0

    .line 218
    const-class v2, Ljava/lang/CharSequence;

    .line 220
    if-lt v3, v4, :cond_de

    .line 222
    move v6, v5

    .line 223
    :cond_de
    if-eqz v6, :cond_e5

    .line 225
    invoke-static {p1}, Lm0/g0$m;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 228
    move-result-object v8

    .line 229
    goto :goto_f0

    .line 230
    :cond_e5
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_f0

    .line 240
    move-object v8, v1

    .line 241
    :cond_f0
    :goto_f0
    check-cast v8, Ljava/lang/CharSequence;

    .line 243
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {p1}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 249
    move-result p0

    .line 250
    if-nez p0, :cond_fe

    .line 252
    invoke-static {p1, v5}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 255
    :cond_fe
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 258
    move-result-object p0

    .line 259
    :goto_102
    instance-of v1, p0, Landroid/view/View;

    .line 261
    if-eqz v1, :cond_11a

    .line 263
    move-object v1, p0

    .line 264
    check-cast v1, Landroid/view/View;

    .line 266
    invoke-static {v1}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 269
    move-result v1

    .line 270
    const/4 v2, 0x4

    .line 271
    if-ne v1, v2, :cond_115

    .line 273
    const/4 p0, 0x2

    .line 274
    invoke-static {p1, p0}, Lm0/g0$d;->s(Landroid/view/View;I)V

    .line 277
    goto :goto_11a

    .line 278
    :cond_115
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 281
    move-result-object p0

    .line 282
    goto :goto_102

    .line 283
    :cond_11a
    :goto_11a
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 286
    :cond_11d
    :goto_11d
    return-void
.end method

.method public static h(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    invoke-static {p0, v0}, Lm0/g0$h;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_15

    .line 17
    invoke-static {v1, p0}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    return-object p1
.end method

.method public static i(Landroid/view/View;Lm0/c;)Lm0/c;
    .registers 5

    .line 1
    const-string v0, "ViewCompat"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_3e

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "performReceiveContent: "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, ", view="

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "["

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, "]"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    const/16 v1, 0x1f

    .line 67
    if-lt v0, v1, :cond_49

    .line 69
    invoke-static {p0, p1}, Lm0/g0$p;->b(Landroid/view/View;Lm0/c;)Lm0/c;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_49
    sget v0, Lc0/b;->tag_on_receive_content_listener:I

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lm0/w;

    .line 82
    if-eqz v0, :cond_69

    .line 84
    invoke-interface {v0, p0, p1}, Lm0/w;->a(Landroid/view/View;Lm0/c;)Lm0/c;

    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_5b

    .line 90
    const/4 p0, 0x0

    .line 91
    goto :goto_68

    .line 92
    :cond_5b
    instance-of v0, p0, Lm0/x;

    .line 94
    if-eqz v0, :cond_62

    .line 96
    check-cast p0, Lm0/x;

    .line 98
    goto :goto_64

    .line 99
    :cond_62
    sget-object p0, Lm0/g0;->d:Lm0/b0;

    .line 101
    :goto_64
    invoke-interface {p0, p1}, Lm0/x;->onReceiveContent(Lm0/c;)Lm0/c;

    .line 104
    move-result-object p0

    .line 105
    :goto_68
    return-object p0

    .line 106
    :cond_69
    instance-of v0, p0, Lm0/x;

    .line 108
    if-eqz v0, :cond_70

    .line 110
    check-cast p0, Lm0/x;

    .line 112
    goto :goto_72

    .line 113
    :cond_70
    sget-object p0, Lm0/g0;->d:Lm0/b0;

    .line 115
    :goto_72
    invoke-interface {p0, p1}, Lm0/x;->onReceiveContent(Lm0/c;)Lm0/c;

    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method

.method public static j(ILandroid/view/View;)V
    .registers 4

    .line 1
    sget v0, Lc0/b;->tag_accessibility_actions:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    if-nez v1, :cond_12

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    if-ge p1, v0, :cond_2c

    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ln0/c$a;

    .line 32
    invoke-virtual {v0}, Ln0/c$a;->a()I

    .line 35
    move-result v0

    .line 36
    if-ne v0, p0, :cond_29

    .line 38
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    add-int/lit8 p1, p1, 0x1

    .line 44
    goto :goto_13

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public static k(Landroid/view/View;Ln0/c$a;Ln0/g;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_e

    .line 4
    invoke-virtual {p1}, Ln0/c$a;->a()I

    .line 7
    move-result p1

    .line 8
    invoke-static {p1, p0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 11
    invoke-static {v0, p0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 14
    goto :goto_56

    .line 15
    :cond_e
    new-instance v1, Ln0/c$a;

    .line 17
    iget v2, p1, Ln0/c$a;->b:I

    .line 19
    iget-object p1, p1, Ln0/c$a;->c:Ljava/lang/Class;

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v1, v3, v2, p2, p1}, Ln0/c$a;-><init>(Ljava/lang/Object;ILn0/g;Ljava/lang/Class;)V

    .line 25
    invoke-static {p0}, Lm0/g0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_1f

    .line 31
    goto :goto_2d

    .line 32
    :cond_1f
    instance-of p2, p1, Lm0/a$a;

    .line 34
    if-eqz p2, :cond_28

    .line 36
    check-cast p1, Lm0/a$a;

    .line 38
    iget-object v3, p1, Lm0/a$a;->a:Lm0/a;

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    new-instance v3, Lm0/a;

    .line 43
    invoke-direct {v3, p1}, Lm0/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 46
    :goto_2d
    if-nez v3, :cond_34

    .line 48
    new-instance v3, Lm0/a;

    .line 50
    invoke-direct {v3}, Lm0/a;-><init>()V

    .line 53
    :cond_34
    invoke-static {p0, v3}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 56
    invoke-virtual {v1}, Ln0/c$a;->a()I

    .line 59
    move-result p1

    .line 60
    invoke-static {p1, p0}, Lm0/g0;->j(ILandroid/view/View;)V

    .line 63
    sget p1, Lc0/b;->tag_accessibility_actions:I

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ljava/util/ArrayList;

    .line 71
    if-nez p2, :cond_50

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    .line 75
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    :cond_50
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v0, p0}, Lm0/g0;->g(ILandroid/view/View;)V

    .line 87
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

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_10

    .line 7
    const/4 v8, 0x0

    .line 8
    move-object v2, p0

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    move-object v6, p4

    .line 13
    move v7, p5

    .line 14
    invoke-static/range {v2 .. v8}, Lm0/g0$n;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 17
    :cond_10
    return-void
.end method

.method public static m(Landroid/view/View;Lm0/a;)V
    .registers 3

    .line 1
    if-nez p1, :cond_f

    .line 3
    invoke-static {p0}, Lm0/g0;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lm0/a$a;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    new-instance p1, Lm0/a;

    .line 13
    invoke-direct {p1}, Lm0/a;-><init>()V

    .line 16
    :cond_f
    if-nez p1, :cond_13

    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_17

    .line 20
    :cond_13
    invoke-virtual {p1}, Lm0/a;->getBridge()Landroid/view/View$AccessibilityDelegate;

    .line 23
    move-result-object p1

    .line 24
    :goto_17
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 27
    return-void
.end method

.method public static n(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 5

    .line 1
    new-instance v0, Lm0/d0;

    .line 3
    sget v1, Lc0/b;->tag_accessibility_pane_title:I

    .line 5
    const-class v2, Ljava/lang/CharSequence;

    .line 7
    invoke-direct {v0, v1, v2}, Lm0/d0;-><init>(ILjava/lang/Class;)V

    .line 10
    invoke-virtual {v0, p0, p1}, Lm0/g0$b;->e(Landroid/view/View;Ljava/lang/Object;)V

    .line 13
    if-eqz p1, :cond_39

    .line 15
    sget-object p1, Lm0/g0;->e:Lm0/g0$a;

    .line 17
    iget-object v0, p1, Lm0/g0$a;->a:Ljava/util/WeakHashMap;

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_20

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_20

    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    const/4 v1, 0x0

    .line 34
    :goto_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 44
    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4a

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    goto :goto_4a

    .line 58
    :cond_39
    sget-object p1, Lm0/g0;->e:Lm0/g0$a;

    .line 60
    iget-object v0, p1, Lm0/g0$a;->a:Ljava/util/WeakHashMap;

    .line 62
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0, p1}, Lm0/g0$d;->o(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 75
    :cond_4a
    :goto_4a
    return-void
.end method

.method public static o(Landroid/view/View;Lm0/z;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    invoke-static {p0, v0}, Lm0/g0$k;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 12
    return-void
.end method
