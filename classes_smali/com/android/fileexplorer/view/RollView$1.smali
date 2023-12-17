.class Lcom/android/fileexplorer/view/RollView$1;
.super Ljava/lang/Object;
.source "RollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/RollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/RollView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/RollView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/RollView$1;->this$0:Lcom/android/fileexplorer/view/RollView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView$1;->this$0:Lcom/android/fileexplorer/view/RollView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/RollView;->access$000(Lcom/android/fileexplorer/view/RollView;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_15

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView$1;->this$0:Lcom/android/fileexplorer/view/RollView;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/view/RollView;->access$100(Lcom/android/fileexplorer/view/RollView;)Lcom/android/fileexplorer/view/RollView$RollAdapter;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_15

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView$1;->this$0:Lcom/android/fileexplorer/view/RollView;

    .line 19
    invoke-static {v0}, Lcom/android/fileexplorer/view/RollView;->access$200(Lcom/android/fileexplorer/view/RollView;)V

    .line 22
    :cond_15
    return-void
.end method
