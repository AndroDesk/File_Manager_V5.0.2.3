.class Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;
.super Ljava/lang/Object;
.source "MultiThreadTaskHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->addTask(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/MultiThreadTaskHelper;

.field public final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->this$0:Lcom/android/fileexplorer/util/MultiThreadTaskHelper;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->val$runnable:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->val$runnable:Ljava/lang/Runnable;

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 6
    :goto_5
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->this$0:Lcom/android/fileexplorer/util/MultiThreadTaskHelper;

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->access$000(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;)V

    .line 11
    goto :goto_12

    .line 12
    :catchall_b
    move-exception v0

    .line 13
    goto :goto_13

    .line 14
    :catch_d
    move-exception v0

    .line 15
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_b

    .line 18
    goto :goto_5

    .line 19
    :goto_12
    return-void

    .line 20
    :goto_13
    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->this$0:Lcom/android/fileexplorer/util/MultiThreadTaskHelper;

    .line 22
    invoke-static {v1}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->access$000(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;)V

    .line 25
    throw v0
.end method
