.class Lcom/android/fileexplorer/fragment/BaseFragment$3;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/BaseFragment;->registerCopyShareEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/r<",
        "Landroid/view/KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment$3;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged(Landroid/view/KeyEvent;)V
    .registers 6

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment$3;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/BaseFragment;->access$100(Lcom/android/fileexplorer/fragment/BaseFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment$3;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->access$200(Lcom/android/fileexplorer/fragment/BaseFragment;Landroid/view/KeyEvent;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment$3;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->access$102(Lcom/android/fileexplorer/fragment/BaseFragment;J)J

    :cond_1f
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment$3;->onChanged(Landroid/view/KeyEvent;)V

    return-void
.end method
