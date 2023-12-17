.class Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source "RecentSecondaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentSecondaryFragment$3;->this$0:Lcom/android/fileexplorer/fragment/RecentSecondaryFragment;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFling(II)Z
    .registers 3

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 4
    move-result p1

    .line 5
    const p2, 0x453b8000  # 3000.0f

    .line 8
    invoke-static {p2}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 11
    move-result p2

    .line 12
    if-le p1, p2, :cond_14

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileIconHelper;->pause()V

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method
