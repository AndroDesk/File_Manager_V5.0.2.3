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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/Task;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/controller/Task$4;->this$0:Lcom/android/fileexplorer/controller/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/controller/Task$4;->this$0:Lcom/android/fileexplorer/controller/Task;

    invoke-virtual {v0}, Lcom/android/fileexplorer/controller/Task;->onCancel()V

    return-void
.end method
