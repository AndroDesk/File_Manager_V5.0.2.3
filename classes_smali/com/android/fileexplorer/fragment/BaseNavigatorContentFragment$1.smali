.class Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$1;
.super Ljava/lang/Object;
.source "BaseNavigatorContentFragment.java"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->registerOneShareEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/r<",
        "Lcom/android/fileexplorer/event/OneHopShareEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/fileexplorer/event/OneHopShareEvent;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->access$000(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;Lcom/android/fileexplorer/event/OneHopShareEvent;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/fileexplorer/event/OneHopShareEvent;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$1;->onChanged(Lcom/android/fileexplorer/event/OneHopShareEvent;)V

    return-void
.end method
