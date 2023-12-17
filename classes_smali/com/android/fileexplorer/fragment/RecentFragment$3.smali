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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$3;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$3;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$700(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    move-result p1

    if-eqz p1, :cond_1a

    if-nez p2, :cond_1a

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileIconHelper;->resume()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$3;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$702(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z

    :cond_1a
    return-void
.end method
