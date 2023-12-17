.class Lcom/android/fileexplorer/fragment/SearchResultFragment$6;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->startSearchRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1500(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1800(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    goto :goto_55

    :cond_46
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1800(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    :cond_55
    :goto_55
    return-void
.end method
