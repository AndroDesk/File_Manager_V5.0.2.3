.class public Lcom/fileexplorer/advert/util/SafeRunnable;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FE_LOG_TAG:Ljava/lang/String; = "FE_LOG"

.field private static final TAG:Ljava/lang/String; = "SafeRunnable"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fileexplorer/advert/util/SafeRunnable;->safeRun()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 4
    goto :goto_c

    .line 5
    :catchall_4
    move-exception v0

    .line 6
    const-string v1, "FE_LOG"

    .line 8
    const-string v2, "SafeRunnable"

    .line 10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :goto_c
    return-void
.end method

.method public safeRun()V
    .registers 1

    return-void
.end method
