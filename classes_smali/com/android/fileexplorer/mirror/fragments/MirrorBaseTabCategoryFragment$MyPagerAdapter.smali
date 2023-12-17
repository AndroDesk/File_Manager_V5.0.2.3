.class public Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;
.super Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;
.source "MirrorBaseTabCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mFragmentInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;

    .line 3
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/app/MiFragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;->mFragmentInfos:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;->mFragmentInfos:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic getItem(I)Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;->getItem(I)Lmiuix/appcompat/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lmiuix/appcompat/app/Fragment;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;->mFragmentInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment$MyPagerAdapter;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseTabCategoryFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    if-ne v0, v1, :cond_21

    .line 11
    if-nez p1, :cond_10

    .line 13
    const p1, 0x7f110131

    .line 16
    goto :goto_2a

    .line 17
    :cond_10
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB_CATEGORY:Ljava/util/HashMap;

    .line 19
    sget-object v1, Lcom/android/fileexplorer/controller/FileCategoryHelper;->DOC_TAB:[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 21
    aget-object p1, v1, p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p1

    .line 33
    goto :goto_2a

    .line 34
    :cond_21
    if-nez p1, :cond_27

    .line 36
    const p1, 0x7f110079

    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    const p1, 0x7f110076

    .line 43
    :goto_2a
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method
