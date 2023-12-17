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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mOtherEntryAdapter:Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/OtherEntryViewAdapter;->getItemCount()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    goto :goto_12

    :cond_11
    return v0

    :cond_12
    :goto_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$6;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
