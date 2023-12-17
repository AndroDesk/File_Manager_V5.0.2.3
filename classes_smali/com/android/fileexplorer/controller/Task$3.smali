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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/Task;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/controller/Task$3;->this$0:Lcom/android/fileexplorer/controller/Task;

    iput-object p2, p0, Lcom/android/fileexplorer/controller/Task$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task$3;->this$0:Lcom/android/fileexplorer/controller/Task;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/Task$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/controller/Task;->onFail(Ljava/lang/Exception;)V

    return-void
.end method
