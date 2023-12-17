.class public Lcom/android/fileexplorer/fragment/WidgetChooseFragment;
.super Lcom/android/fileexplorer/fragment/LazyFragment;
.source "WidgetChooseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE:Ljava/lang/String; = "CHOICE_MODE"

.field private static final TAG:Ljava/lang/String; = "WidgetChooseFragment"


# instance fields
.field public mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

.field public mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/category/FileCategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field private mHasPermission:Z

.field public mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mEntries:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->getPageInfo(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getPageInfo(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, -0x1

    .line 12
    sparse-switch v0, :sswitch_data_b0

    .line 15
    goto :goto_50

    .line 16
    :sswitch_f
    const-string v0, "video"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_18

    .line 24
    goto :goto_50

    .line 25
    :cond_18
    const/4 v4, 0x5

    .line 26
    goto :goto_50

    .line 27
    :sswitch_1a
    const-string v0, "music"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_23

    .line 35
    goto :goto_50

    .line 36
    :cond_23
    const/4 v4, 0x4

    .line 37
    goto :goto_50

    .line 38
    :sswitch_25
    const-string v0, "zip"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2e

    .line 46
    goto :goto_50

    .line 47
    :cond_2e
    const/4 v4, 0x3

    .line 48
    goto :goto_50

    .line 49
    :sswitch_30
    const-string v0, "doc"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_39

    .line 57
    goto :goto_50

    .line 58
    :cond_39
    move v4, v1

    .line 59
    goto :goto_50

    .line 60
    :sswitch_3b
    const-string v0, "apk"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_44

    .line 68
    goto :goto_50

    .line 69
    :cond_44
    move v4, v2

    .line 70
    goto :goto_50

    .line 71
    :sswitch_46
    const-string v0, "picture"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_4f

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v4, v3

    .line 81
    :goto_50
    const-string p1, "选择文件"

    .line 83
    packed-switch v4, :pswitch_data_ca

    .line 86
    new-array v0, v1, [Ljava/lang/String;

    .line 88
    const-class v1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    aput-object v1, v0, v3

    .line 96
    aput-object p1, v0, v2

    .line 98
    return-object v0

    .line 99
    :pswitch_62  #0x5
    new-array v0, v1, [Ljava/lang/String;

    .line 101
    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadVideoCategoryFragment;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    aput-object v1, v0, v3

    .line 109
    aput-object p1, v0, v2

    .line 111
    return-object v0

    .line 112
    :pswitch_6f  #0x4
    new-array v0, v1, [Ljava/lang/String;

    .line 114
    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadMusicCategoryFragment;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    aput-object v1, v0, v3

    .line 122
    aput-object p1, v0, v2

    .line 124
    return-object v0

    .line 125
    :pswitch_7c  #0x3
    new-array v0, v1, [Ljava/lang/String;

    .line 127
    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadZipCategoryFragment;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    aput-object v1, v0, v3

    .line 135
    aput-object p1, v0, v2

    .line 137
    return-object v0

    .line 138
    :pswitch_89  #0x2
    new-array v0, v1, [Ljava/lang/String;

    .line 140
    const-class v1, Lcom/android/fileexplorer/fragment/category/WidgetDocCategorySubFragment;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    aput-object v1, v0, v3

    .line 148
    aput-object p1, v0, v2

    .line 150
    return-object v0

    .line 151
    :pswitch_96  #0x1
    new-array v0, v1, [Ljava/lang/String;

    .line 153
    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadApkCategoryFragment;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    aput-object v1, v0, v3

    .line 161
    aput-object p1, v0, v2

    .line 163
    return-object v0

    .line 164
    :pswitch_a3  #0x0
    new-array v0, v1, [Ljava/lang/String;

    .line 166
    const-class v1, Lcom/android/fileexplorer/pad/fragment/PadPictureCategoryFragment;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    aput-object v1, v0, v3

    .line 174
    aput-object p1, v0, v2

    .line 176
    return-object v0

    .line 177
    :sswitch_data_b0
    .sparse-switch
        -0x226fa302 -> :sswitch_46
        0x17a1c -> :sswitch_3b
        0x18538 -> :sswitch_30
        0x1d721 -> :sswitch_25
        0x636ee25 -> :sswitch_1a
        0x6b0147b -> :sswitch_f
    .end sparse-switch

    .line 203
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a3  #00000000
        :pswitch_96  #00000001
        :pswitch_89  #00000002
        :pswitch_7c  #00000003
        :pswitch_6f  #00000004
        :pswitch_62  #00000005
    .end packed-switch
.end method

.method private handleNavigationBar()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->isInFullWindowGestureMode(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x8000000

    .line 11
    if-nez v0, :cond_38

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_38

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v1

    .line 46
    const v2, 0x7f06004c

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 56
    goto :goto_59

    .line 57
    :cond_38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v1

    .line 80
    const v2, 0x7f060582

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 90
    :goto_59
    return-void
.end method

.method private initUI()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mContext:Landroid/content/Context;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 9
    const v1, 0x7f0a03d2

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 18
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 20
    const v2, 0x7f0a02e1

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 29
    const/16 v2, 0x8

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 36
    const v2, 0x7f0a00cb

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 56
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 58
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->getSpanCount()I

    .line 63
    move-result v3

    .line 64
    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 67
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 69
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    invoke-static {}, Lcom/android/fileexplorer/util/CategoryUtil;->getWidgetChooseEntries()Ljava/util/List;

    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mEntries:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    .line 82
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mContext:Landroid/content/Context;

    .line 84
    new-instance v3, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;

    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-direct {v3, p0, v4}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;-><init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;Lcom/android/fileexplorer/fragment/WidgetChooseFragment$1;)V

    .line 90
    invoke-direct {v0, v1, v3}, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    .line 95
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mEntries:Ljava/util/List;

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;->setData(Ljava/util/List;)V

    .line 100
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mAdapter:Lcom/android/fileexplorer/adapter/WidgetChooseEntryAdapter;

    .line 104
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    const v0, 0x7f070280

    .line 110
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 113
    move-result v0

    .line 114
    const v1, 0x7f07027f

    .line 117
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 120
    move-result v1

    .line 121
    const v3, 0x7f070275

    .line 124
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 127
    move-result v3

    .line 128
    const v4, 0x7f070274

    .line 131
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 134
    move-result v4

    .line 135
    new-instance v5, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;

    .line 137
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->getSpanCount()I

    .line 140
    move-result v6

    .line 141
    invoke-direct {v5, v0, v1, v6}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;-><init>(III)V

    .line 144
    iput-object v5, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 146
    const v0, 0x7f070273

    .line 149
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 152
    move-result v0

    .line 153
    invoke-virtual {v5, v4, v3, v2, v0}, Lcom/android/fileexplorer/recyclerview/decoration/BaseSpaceDecoration;->setMargin(IIII)V

    .line 156
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 160
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 163
    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/WidgetChooseFragment;
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/fileexplorer/fragment/WidgetChooseFragment;
    .registers 2

    .line 2
    new-instance v0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;-><init>()V

    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method private showNoPermissionView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a03d2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 14
    const v2, 0x7f0a02e1

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 25
    const v3, 0x7f0a00cb

    .line 28
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    iput-object v2, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    .line 40
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    const/16 v4, 0x8

    .line 44
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-boolean v3, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    .line 49
    if-nez v3, :cond_35

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_35
    invoke-virtual {v0, v1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 57
    const v0, 0x7f0a02e2

    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    const v1, 0x7f0a042e

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/Button;

    .line 73
    new-instance v1, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$1;

    .line 75
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$1;-><init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d01e4

    return v0
.end method

.method public getScrollView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getSpanCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-boolean p1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    .line 3
    if-eqz p1, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->initUI()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->showNoPermissionView()V

    .line 12
    :goto_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    .line 14
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->handleNavigationBar()V

    .line 17
    const p1, 0x7f12011e

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 23
    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;IZ)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResponsiveLayout(Landroid/content/res/Configuration;IZ)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->getSpanCount()I

    .line 9
    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->handleNavigationBar()V

    .line 16
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/util/PermissionUtils;->checkReadExternalStoragePermission(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    .line 14
    if-eq v1, v0, :cond_1c

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->mHasPermission:Z

    .line 18
    if-eqz v0, :cond_19

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->initView(Landroid/view/View;)V

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->showNoPermissionView()V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method
