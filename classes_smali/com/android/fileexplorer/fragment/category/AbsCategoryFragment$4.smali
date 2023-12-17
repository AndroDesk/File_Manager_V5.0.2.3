.class Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source "AbsCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$4;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(II)Z
    .registers 3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const p2, 0x453b8000  # 3000.0f

    invoke-static {p2}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result p2

    if-le p1, p2, :cond_14

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileIconHelper;->pause()V

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
