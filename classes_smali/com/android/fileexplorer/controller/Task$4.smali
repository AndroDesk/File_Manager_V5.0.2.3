.class Lcom/android/fileexplorer/controller/Task$4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/Task;->cancel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/controller/Task;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/controller/Task;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/Task$4;->this$0:Lcom/android/fileexplorer/controller/Task;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task$4;->this$0:Lcom/android/fileexplorer/controller/Task;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/Task;->onCancel()V

    .line 6
    return-void
.end method
