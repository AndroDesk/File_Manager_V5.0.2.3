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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lx/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx/d$e;->k:Z

    return-void
.end method


# virtual methods
.method public final e(FJLandroid/view/View;Landroidx/appcompat/app/u;)Z
    .registers 15

    const-string v0, "unable to setProgress"

    const-string v1, "ViewTimeCycle"

    instance-of v2, p4, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_13

    move-object v0, p4

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual/range {p0 .. p5}, Lx/d;->d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_49

    :cond_13
    iget-boolean v2, p0, Lx/d$e;->k:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    return v3

    :cond_19
    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_1b
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setProgress"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_2b} :catch_2c

    goto :goto_2e

    :catch_2c
    iput-boolean v4, p0, Lx/d$e;->k:Z

    :goto_2e
    if-eqz v2, :cond_49

    :try_start_30
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p5}, Lx/d;->d(FJLandroid/view/View;Landroidx/appcompat/app/u;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v2, p4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_3f} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_49

    :catch_40
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    :catch_45
    move-exception p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    iget-boolean p1, p0, Lu/l;->h:Z

    return p1
.end method
