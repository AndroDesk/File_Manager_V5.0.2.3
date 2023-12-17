.class Lcom/android/fileexplorer/fragment/RecentFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$q;
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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFling(II)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$700(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_28

    .line 9
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 12
    move-result p1

    .line 13
    const p2, 0x453b8000  # 3000.0f

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$800(Lcom/android/fileexplorer/fragment/RecentFragment;)F

    .line 21
    move-result v0

    .line 22
    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/AppUtils;->dpToPxForRec(FF)I

    .line 25
    move-result p2

    .line 26
    if-le p1, p2, :cond_28

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileIconHelper;->pause()V

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$702(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z

    .line 41
    :cond_28
    const/4 p1, 0x0

    .line 42
    return p1
.end method
