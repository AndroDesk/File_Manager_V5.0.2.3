.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "HomeFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->getOtherEnterGridLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

.field public final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 1
    if-eqz p1, :cond_12

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_11

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 8
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->getItemCount()I

    .line 13
    move-result p1

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne p1, v1, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    return v0

    .line 19
    :cond_12
    :goto_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 24
    move-result p1

    .line 25
    return p1
.end method
