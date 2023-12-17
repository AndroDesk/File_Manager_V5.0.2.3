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
.field public static a:Z = false

.field public static b:Ljava/lang/reflect/Method; = null

.field public static c:Z = false

.field public static d:Ljava/lang/reflect/Field;


# direct methods
.method public static a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    const/16 v1, 0x1c

    .line 7
    if-lt v0, v1, :cond_9

    .line 9
    goto :goto_77

    .line 10
    :cond_9
    sget-object v0, Lm0/g0$s;->d:Ljava/util/ArrayList;

    .line 12
    sget v0, Lc0/b;->tag_unhandled_key_event_manager:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lm0/g0$s;

    .line 20
    if-nez v1, :cond_1d

    .line 22
    new-instance v1, Lm0/g0$s;

    .line 24
    invoke-direct {v1}, Lm0/g0$s;-><init>()V

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 30
    :cond_1d
    iget-object p0, v1, Lm0/g0$s;->c:Ljava/lang/ref/WeakReference;

    .line 32
    if-eqz p0, :cond_28

    .line 34
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    if-ne p0, p1, :cond_28

    .line 40
    goto :goto_77

    .line 41
    :cond_28
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 46
    iput-object p0, v1, Lm0/g0$s;->c:Ljava/lang/ref/WeakReference;

    .line 48
    const/4 p0, 0x0

    .line 49
    iget-object v0, v1, Lm0/g0$s;->b:Landroid/util/SparseArray;

    .line 51
    if-nez v0, :cond_3b

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    .line 55
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 58
    iput-object v0, v1, Lm0/g0$s;->b:Landroid/util/SparseArray;

    .line 60
    :cond_3b
    iget-object v0, v1, Lm0/g0$s;->b:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-ne v1, v2, :cond_57

    .line 69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 76
    move-result v1

    .line 77
    if-ltz v1, :cond_57

    .line 79
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 85
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 88
    :cond_57
    if-nez p0, :cond_63

    .line 90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 93
    move-result p0

    .line 94
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 100
    :cond_63
    if-eqz p0, :cond_77

    .line 102
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Landroid/view/View;

    .line 108
    if-eqz p0, :cond_78

    .line 110
    invoke-static {p0}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_78

    .line 116
    invoke-static {p0, p1}, Lm0/g0$s;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    :goto_77
    const/4 v2, 0x0

    .line 121
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

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v2, 0x1c

    .line 9
    if-lt v1, v2, :cond_f

    .line 11
    invoke-interface {p0, p3}, Lm0/h$a;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    instance-of v1, p2, Landroid/app/Activity;

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_81

    .line 22
    check-cast p2, Landroid/app/Activity;

    .line 24
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 27
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object p0

    .line 31
    const/16 p1, 0x8

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_64

    .line 39
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 46
    move-result v1

    .line 47
    const/16 v4, 0x52

    .line 49
    if-ne v1, v4, :cond_64

    .line 51
    if-eqz p1, :cond_64

    .line 53
    sget-boolean v1, Lm0/h;->a:Z

    .line 55
    if-nez v1, :cond_4c

    .line 57
    :try_start_38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v1

    .line 61
    const-string v4, "onMenuKeyEvent"

    .line 63
    new-array v5, v3, [Ljava/lang/Class;

    .line 65
    const-class v6, Landroid/view/KeyEvent;

    .line 67
    aput-object v6, v5, v0

    .line 69
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    move-result-object v1

    .line 73
    sput-object v1, Lm0/h;->b:Ljava/lang/reflect/Method;
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_4a} :catch_4a

    .line 75
    :catch_4a
    sput-boolean v3, Lm0/h;->a:Z

    .line 77
    :cond_4c
    sget-object v1, Lm0/h;->b:Ljava/lang/reflect/Method;

    .line 79
    if-eqz v1, :cond_61

    .line 81
    :try_start_50
    new-array v4, v3, [Ljava/lang/Object;

    .line 83
    aput-object p3, v4, v0

    .line 85
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_5b

    .line 91
    goto :goto_61

    .line 92
    :cond_5b
    check-cast p1, Ljava/lang/Boolean;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    move-result v0
    :try_end_61
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_61} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_61} :catch_61

    .line 98
    :catch_61
    :cond_61
    :goto_61
    if-eqz v0, :cond_64

    .line 100
    goto :goto_80

    .line 101
    :cond_64
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6b

    .line 107
    goto :goto_80

    .line 108
    :cond_6b
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0, p3}, Lm0/g0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_76

    .line 118
    goto :goto_80

    .line 119
    :cond_76
    if-eqz p0, :cond_7c

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 124
    move-result-object v2

    .line 125
    :cond_7c
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 128
    move-result v3

    .line 129
    :goto_80
    return v3

    .line 130
    :cond_81
    instance-of v1, p2, Landroid/app/Dialog;

    .line 132
    if-eqz v1, :cond_d4

    .line 134
    check-cast p2, Landroid/app/Dialog;

    .line 136
    sget-boolean p0, Lm0/h;->c:Z

    .line 138
    if-nez p0, :cond_9a

    .line 140
    :try_start_8b
    const-class p0, Landroid/app/Dialog;

    .line 142
    const-string p1, "mOnKeyListener"

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 147
    move-result-object p0

    .line 148
    sput-object p0, Lm0/h;->d:Ljava/lang/reflect/Field;

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_98
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8b .. :try_end_98} :catch_98

    .line 153
    :catch_98
    sput-boolean v3, Lm0/h;->c:Z

    .line 155
    :cond_9a
    sget-object p0, Lm0/h;->d:Ljava/lang/reflect/Field;

    .line 157
    if-eqz p0, :cond_a5

    .line 159
    :try_start_9e
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object p0

    .line 163
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_a4
    .catch Ljava/lang/IllegalAccessException; {:try_start_9e .. :try_end_a4} :catch_a5

    .line 165
    goto :goto_a6

    .line 166
    :catch_a5
    :cond_a5
    move-object p0, v2

    .line 167
    :goto_a6
    if-eqz p0, :cond_b3

    .line 169
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 172
    move-result p1

    .line 173
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_b3

    .line 179
    goto :goto_d3

    .line 180
    :cond_b3
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_be

    .line 190
    goto :goto_d3

    .line 191
    :cond_be
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 194
    move-result-object p0

    .line 195
    invoke-static {p0, p3}, Lm0/g0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_c9

    .line 201
    goto :goto_d3

    .line 202
    :cond_c9
    if-eqz p0, :cond_cf

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 207
    move-result-object v2

    .line 208
    :cond_cf
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 211
    move-result v3

    .line 212
    :goto_d3
    return v3

    .line 213
    :cond_d4
    if-eqz p1, :cond_dc

    .line 215
    invoke-static {p1, p3}, Lm0/g0;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_e2

    .line 221
    :cond_dc
    invoke-interface {p0, p3}, Lm0/h$a;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 224
    move-result p0

    .line 225
    if-eqz p0, :cond_e3

    .line 227
    :cond_e2
    move v0, v3

    .line 228
    :cond_e3
    return v0
.end method
