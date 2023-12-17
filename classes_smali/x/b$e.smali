.class public final Lx/b$e;
.super Lx/b;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lx/b;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lx/b$e;->g:Z

    .line 7
    return-void
.end method


# virtual methods
.method public final d(FLandroid/view/View;)V
    .registers 12

    .line 1
    const-string v0, "unable to setProgress"

    .line 3
    const-string v1, "ViewOscillator"

    .line 5
    instance-of v2, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 7
    if-eqz v2, :cond_12

    .line 9
    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 11
    invoke-virtual {p0, p1}, Lu/e;->a(F)F

    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 18
    goto :goto_48

    .line 19
    :cond_12
    iget-boolean v2, p0, Lx/b$e;->g:Z

    .line 21
    if-eqz v2, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    :try_start_1a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object v5

    .line 31
    const-string v6, "setProgress"

    .line 33
    new-array v7, v4, [Ljava/lang/Class;

    .line 35
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 37
    aput-object v8, v7, v3

    .line 39
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_2a} :catch_2b

    .line 43
    goto :goto_2d

    .line 44
    :catch_2b
    iput-boolean v4, p0, Lx/b$e;->g:Z

    .line 46
    :goto_2d
    if-eqz v2, :cond_48

    .line 48
    :try_start_2f
    new-array v4, v4, [Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, p1}, Lu/e;->a(F)F

    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    move-result-object p1

    .line 58
    aput-object p1, v4, v3

    .line 60
    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_3e} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_3e} :catch_3f

    .line 63
    goto :goto_48

    .line 64
    :catch_3f
    move-exception p1

    .line 65
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    goto :goto_48

    .line 69
    :catch_44
    move-exception p1

    .line 70
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_48
    :goto_48
    return-void
.end method
