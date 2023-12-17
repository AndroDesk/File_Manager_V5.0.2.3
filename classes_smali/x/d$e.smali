.class public final Lx/d$e;
.super Lx/d;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lx/d;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lx/d$e;->k:Z

    .line 7
    return-void
.end method


# virtual methods
.method public final e(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z
    .registers 15

    .line 1
    const-string v0, "unable to setProgress"

    .line 3
    const-string v1, "ViewTimeCycle"

    .line 5
    instance-of v2, p4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 7
    if-eqz v2, :cond_13

    .line 9
    move-object v0, p4

    .line 10
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 12
    invoke-virtual/range {p0 .. p5}, Lx/d;->d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F

    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 19
    goto :goto_49

    .line 20
    :cond_13
    iget-boolean v2, p0, Lx/d$e;->k:Z

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_19

    .line 25
    return v3

    .line 26
    :cond_19
    const/4 v2, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    :try_start_1b
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v5

    .line 32
    const-string v6, "setProgress"

    .line 34
    new-array v7, v4, [Ljava/lang/Class;

    .line 36
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 38
    aput-object v8, v7, v3

    .line 40
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_2b} :catch_2c

    .line 44
    goto :goto_2e

    .line 45
    :catch_2c
    iput-boolean v4, p0, Lx/d$e;->k:Z

    .line 47
    :goto_2e
    if-eqz v2, :cond_49

    .line 49
    :try_start_30
    new-array v4, v4, [Ljava/lang/Object;

    .line 51
    invoke-virtual/range {p0 .. p5}, Lx/d;->d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F

    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    move-result-object p1

    .line 59
    aput-object p1, v4, v3

    .line 61
    invoke-virtual {v2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_3f} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_3f} :catch_40

    .line 64
    goto :goto_49

    .line 65
    :catch_40
    move-exception p1

    .line 66
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    goto :goto_49

    .line 70
    :catch_45
    move-exception p1

    .line 71
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_49
    :goto_49
    iget-boolean p1, p0, Lu/l;->h:Z

    .line 76
    return p1
.end method
