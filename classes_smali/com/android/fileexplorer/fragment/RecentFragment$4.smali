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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(II)Z
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$700(Lcom/android/fileexplorer/fragment/RecentFragment;)Z

    move-result p1

    if-nez p1, :cond_28

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const p2, 0x453b8000  # 3000.0f

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$800(Lcom/android/fileexplorer/fragment/RecentFragment;)F

    move-result v0

    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/AppUtils;->dpToPxForRec(FF)I

    move-result p2

    if-le p1, p2, :cond_28

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileIconHelper;->pause()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$4;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$702(Lcom/android/fileexplorer/fragment/RecentFragment;Z)Z

    :cond_28
    const/4 p1, 0x0

    return p1
.end method
