.class Lcom/android/fileexplorer/controller/Task$2;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/controller/Task;

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/controller/Task;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/Task$2;->this$0:Lcom/android/fileexplorer/controller/Task;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/Task$2;->val$result:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    const-string v0, "SimpleTask"

    .line 3
    const-string v1, "run: 3"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task$2;->this$0:Lcom/android/fileexplorer/controller/Task;

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task$2;->val$result:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/controller/Task;->onSuccess(Ljava/lang/Object;)V

    .line 15
    return-void
.end method
