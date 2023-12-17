.class Lcom/android/fileexplorer/controller/Task$3;
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

.field public final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/controller/Task;Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/Task$3;->this$0:Lcom/android/fileexplorer/controller/Task;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/Task$3;->val$e:Ljava/lang/Exception;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task$3;->this$0:Lcom/android/fileexplorer/controller/Task;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task$3;->val$e:Ljava/lang/Exception;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/controller/Task;->onFail(Ljava/lang/Exception;)V

    .line 8
    return-void
.end method
