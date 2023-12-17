.class Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$1;
.super Ljava/lang/Object;
.source "MirrorCategoryFragmentPhone.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->iniRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 1

    return-void
.end method

.method public onLoadMore()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    if-eq v0, v1, :cond_23

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 19
    if-ne v0, v1, :cond_15

    .line 21
    goto :goto_23

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_23

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Z)V

    .line 36
    :cond_23
    :goto_23
    return-void
.end method

.method public onRefresh()V
    .registers 1

    return-void
.end method
