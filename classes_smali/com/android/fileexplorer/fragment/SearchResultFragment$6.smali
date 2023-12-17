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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_19

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_55

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 34
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v2, v1}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 44
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1500(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_46

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 56
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 62
    invoke-static {v2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1800(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    .line 70
    goto :goto_55

    .line 71
    :cond_46
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 73
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$6;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 79
    invoke-static {v3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 82
    move-result-object v3

    .line 83
    invoke-static {v0, v1, v3, v2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1800(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    .line 86
    :cond_55
    :goto_55
    return-void
.end method
