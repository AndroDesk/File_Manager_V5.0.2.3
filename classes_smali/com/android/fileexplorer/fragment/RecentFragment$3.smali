.class Lcom/android/fileexplorer/fragment/RecentFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "RecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$3;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$3;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$700(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1a

    .line 12
    if-nez p2, :cond_1a

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileIconHelper;->resume()V

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$3;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$702(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z

    .line 27
    :cond_1a
    return-void
.end method
