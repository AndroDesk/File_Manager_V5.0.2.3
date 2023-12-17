.class public Lcom/fileexplorer/advert/util/SafeRunnable;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FE_LOG_TAG:Ljava/lang/String; = "FE_LOG"

.field private static final TAG:Ljava/lang/String; = "SafeRunnable"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/fileexplorer/advert/util/SafeRunnable;->safeRun()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    const-string v1, "FE_LOG"

    const-string v2, "SafeRunnable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public safeRun()V
    .registers 1

    return-void
.end method
