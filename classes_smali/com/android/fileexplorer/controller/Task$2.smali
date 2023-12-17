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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/Task;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/controller/Task$2;->this$0:Lcom/android/fileexplorer/controller/Task;

    iput-object p2, p0, Lcom/android/fileexplorer/controller/Task$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "SimpleTask"

    const-string v1, "run: 3"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task$2;->this$0:Lcom/android/fileexplorer/controller/Task;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/controller/Task;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
