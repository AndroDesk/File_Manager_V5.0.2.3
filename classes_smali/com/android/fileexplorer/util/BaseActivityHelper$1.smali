.class Lcom/android/fileexplorer/util/BaseActivityHelper$1;
.super Landroid/os/Handler;
.source "BaseActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/BaseActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    const-string p1, "BaseActivityHelper"

    .line 3
    const-string v0, "killProcess"

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->releaseAll()V

    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 15
    invoke-static {p1}, Lcom/android/fileexplorer/util/BaseActivityHelper;->access$002(Z)Z

    .line 18
    return-void
.end method
