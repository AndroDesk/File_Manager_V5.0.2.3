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
.field public static h:Z

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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0, p1}, Lm0/r0$k;-><init>(Lm0/r0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lm0/r0$f;->e:Lf0/f;

    iput-object p2, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private r(IZ)Lf0/f;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Lf0/f;->e:Lf0/f;

    const/4 v1, 0x1

    :goto_3
    const/16 v2, 0x100

    if-gt v1, v2, :cond_37

    and-int v2, p1, v1

    if-nez v2, :cond_c

    goto :goto_34

    :cond_c
    invoke-virtual {p0, v1, p2}, Lm0/r0$f;->s(IZ)Lf0/f;

    move-result-object v2

    iget v3, v0, Lf0/f;->a:I

    iget v4, v2, Lf0/f;->a:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lf0/f;->b:I

    iget v5, v2, Lf0/f;->b:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lf0/f;->c:I

    iget v6, v2, Lf0/f;->c:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v0, v0, Lf0/f;->d:I

    iget v2, v2, Lf0/f;->d:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object v0

    :goto_34
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_37
    return-object v0
.end method

.method private t()Lf0/f;
    .registers 2

    iget-object v0, p0, Lm0/r0$f;->f:Lm0/r0;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->h()Lf0/f;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Lf0/f;->e:Lf0/f;

    return-object v0
.end method

.method private u(Landroid/view/View;)Lf0/f;
    .registers 7

    const-string v0, "WindowInsetsCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_64

    sget-boolean v1, Lm0/r0$f;->h:Z

    if-nez v1, :cond_f

    invoke-static {}, Lm0/r0$f;->v()V

    :cond_f
    sget-object v1, Lm0/r0$f;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    sget-object v3, Lm0/r0$f;->j:Ljava/lang/Class;

    if-eqz v3, :cond_63

    sget-object v3, Lm0/r0$f;->k:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1d

    goto :goto_63

    :cond_1d
    const/4 v3, 0x0

    :try_start_1e
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_31

    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_31
    sget-object v1, Lm0/r0$f;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lm0/r0$f;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_4d

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3, v4, p1}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object v2
    :try_end_4d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1e .. :try_end_4d} :catch_4e

    :cond_4d
    return-object v2

    :catch_4e
    move-exception p1

    const-string v1, "Failed to get visible insets. (Reflection error). "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_63
    :goto_63
    return-object v2

    :cond_64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static v()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lm0/r0$f;->i:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lm0/r0$f;->j:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lm0/r0$f;->k:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lm0/r0$f;->l:Ljava/lang/reflect/Field;

    sget-object v1, Lm0/r0$f;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v1, Lm0/r0$f;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_4e

    :catch_37
    move-exception v1

    const-string v2, "Failed to get visible insets. (Reflection error). "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    sput-boolean v0, Lm0/r0$f;->h:Z

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lm0/r0$f;->u(Landroid/view/View;)Lf0/f;

    move-result-object p1

    if-nez p1, :cond_8

    sget-object p1, Lf0/f;->e:Lf0/f;

    :cond_8
    invoke-virtual {p0, p1}, Lm0/r0$f;->w(Lf0/f;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Lm0/r0$k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    check-cast p1, Lm0/r0$f;

    iget-object v0, p0, Lm0/r0$f;->g:Lf0/f;

    iget-object p1, p1, Lm0/r0$f;->g:Lf0/f;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Lf0/f;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm0/r0$f;->r(IZ)Lf0/f;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lf0/f;
    .registers 5

    iget-object v0, p0, Lm0/r0$f;->e:Lf0/f;

    if-nez v0, :cond_22

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object v0

    iput-object v0, p0, Lm0/r0$f;->e:Lf0/f;

    :cond_22
    iget-object v0, p0, Lm0/r0$f;->e:Lf0/f;

    return-object v0
.end method

.method public l(IIII)Lm0/r0;
    .registers 8

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_13

    new-instance v1, Lm0/r0$d;

    invoke-direct {v1, v0}, Lm0/r0$d;-><init>(Lm0/r0;)V

    goto :goto_22

    :cond_13
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1d

    new-instance v1, Lm0/r0$c;

    invoke-direct {v1, v0}, Lm0/r0$c;-><init>(Lm0/r0;)V

    goto :goto_22

    :cond_1d
    new-instance v1, Lm0/r0$b;

    invoke-direct {v1, v0}, Lm0/r0$b;-><init>(Lm0/r0;)V

    :goto_22
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lm0/r0;->f(Lf0/f;IIII)Lf0/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lm0/r0$e;->d(Lf0/f;)V

    invoke-virtual {p0}, Lm0/r0$k;->h()Lf0/f;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lm0/r0;->f(Lf0/f;IIII)Lf0/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lm0/r0$e;->c(Lf0/f;)V

    invoke-virtual {v1}, Lm0/r0$e;->b()Lm0/r0;

    move-result-object p1

    return-object p1
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public o([Lf0/f;)V
    .registers 2

    iput-object p1, p0, Lm0/r0$f;->d:[Lf0/f;

    return-void
.end method

.method public p(Lm0/r0;)V
    .registers 2

    iput-object p1, p0, Lm0/r0$f;->f:Lm0/r0;

    return-void
.end method

.method public s(IZ)Lf0/f;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_aa

    const/16 p2, 0x8

    if-eq p1, p2, :cond_71

    const/16 p2, 0x10

    if-eq p1, p2, :cond_6c

    const/16 p2, 0x20

    if-eq p1, p2, :cond_67

    const/16 p2, 0x40

    if-eq p1, p2, :cond_62

    const/16 p2, 0x80

    if-eq p1, p2, :cond_1f

    sget-object p1, Lf0/f;->e:Lf0/f;

    return-object p1

    :cond_1f
    iget-object p1, p0, Lm0/r0$f;->f:Lm0/r0;

    if-eqz p1, :cond_2a

    iget-object p1, p1, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {p1}, Lm0/r0$k;->e()Lm0/d;

    move-result-object p1

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0}, Lm0/r0$k;->e()Lm0/d;

    move-result-object p1

    :goto_2e
    if-eqz p1, :cond_5f

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p2, v1, :cond_3d

    iget-object v2, p1, Lm0/d;->a:Landroid/view/DisplayCutout;

    invoke-static {v2}, Lm0/d$a;->d(Landroid/view/DisplayCutout;)I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v0

    :goto_3e
    if-lt p2, v1, :cond_47

    iget-object v3, p1, Lm0/d;->a:Landroid/view/DisplayCutout;

    invoke-static {v3}, Lm0/d$a;->f(Landroid/view/DisplayCutout;)I

    move-result v3

    goto :goto_48

    :cond_47
    move v3, v0

    :goto_48
    if-lt p2, v1, :cond_51

    iget-object v4, p1, Lm0/d;->a:Landroid/view/DisplayCutout;

    invoke-static {v4}, Lm0/d$a;->e(Landroid/view/DisplayCutout;)I

    move-result v4

    goto :goto_52

    :cond_51
    move v4, v0

    :goto_52
    if-lt p2, v1, :cond_5a

    iget-object p1, p1, Lm0/d;->a:Landroid/view/DisplayCutout;

    invoke-static {p1}, Lm0/d$a;->c(Landroid/view/DisplayCutout;)I

    move-result v0

    :cond_5a
    invoke-static {v2, v3, v4, v0}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p1

    return-object p1

    :cond_5f
    sget-object p1, Lf0/f;->e:Lf0/f;

    return-object p1

    :cond_62
    invoke-virtual {p0}, Lm0/r0$k;->k()Lf0/f;

    move-result-object p1

    return-object p1

    :cond_67
    invoke-virtual {p0}, Lm0/r0$k;->g()Lf0/f;

    move-result-object p1

    return-object p1

    :cond_6c
    invoke-virtual {p0}, Lm0/r0$k;->i()Lf0/f;

    move-result-object p1

    return-object p1

    :cond_71
    iget-object p1, p0, Lm0/r0$f;->d:[Lf0/f;

    if-eqz p1, :cond_78

    const/4 p2, 0x3

    aget-object v2, p1, p2

    :cond_78
    if-eqz v2, :cond_7b

    return-object v2

    :cond_7b
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    move-result-object p1

    invoke-direct {p0}, Lm0/r0$f;->t()Lf0/f;

    move-result-object p2

    iget p1, p1, Lf0/f;->d:I

    iget v1, p2, Lf0/f;->d:I

    if-le p1, v1, :cond_8e

    invoke-static {v0, v0, v0, p1}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p1

    return-object p1

    :cond_8e
    iget-object p1, p0, Lm0/r0$f;->g:Lf0/f;

    if-eqz p1, :cond_a7

    sget-object v1, Lf0/f;->e:Lf0/f;

    invoke-virtual {p1, v1}, Lf0/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    iget-object p1, p0, Lm0/r0$f;->g:Lf0/f;

    iget p1, p1, Lf0/f;->d:I

    iget p2, p2, Lf0/f;->d:I

    if-le p1, p2, :cond_a7

    invoke-static {v0, v0, v0, p1}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p1

    return-object p1

    :cond_a7
    sget-object p1, Lf0/f;->e:Lf0/f;

    return-object p1

    :cond_aa
    if-eqz p2, :cond_d1

    invoke-direct {p0}, Lm0/r0$f;->t()Lf0/f;

    move-result-object p1

    invoke-virtual {p0}, Lm0/r0$k;->h()Lf0/f;

    move-result-object p2

    iget v1, p1, Lf0/f;->a:I

    iget v2, p2, Lf0/f;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Lf0/f;->c:I

    iget v3, p2, Lf0/f;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p1, Lf0/f;->d:I

    iget p2, p2, Lf0/f;->d:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, v0, v2, p1}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p1

    return-object p1

    :cond_d1
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    move-result-object p1

    iget-object p2, p0, Lm0/r0$f;->f:Lm0/r0;

    if-eqz p2, :cond_df

    iget-object p2, p2, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {p2}, Lm0/r0$k;->h()Lf0/f;

    move-result-object v2

    :cond_df
    iget p2, p1, Lf0/f;->d:I

    if-eqz v2, :cond_e9

    iget v1, v2, Lf0/f;->d:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_e9
    iget v1, p1, Lf0/f;->a:I

    iget p1, p1, Lf0/f;->c:I

    invoke-static {v1, v0, p1, p2}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p1

    return-object p1

    :cond_f2
    if-eqz p2, :cond_109

    invoke-direct {p0}, Lm0/r0$f;->t()Lf0/f;

    move-result-object p1

    iget p1, p1, Lf0/f;->b:I

    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    move-result-object p2

    iget p2, p2, Lf0/f;->b:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1, v0, v0}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p1

    return-object p1

    :cond_109
    invoke-virtual {p0}, Lm0/r0$f;->j()Lf0/f;

    move-result-object p1

    iget p1, p1, Lf0/f;->b:I

    invoke-static {v0, p1, v0, v0}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p1

    return-object p1
.end method

.method public w(Lf0/f;)V
    .registers 2

    iput-object p1, p0, Lm0/r0$f;->g:Lf0/f;

    return-void
.end method
