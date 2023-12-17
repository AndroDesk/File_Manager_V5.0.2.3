.class public Lcom/android/fileexplorer/adapter/FileExplorerPagerAdapter;
.super Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;
.source "FileExplorerPagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileExplorerPagerAdapter"


# instance fields
.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/FileExplorerPagerAdapter;->mFragments:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/FileExplorerPagerAdapter;->mFragments:Ljava/util/List;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/FileExplorerPagerAdapter;->getItem(I)Lmiuix/appcompat/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lmiuix/appcompat/app/Fragment;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/FileExplorerPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB_NAMES:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->HOME_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 5
    aget-object p1, v1, p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
