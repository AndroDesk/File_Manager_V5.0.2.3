.class public final Lm0/r0$b;
.super Lm0/r0$e;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static c:Ljava/lang/reflect/Field; = null

.field public static d:Z = false

.field public static e:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Z = false


# instance fields
.field public a:Landroid/view/WindowInsets;

.field public b:Lf0/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lm0/r0$e;-><init>()V

    .line 2
    invoke-static {}, Lm0/r0$b;->e()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lm0/r0$b;->a:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lm0/r0;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lm0/r0$e;-><init>(Lm0/r0;)V

    .line 4
    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lm0/r0$b;->a:Landroid/view/WindowInsets;

    return-void
.end method

.method private static e()Landroid/view/WindowInsets;
    .registers 7

    .line 1
    sget-boolean v0, Lm0/r0$b;->d:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "WindowInsetsCompat"

    .line 6
    if-nez v0, :cond_1a

    .line 8
    :try_start_7
    const-class v0, Landroid/view/WindowInsets;

    .line 10
    const-string v3, "CONSUMED"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lm0/r0$b;->c:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_11} :catch_12

    .line 18
    goto :goto_18

    .line 19
    :catch_12
    move-exception v0

    .line 20
    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    .line 22
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :goto_18
    sput-boolean v1, Lm0/r0$b;->d:Z

    .line 27
    :cond_1a
    sget-object v0, Lm0/r0$b;->c:Ljava/lang/reflect/Field;

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v0, :cond_33

    .line 32
    :try_start_1f
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/WindowInsets;

    .line 38
    if-eqz v0, :cond_33

    .line 40
    new-instance v4, Landroid/view/WindowInsets;

    .line 42
    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_2c} :catch_2d

    .line 45
    return-object v4

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    .line 49
    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_33
    sget-boolean v0, Lm0/r0$b;->f:Z

    .line 54
    const/4 v4, 0x0

    .line 55
    if-nez v0, :cond_4f

    .line 57
    :try_start_38
    const-class v0, Landroid/view/WindowInsets;

    .line 59
    new-array v5, v1, [Ljava/lang/Class;

    .line 61
    const-class v6, Landroid/graphics/Rect;

    .line 63
    aput-object v6, v5, v4

    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lm0/r0$b;->e:Ljava/lang/reflect/Constructor;
    :try_end_46
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_38 .. :try_end_46} :catch_47

    .line 71
    goto :goto_4d

    .line 72
    :catch_47
    move-exception v0

    .line 73
    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    .line 75
    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_4d
    sput-boolean v1, Lm0/r0$b;->f:Z

    .line 80
    :cond_4f
    sget-object v0, Lm0/r0$b;->e:Ljava/lang/reflect/Constructor;

    .line 82
    if-eqz v0, :cond_69

    .line 84
    :try_start_53
    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    new-instance v5, Landroid/graphics/Rect;

    .line 88
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 91
    aput-object v5, v1, v4

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/view/WindowInsets;
    :try_end_62
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_53 .. :try_end_62} :catch_63

    .line 99
    return-object v0

    .line 100
    :catch_63
    move-exception v0

    .line 101
    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    .line 103
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_69
    return-object v3
.end method


# virtual methods
.method public b()Lm0/r0;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lm0/r0$e;->a()V

    .line 4
    iget-object v0, p0, Lm0/r0$b;->a:Landroid/view/WindowInsets;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 10
    move-result-object v0

    .line 11
    iget-object v2, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 13
    invoke-virtual {v2, v1}, Lm0/r0$k;->o([Lf0/f;)V

    .line 16
    iget-object v1, p0, Lm0/r0$b;->b:Lf0/f;

    .line 18
    iget-object v2, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 20
    invoke-virtual {v2, v1}, Lm0/r0$k;->q(Lf0/f;)V

    .line 23
    return-object v0
.end method

.method public c(Lf0/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm0/r0$b;->b:Lf0/f;

    .line 3
    return-void
.end method

.method public d(Lf0/f;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lm0/r0$b;->a:Landroid/view/WindowInsets;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget v1, p1, Lf0/f;->a:I

    .line 7
    iget v2, p1, Lf0/f;->b:I

    .line 9
    iget v3, p1, Lf0/f;->c:I

    .line 11
    iget p1, p1, Lf0/f;->d:I

    .line 13
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lm0/r0$b;->a:Landroid/view/WindowInsets;

    .line 19
    :cond_12
    return-void
.end method
