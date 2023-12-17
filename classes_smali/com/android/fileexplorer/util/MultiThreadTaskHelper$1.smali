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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->this$0:Lcom/android/fileexplorer/util/MultiThreadTaskHelper;

    iput-object p2, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    :goto_5
    iget-object v0, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->this$0:Lcom/android/fileexplorer/util/MultiThreadTaskHelper;

    invoke-static {v0}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->access$000(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;)V

    goto :goto_12

    :catchall_b
    move-exception v0

    goto :goto_13

    :catch_d
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_b

    goto :goto_5

    :goto_12
    return-void

    :goto_13
    iget-object v1, p0, Lcom/android/fileexplorer/util/MultiThreadTaskHelper$1;->this$0:Lcom/android/fileexplorer/util/MultiThreadTaskHelper;

    invoke-static {v1}, Lcom/android/fileexplorer/util/MultiThreadTaskHelper;->access$000(Lcom/android/fileexplorer/util/MultiThreadTaskHelper;)V

    throw v0
.end method
