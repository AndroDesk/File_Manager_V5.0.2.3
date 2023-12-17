.class Landroidx/core/content/ContextCompat$Api28Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/y;->o(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
