.class Lcom/android/fileexplorer/fragment/SearchContentFragment$2;
.super Ljava/lang/Object;
.source "SearchContentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchContentFragment;->initEmptyTrigger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeActive()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$300(Lcom/android/fileexplorer/fragment/SearchContentFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$300(Lcom/android/fileexplorer/fragment/SearchContentFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDeActiveEmptyView()V

    :cond_11
    return-void
.end method

.method public onReverse()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$300(Lcom/android/fileexplorer/fragment/SearchContentFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$300(Lcom/android/fileexplorer/fragment/SearchContentFragment;)Lcom/android/fileexplorer/fragment/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->reverseEmptyViewState()V

    :cond_11
    return-void
.end method
