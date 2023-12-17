.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$3;
.super Ljava/lang/Object;
.source "HomeFileFragment.java"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/r<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .registers 2

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$800(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$3;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
