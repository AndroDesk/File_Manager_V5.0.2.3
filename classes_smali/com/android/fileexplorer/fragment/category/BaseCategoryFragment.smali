.class public abstract Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;
.super Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;
.source "BaseCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$TimeCapsuleViewProvider;,
        Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$StringCapsuleViewProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        "Lcom/android/fileexplorer/model/FileInfoGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final GRID_MODE:I = 0x1

.field public static final LIST_MODE:I


# instance fields
.field public mChildAdDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mGridChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mGridGroupDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mListChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

.field private mStringCapsuleViewProvider:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;

.field private mTimeCapsuleViewProvider:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;-><init>()V

    .line 4
    return-void
.end method

.method private initEmptyTrigger(Landroid/view/View;)V
    .registers 3

    .line 1
    const v0, 0x7f0a02ff

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;

    .line 10
    new-instance v0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$5;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$5;-><init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/EmptyTriggerRelativeLayout;->setEmptyTrigger(Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;)V

    .line 18
    return-void
.end method

.method private switchCapsuleView(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 3
    if-ne p1, v0, :cond_23

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mTimeCapsuleViewProvider:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;

    .line 7
    if-nez p1, :cond_13

    .line 9
    new-instance p1, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$TimeCapsuleViewProvider;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$TimeCapsuleViewProvider;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mTimeCapsuleViewProvider:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;

    .line 20
    :cond_13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 22
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->setCapsuleStyle(I)V

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mTimeCapsuleViewProvider:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    .line 35
    goto :goto_41

    .line 36
    :cond_23
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStringCapsuleViewProvider:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;

    .line 38
    if-nez p1, :cond_32

    .line 40
    new-instance p1, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$StringCapsuleViewProvider;

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$StringCapsuleViewProvider;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStringCapsuleViewProvider:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;

    .line 51
    :cond_32
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 53
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;

    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;->setCapsuleStyle(I)V

    .line 59
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStringCapsuleViewProvider:Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    .line 66
    :goto_41
    return-void
.end method

.method private updateGroupMethod(I)V
    .registers 2

    return-void
.end method

.method private updateViewMode(I)V
    .registers 2

    return-void
.end method


# virtual methods
.method public convertToViewData(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfoGroup;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 16
    move-result-object v1

    .line 17
    iget v2, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 19
    aget-object v1, v1, v2

    .line 21
    iget-boolean v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 23
    invoke-static {p1, v1, v0}, Lcom/android/fileexplorer/apptag/strategy/group/Grouper;->group(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public exitActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isWidgetChoiceMode()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_14

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->exitActionMode()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public getCurrentCategoryKey()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f07028f

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f070756

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f07022f

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v3

    .line 38
    const v4, 0x7f07022c

    .line 41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v4

    .line 49
    const v5, 0x7f07022e

    .line 52
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v4

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v5

    .line 60
    const v6, 0x7f070231

    .line 63
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v5

    .line 67
    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 69
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 72
    move-result v7

    .line 73
    invoke-direct {v6, v0, v1, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    .line 76
    iput-object v6, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 78
    invoke-virtual {v6, v3, v2, v4, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 81
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 83
    return-object v0
.end method

.method public getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    return-object v0
.end method

.method public getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$4;-><init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 8
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b3

    return v0
.end method

.method public getPadWidgetChooseGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f07028f

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f070756

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f0707fa

    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v3

    .line 38
    const v4, 0x7f070088

    .line 41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v4

    .line 49
    const v5, 0x7f070087

    .line 52
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v4

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v5

    .line 60
    const v6, 0x7f070086

    .line 63
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v5

    .line 67
    new-instance v6, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;

    .line 69
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 72
    move-result v7

    .line 73
    invoke-direct {v6, v0, v1, v7}, Lcom/android/fileexplorer/recyclerview/decoration/GroupSpaceAroundDecoration;-><init>(III)V

    .line 76
    iput-object v6, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 78
    invoke-virtual {v6, v4, v2, v3, v5}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 81
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 83
    return-object v0
.end method

.method public getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setIsFixedSize(Z)V

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_27

    .line 18
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isWidgetChoiceMode()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_27

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f0707f7

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetX(I)V

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 42
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getContentInset()Landroid/graphics/Rect;

    .line 45
    move-result-object v1

    .line 46
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 53
    return-object v0
.end method

.method public initItemDecoration(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->removeItemDecoration()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getGroupDividerDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 15
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getGroupHeaderDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p1, v0, :cond_40

    .line 34
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_37

    .line 40
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isWidgetChoiceMode()Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_37

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 48
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getPadWidgetChooseGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 55
    goto :goto_40

    .line 56
    :cond_37
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 58
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getGridItemDecoration()Landroidx/recyclerview/widget/RecyclerView$n;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public initItemViewDelegate()V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoGroupDelegate;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridGroupDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    .line 14
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 18
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 23
    new-instance v0, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 27
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    .line 30
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mListChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 32
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setOffsetY(I)V

    .line 13
    :cond_c
    return-void
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sparse-switch v0, :sswitch_data_16

    .line 9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onImmersionMenuClick(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :sswitch_d
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->updateViewMode(I)V

    .line 17
    return v1

    .line 18
    :sswitch_11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->updateGroupMethod(I)V

    .line 21
    return v1

    .line 22
    nop

    .line 23
    :sswitch_data_16
    .sparse-switch
        0x7f0a03af -> :sswitch_11
        0x7f0a03b0 -> :sswitch_11
        0x7f0a03b4 -> :sswitch_11
        0x7f0a03b5 -> :sswitch_11
        0x7f0a03b6 -> :sswitch_11
        0x7f0a03b7 -> :sswitch_11
        0x7f0a03ba -> :sswitch_11
        0x7f0a03bb -> :sswitch_11
        0x7f0a048f -> :sswitch_d
        0x7f0a0492 -> :sswitch_d
    .end sparse-switch
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 19
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 28
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 30
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridGroupDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;

    .line 32
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addGroupItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->isWidgetModeActivity()Z

    .line 38
    move-result p2

    .line 39
    const/4 p3, 0x0

    .line 40
    if-eqz p2, :cond_2d

    .line 42
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 44
    iput p3, p2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 46
    :cond_2d
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 48
    iget p2, p2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 50
    const/4 v0, 0x1

    .line 51
    if-nez p2, :cond_48

    .line 53
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 55
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    .line 58
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 60
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mListChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 62
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 65
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 67
    check-cast p2, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 69
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    .line 72
    goto :goto_5b

    .line 73
    :cond_48
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 75
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    .line 78
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 80
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 82
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 85
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 87
    check-cast p2, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 89
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V

    .line 92
    :goto_5b
    sget-boolean p2, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 94
    if-eqz p2, :cond_6d

    .line 96
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isShowAdInCategory()Z

    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_6d

    .line 102
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 104
    const/4 p3, 0x3

    .line 105
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mChildAdDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 107
    invoke-virtual {p2, p3, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 110
    :cond_6d
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 112
    iget p2, p2, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemDecoration(I)V

    .line 117
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 120
    move-result-object p2

    .line 121
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 123
    iget p3, p3, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 125
    aget-object p2, p2, p3

    .line 127
    sget-boolean p3, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 129
    if-nez p3, :cond_a3

    .line 131
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 133
    invoke-virtual {p3, v0}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollEnabled(Z)V

    .line 136
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 138
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 140
    check-cast v0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    .line 142
    invoke-virtual {p3, v0}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    .line 145
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object v0

    .line 151
    const v1, 0x7f070765

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 157
    move-result v0

    .line 158
    invoke-virtual {p3, v0}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setScrollBarMarginBottom(I)V

    .line 161
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->switchCapsuleView(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 164
    :cond_a3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initEmptyTrigger(Landroid/view/View;)V

    .line 167
    return-object p1
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onNavigationVisibilityChanged(I)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 6
    if-eqz v0, :cond_f

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setNavigationChanging(Z)V

    .line 16
    :cond_f
    if-eqz p1, :cond_14

    .line 18
    const/4 v0, 0x2

    .line 19
    if-ne p1, v0, :cond_1b

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 23
    if-eqz p1, :cond_1b

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 28
    :cond_1b
    return-void
.end method

.method public onNavigatorConfigChanged()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    if-eqz v1, :cond_39

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 22
    if-eqz v0, :cond_20

    .line 24
    check-cast v0, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/SpaceAroundDecoration;->changeSpanCount(I)V

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 35
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 37
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 46
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->getItemCount()I

    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 58
    :cond_39
    return-void
.end method

.method public onPullRefresh()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadGroupList(ZZ)V

    .line 5
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/FoldScreenFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mCurrentState:I

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 20
    instance-of p2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 22
    if-eqz p2, :cond_35

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/FoldScreenFragment;->isWidgetModeActivity()Z

    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_25

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mFabPreference:Lcom/android/fileexplorer/controller/FabPreference;

    .line 32
    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemDecoration(I)V

    .line 37
    goto :goto_2a

    .line 38
    :cond_25
    iget p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemDecoration(I)V

    .line 43
    :goto_2a
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 45
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 50
    move-result p2

    .line 51
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 54
    :cond_35
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 56
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 58
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_10

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    .line 17
    :cond_10
    return-void
.end method

.method public onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    .line 7
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->switchCapsuleView(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getFileList()Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->convertToViewData(Ljava/util/List;)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    sget-boolean p1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 30
    if-eqz p1, :cond_30

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isShowAdInCategory()Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_30

    .line 38
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getAdPosId(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->addAdToFileInfoDateGroups(Ljava/lang/String;)V

    .line 49
    :cond_30
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 51
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public onSortOrderChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onSortOrderChanged(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->getFileList()Ljava/util/List;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->convertToViewData(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method

.method public onViewModeChanged(I)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->onViewModeChanged(I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->updatePreference()V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemDecoration(I)V

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_29

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 15
    if-eqz p1, :cond_15

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 19
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->removeItemViewDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    .line 22
    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 29
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mListChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 31
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 36
    check-cast p1, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 38
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToListMode()V

    .line 41
    goto :goto_44

    .line 42
    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mListChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 46
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->removeItemViewDelegate(Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setViewMode(I)V

    .line 55
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 57
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridChildDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 59
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 62
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 64
    check-cast p1, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 66
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;->switchToGridMode()V

    .line 69
    :goto_44
    sget-boolean p1, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    .line 71
    if-eqz p1, :cond_56

    .line 73
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isShowAdInCategory()Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_56

    .line 79
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 81
    const/4 v1, 0x3

    .line 82
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mChildAdDelegate:Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;

    .line 84
    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;->addChildItemViewDelegate(ILcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;)Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 87
    :cond_56
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 89
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 91
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 99
    return-void
.end method

.method public removeItemDecoration()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 18
    if-eqz v1, :cond_16

    .line 20
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 25
    if-eqz v0, :cond_21

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 29
    if-eqz v1, :cond_21

    .line 31
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 40
    if-eqz v1, :cond_2c

    .line 42
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 45
    :cond_2c
    return-void
.end method

.method public setupAdapter()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/CategoryAdapter;-><init>(Ljava/util/List;)V

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setRefreshMode(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->initItemViewDelegate()V

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isWidgetChoiceMode()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_45

    .line 23
    new-instance v0, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;

    .line 25
    invoke-direct {v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->setCategoryName(Ljava/lang/String;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->setFragment(Lmiuix/appcompat/app/Fragment;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;

    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->setActivity(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;

    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->setAdapter(Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;

    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$1;

    .line 58
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->setOnClickListener(Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$WidgetChoiceOnClickListener;)Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener$Builder;->build()Lcom/android/fileexplorer/listener/choice/WidgetChoiceListener;

    .line 68
    move-result-object v0

    .line 69
    goto :goto_56

    .line 70
    :cond_45
    new-instance v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 72
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 74
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 76
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Lcom/android/fileexplorer/statistics/StatHelper;->getPageNameByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;Ljava/lang/String;)V

    .line 87
    :goto_56
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;

    .line 89
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->isWidgetChoiceMode()Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_64

    .line 95
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setChoiceSingleMode(Z)V

    .line 101
    :cond_64
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 103
    new-instance v1, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;

    .line 105
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 107
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;

    .line 109
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;-><init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 117
    new-instance v1, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;

    .line 119
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 121
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 124
    move-result-object v3

    .line 125
    invoke-direct {v1, v2, v0, v3}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 133
    new-instance v1, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$2;

    .line 135
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 143
    new-instance v1, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$3;

    .line 145
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$3;-><init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setActionModeChangeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter$ActionModeChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 159
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 161
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    return-void
.end method

.method public setupLayoutManager()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    return-void
.end method
