.class public Lm0/r0$f;
.super Lm0/r0$k;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static h:Z = false

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/reflect/Field;

.field public static l:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[Lf0/f;

.field public e:Lf0/f;

.field public f:Lm0/r0;

.field public g:Lf0/f;


# direct methods
.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lm0/r0$k;-><init>(Lm0/r0;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lm0/r0$f;->e:Lf0/f;

    .line 7
    iput-object p2, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 9
    return-void
.end method

.method private r(IZ)Lf0/f;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget-object v0, Lf0/f;->e:Lf0/f;

    .line 3
    const/4 v1, 0x1

    .line 4
    :goto_3
    const/16 v2, 0x100

    .line 6
    if-gt v1, v2, :cond_37

    .line 8
    and-int v2, p1, v1

    .line 10
    if-nez v2, :cond_c

    .line 12
    goto :goto_34

    .line 13
    :cond_c
    invoke-virtual {p0, v1, p2}, Lm0/r0$f;->s(IZ)Lf0/f;

    .line 16
    move-result-object v2

    .line 17
    iget v3, v0, Lf0/f;->a:I

    .line 19
    iget v4, v2, Lf0/f;->a:I

    .line 21
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result v3

    .line 25
    iget v4, v0, Lf0/f;->b:I

    .line 27
    iget v5, v2, Lf0/f;->b:I

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v4

    .line 33
    iget v5, v0, Lf0/f;->c:I

    .line 35
    iget v6, v2, Lf0/f;->c:I

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result v5

    .line 41
    iget v0, v0, Lf0/f;->d:I

    .line 43
    iget v2, v2, Lf0/f;->d:I

    .line 45
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result v0

    .line 49
    invoke-static {v3, v4, v5, v0}, Lf0/f;->a(IIII)Lf0/f;

    .line 52
    move-result-object v0

    .line 53
    :goto_34
    shl-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_3

    .line 56
    :cond_37
    return-object v0
.end method

.method private t()Lf0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$f;->f:Lm0/r0;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 7
    invoke-virtual {v0}, Lm0/r0$k;->h()Lf0/f;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    sget-object v0, Lf0/f;->e:Lf0/f;

    .line 14
    return-object v0
.end method

.method private u(Landroid/view/View;)Lf0/f;
    .registers 7

    .line 1
    const-string v0, "WindowInsetsCompat"

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    const/16 v2, 0x1e

    .line 7
    if-ge v1, v2, :cond_64

    .line 9
    sget-boolean v1, Lm0/r0$f;->h:Z

    .line 11
    if-nez v1, :cond_f

    .line 13
    invoke-static {}, Lm0/r0$f;->v()V

    .line 16
    :cond_f
    sget-object v1, Lm0/r0$f;->i:Ljava/lang/reflect/Method;

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_63

    .line 21
    sget-object v3, Lm0/r0$f;->j:Ljava/lang/Class;

    .line 23
    if-eqz v3, :cond_63

    .line 25
    sget-object v3, Lm0/r0$f;->k:Ljava/lang/reflect/Field;

    .line 27
    if-nez v3, :cond_1d

    .line 29
    goto :goto_63

    .line 30
    :cond_1d
    const/4 v3, 0x0

    .line 31
    :try_start_1e
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_31

    .line 39
    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    .line 41
    new-instance v1, Ljava/lang/NullPointerException;

    .line 43
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    .line 46
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    return-object v2

    .line 50
    :cond_31
    sget-object v1, Lm0/r0$f;->l:Ljava/lang/reflect/Field;

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    sget-object v1, Lm0/r0$f;->k:Ljava/lang/reflect/Field;

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/graphics/Rect;

    .line 64
    if-eqz p1, :cond_4d

    .line 66
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 68
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 70
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 72
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 74
    invoke-static {v1, v3, v4, p1}, Lf0/f;->a(IIII)Lf0/f;

    .line 77
    move-result-object v2
    :try_end_4d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1e .. :try_end_4d} :catch_4e

    .line 78
    :cond_4d
    return-object v2

    .line 79
    :catch_4e
    move-exception p1

    .line 80
    const-string v1, "Failed to get visible insets. (Reflection error). "

    .line 82
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_63
    :goto_63
    return-object v2

    .line 101
    :cond_64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 103
    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    .line 105
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1
.end method

.method private static v()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    const-class v1, Landroid/view/View;

    .line 4
    const-string v2, "getViewRootImpl"

    .line 6
    const/4 v3, 0x0

    .line 7
    new-array v3, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lm0/r0$f;->i:Ljava/lang/reflect/Method;

    .line 15
    const-string v1, "android.view.View$AttachInfo"

    .line 17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lm0/r0$f;->j:Ljava/lang/Class;

    .line 23
    const-string v2, "mVisibleInsets"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v1

    .line 29
    sput-object v1, Lm0/r0$f;->k:Ljava/lang/reflect/Field;

    .line 31
    const-string v1, "android.view.ViewRootImpl"

    .line 33
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    move-result-object v1

    .line 37
    const-string v2, "mAttachInfo"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 42
    move-result-object v1

    .line 43
    sput-object v1, Lm0/r0$f;->l:Ljava/lang/reflect/Field;

    .line 45
    sget-object v1, Lm0/r0$f;->k:Ljava/lang/reflect/Field;

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 50
    sget-object v1, Lm0/r0$f;->l:Ljava/lang/reflect/Field;

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_36} :catch_37

    .line 55
    goto :goto_4e

    .line 56
    :catch_37
    move-exception v1

    .line 57
    const-string v2, "Failed to get visible insets. (Reflection error). "

    .line 59
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    const-string v3, "WindowInsetsCompat"

    .line 76
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :goto_4e
    sput-boolean v0, Lm0/r0$f;->h:Z

    .line 81
    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lm0/r0$f;->u(Landroid/view/View;)Lf0/f;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 7
    sget-object p1, Lf0/f;->e:Lf0/f;

    .line 9
    :cond_8
    invoke-virtual {p0, p1}, Lm0/r0$f;->w(Lf0/f;)V

    .line 12
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lm0/r0$k;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    check-cast p1, Lm0/r0$f;

    .line 11
    iget-object v0, p0, Lm0/r0$f;->g:Lf0/f;

    .line 13
    iget-object p1, p1, Lm0/r0$f;->g:Lf0/f;

    .line 15
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public f(I)Lf0/f;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lm0/r0$f;->r(IZ)Lf0/f;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final j()Lf0/f;
    .registers 5

    .line 1
    iget-object v0, p0, Lm0/r0$f;->e:Lf0/f;

    .line 3
    if-nez v0, :cond_22

    .line 5
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 13
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 19
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 25
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 28
    move-result v3

    .line 29
    invoke-static {v0, v1, v2, v3}, Lf0/f;->a(IIII)Lf0/f;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lm0/r0$f;->e:Lf0/f;

    .line 35
    :cond_22
    iget-object v0, p0, Lm0/r0$f;->e:Lf0/f;

    .line 37
    return-object v0
.end method

.method public l(IIII)Lm0/r0;
    .registers 8

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 7
    move-result-object v0

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    const/16 v2, 0x1e

    .line 12
    if-lt v1, v2, :cond_13

    .line 14
    new-instance v1, Lm0/r0$d;

    .line 16
    invoke-direct {v1, v0}, Lm0/r0$d;-><init>(Lm0/r0;)V

    .line 19
    goto :goto_22

    .line 20
    :cond_13
    const/16 v2, 0x1d

    .line 22
    if-lt v1, v2, :cond_1d

    .line 24
    new-instance v1, Lm0/r0$c;

    .line 26
    invoke-direct {v1, v0}, Lm0/r0$c;-><init>(Lm0/r0;)V

    .line 29
    goto :goto_22

    .line 30
    :cond_1d
    new-instance v1, Lm0/r0$b;

    .line 32
    invoke-direct {v1, v0}, Lm0/r0$b;-><init>(Lm0/r0;)V

    .line 35
    :goto_22
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p1, p2, p3, p4}, Lm0/r0;->f(Lf0/f;IIII)Lf0/f;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Lm0/r0$e;->d(Lf0/f;)V

    .line 46
    invoke-virtual {p0}, Lm0/r0$k;->h()Lf0/f;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, p1, p2, p3, p4}, Lm0/r0;->f(Lf0/f;IIII)Lf0/f;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Lm0/r0$e;->c(Lf0/f;)V

    .line 57
    invoke-virtual {v1}, Lm0/r0$e;->b()Lm0/r0;

    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public o([Lf0/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/r0$f;->d:[Lf0/f;

    .line 3
    return-void
.end method

.method public p(Lm0/r0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/r0$f;->f:Lm0/r0;

    .line 3
    return-void
.end method

.method public s(IZ)Lf0/f;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_f2

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p1, v1, :cond_aa

    .line 9
    const/16 p2, 0x8

    .line 11
    if-eq p1, p2, :cond_71

    .line 13
    const/16 p2, 0x10

    .line 15
    if-eq p1, p2, :cond_6c

    .line 17
    const/16 p2, 0x20

    .line 19
    if-eq p1, p2, :cond_67

    .line 21
    const/16 p2, 0x40

    .line 23
    if-eq p1, p2, :cond_62

    .line 25
    const/16 p2, 0x80

    .line 27
    if-eq p1, p2, :cond_1f

    .line 29
    sget-object p1, Lf0/f;->e:Lf0/f;

    .line 31
    return-object p1

    .line 32
    :cond_1f
    iget-object p1, p0, Lm0/r0$f;->f:Lm0/r0;

    .line 34
    if-eqz p1, :cond_2a

    .line 36
    iget-object p1, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 38
    invoke-virtual {p1}, Lm0/r0$k;->e()Lm0/d;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-virtual {p0}, Lm0/r0$k;->e()Lm0/d;

    .line 46
    move-result-object p1

    .line 47
    :goto_2e
    if-eqz p1, :cond_5f

    .line 49
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    const/16 v1, 0x1c

    .line 53
    if-lt p2, v1, :cond_3d

    .line 55
    iget-object v2, p1, Lm0/d;->a:Landroid/view/DisplayCutout;

    .line 57
    invoke-static {v2}, Lm0/d$a;->d(Landroid/view/DisplayCutout;)I

    .line 60
    move-result v2

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v2, v0

    .line 63
    :goto_3e
    if-lt p2, v1, :cond_47

    .line 65
    iget-object v3, p1, Lm0/d;->a:Landroid/view/DisplayCutout;

    .line 67
    invoke-static {v3}, Lm0/d$a;->f(Landroid/view/DisplayCutout;)I

    .line 70
    move-result v3

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v3, v0

    .line 73
    :goto_48
    if-lt p2, v1, :cond_51

    .line 75
    iget-object v4, p1, Lm0/d;->a:Landroid/view/DisplayCutout;

    .line 77
    invoke-static {v4}, Lm0/d$a;->e(Landroid/view/DisplayCutout;)I

    .line 80
    move-result v4

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v4, v0

    .line 83
    :goto_52
    if-lt p2, v1, :cond_5a

    .line 85
    iget-object p1, p1, Lm0/d;->a:Landroid/view/DisplayCutout;

    .line 87
    invoke-static {p1}, Lm0/d$a;->c(Landroid/view/DisplayCutout;)I

    .line 90
    move-result v0

    .line 91
    :cond_5a
    invoke-static {v2, v3, v4, v0}, Lf0/f;->a(IIII)Lf0/f;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_5f
    sget-object p1, Lf0/f;->e:Lf0/f;

    .line 98
    return-object p1

    .line 99
    :cond_62
    invoke-virtual {p0}, Lm0/r0$k;->k()Lf0/f;

    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_67
    invoke-virtual {p0}, Lm0/r0$k;->g()Lf0/f;

    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :cond_6c
    invoke-virtual {p0}, Lm0/r0$k;->i()Lf0/f;

    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    :cond_71
    iget-object p1, p0, Lm0/r0$f;->d:[Lf0/f;

    .line 116
    if-eqz p1, :cond_78

    .line 118
    const/4 p2, 0x3

    .line 119
    aget-object v2, p1, p2

    .line 121
    :cond_78
    if-eqz v2, :cond_7b

    .line 123
    return-object v2

    .line 124
    :cond_7b
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p0}, Lm0/r0$f;->t()Lf0/f;

    .line 131
    move-result-object p2

    .line 132
    iget p1, p1, Lf0/f;->d:I

    .line 134
    iget v1, p2, Lf0/f;->d:I

    .line 136
    if-le p1, v1, :cond_8e

    .line 138
    invoke-static {v0, v0, v0, p1}, Lf0/f;->a(IIII)Lf0/f;

    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    :cond_8e
    iget-object p1, p0, Lm0/r0$f;->g:Lf0/f;

    .line 145
    if-eqz p1, :cond_a7

    .line 147
    sget-object v1, Lf0/f;->e:Lf0/f;

    .line 149
    invoke-virtual {p1, v1}, Lf0/f;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_a7

    .line 155
    iget-object p1, p0, Lm0/r0$f;->g:Lf0/f;

    .line 157
    iget p1, p1, Lf0/f;->d:I

    .line 159
    iget p2, p2, Lf0/f;->d:I

    .line 161
    if-le p1, p2, :cond_a7

    .line 163
    invoke-static {v0, v0, v0, p1}, Lf0/f;->a(IIII)Lf0/f;

    .line 166
    move-result-object p1

    .line 167
    return-object p1

    .line 168
    :cond_a7
    sget-object p1, Lf0/f;->e:Lf0/f;

    .line 170
    return-object p1

    .line 171
    :cond_aa
    if-eqz p2, :cond_d1

    .line 173
    invoke-direct {p0}, Lm0/r0$f;->t()Lf0/f;

    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p0}, Lm0/r0$k;->h()Lf0/f;

    .line 180
    move-result-object p2

    .line 181
    iget v1, p1, Lf0/f;->a:I

    .line 183
    iget v2, p2, Lf0/f;->a:I

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 188
    move-result v1

    .line 189
    iget v2, p1, Lf0/f;->c:I

    .line 191
    iget v3, p2, Lf0/f;->c:I

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 196
    move-result v2

    .line 197
    iget p1, p1, Lf0/f;->d:I

    .line 199
    iget p2, p2, Lf0/f;->d:I

    .line 201
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 204
    move-result p1

    .line 205
    invoke-static {v1, v0, v2, p1}, Lf0/f;->a(IIII)Lf0/f;

    .line 208
    move-result-object p1

    .line 209
    return-object p1

    .line 210
    :cond_d1
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    .line 213
    move-result-object p1

    .line 214
    iget-object p2, p0, Lm0/r0$f;->f:Lm0/r0;

    .line 216
    if-eqz p2, :cond_df

    .line 218
    iget-object p2, p2, Lm0/r0;->a:Lm0/r0$k;

    .line 220
    invoke-virtual {p2}, Lm0/r0$k;->h()Lf0/f;

    .line 223
    move-result-object v2

    .line 224
    :cond_df
    iget p2, p1, Lf0/f;->d:I

    .line 226
    if-eqz v2, :cond_e9

    .line 228
    iget v1, v2, Lf0/f;->d:I

    .line 230
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 233
    move-result p2

    .line 234
    :cond_e9
    iget v1, p1, Lf0/f;->a:I

    .line 236
    iget p1, p1, Lf0/f;->c:I

    .line 238
    invoke-static {v1, v0, p1, p2}, Lf0/f;->a(IIII)Lf0/f;

    .line 241
    move-result-object p1

    .line 242
    return-object p1

    .line 243
    :cond_f2
    if-eqz p2, :cond_109

    .line 245
    invoke-direct {p0}, Lm0/r0$f;->t()Lf0/f;

    .line 248
    move-result-object p1

    .line 249
    iget p1, p1, Lf0/f;->b:I

    .line 251
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    .line 254
    move-result-object p2

    .line 255
    iget p2, p2, Lf0/f;->b:I

    .line 257
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 260
    move-result p1

    .line 261
    invoke-static {v0, p1, v0, v0}, Lf0/f;->a(IIII)Lf0/f;

    .line 264
    move-result-object p1

    .line 265
    return-object p1

    .line 266
    :cond_109
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    .line 269
    move-result-object p1

    .line 270
    iget p1, p1, Lf0/f;->b:I

    .line 272
    invoke-static {v0, p1, v0, v0}, Lf0/f;->a(IIII)Lf0/f;

    .line 275
    move-result-object p1

    .line 276
    return-object p1
.end method

.method public w(Lf0/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/r0$f;->g:Lf0/f;

    .line 3
    return-void
.end method
