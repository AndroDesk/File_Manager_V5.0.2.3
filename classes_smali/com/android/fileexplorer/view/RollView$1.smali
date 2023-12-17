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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/RollView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/RollView$1;->this$0:Lcom/android/fileexplorer/view/RollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView$1;->this$0:Lcom/android/fileexplorer/view/RollView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/RollView;->access$000(Lcom/android/fileexplorer/view/RollView;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView$1;->this$0:Lcom/android/fileexplorer/view/RollView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/RollView;->access$100(Lcom/android/fileexplorer/view/RollView;)Lcom/android/fileexplorer/view/RollView$RollAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/view/RollView$1;->this$0:Lcom/android/fileexplorer/view/RollView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/RollView;->access$200(Lcom/android/fileexplorer/view/RollView;)V

    :cond_15
    return-void
.end method
