.class public Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "CategoryChoiceFragment.java"


# static fields
.field private static final PAGE_COUNT:I = 0x64

.field private static final PICTURE_NUM_COLUMNS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CategoryChoiceFragment"

.field public static final VIDEO_NUM_COLUMNS:I = 0x2


# instance fields
.field public groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

.field public mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mCancelBtn:Landroid/widget/ImageButton;

.field private mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

.field private mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field public mListItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

.field private mRefreshFileListTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$QueryResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAllBtn:Landroid/widget/ImageButton;

.field private mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mStartIndex:I

.field private mTimeCost:Lcom/android/fileexplorer/util/TimeCost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->getStatParam()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->setFileListResult()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onRefreshFileList(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mIsLoading:Z

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mIsLoading:Z

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->updateChoiceList()V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mStartIndex:I

    .line 3
    return p0
.end method

.method public static synthetic access$602(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mStartIndex:I

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    return-object p0
.end method

.method private doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_9

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 10
    :cond_9
    return-void
.end method

.method private getChoiceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_e

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_e
    return-object v0
.end method

.method private getPickTitle(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1a

    .line 11
    const-string v1, "image/"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1a

    .line 19
    const p1, 0x7f1103be

    .line 22
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1a
    if-eqz p1, :cond_24

    .line 29
    const-string v1, "audio/"

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2c

    .line 37
    :cond_24
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_34

    .line 45
    :cond_2c
    const p1, 0x7f1103bf

    .line 48
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_34
    if-eqz p1, :cond_46

    .line 55
    const-string v0, "video/"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_46

    .line 63
    const p1, 0x7f1103c1

    .line 66
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_46
    if-eqz p1, :cond_58

    .line 73
    const-string v0, "pdf/"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_58

    .line 81
    const p1, 0x7f1103c0

    .line 84
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_58
    const-string p1, ""

    .line 91
    return-object p1
.end method

.method private getStatParam()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$7;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    packed-switch v0, :pswitch_data_2e

    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :pswitch_f  #0xa
    const-string v0, "bluetooth"

    .line 18
    return-object v0

    .line 19
    :pswitch_12  #0x9
    const-string v0, "download"

    .line 21
    return-object v0

    .line 22
    :pswitch_15  #0x8
    const-string v0, "doc"

    .line 24
    return-object v0

    .line 25
    :pswitch_18  #0x7
    const-string v0, "apk"

    .line 27
    return-object v0

    .line 28
    :pswitch_1b  #0x6
    const-string v0, "archive"

    .line 30
    return-object v0

    .line 31
    :pswitch_1e  #0x5
    const-string v0, "favorite"

    .line 33
    return-object v0

    .line 34
    :pswitch_21  #0x4
    const-string v0, "music"

    .line 36
    return-object v0

    .line 37
    :pswitch_24  #0x3
    const-string v0, "pdf"

    .line 39
    return-object v0

    .line 40
    :pswitch_27  #0x2
    const-string v0, "video"

    .line 42
    return-object v0

    .line 43
    :pswitch_2a  #0x1
    const-string v0, "picture"

    .line 45
    return-object v0

    .line 46
    nop

    .line 47
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_27  #00000002
        :pswitch_24  #00000003
        :pswitch_21  #00000004
        :pswitch_1e  #00000005
        :pswitch_1b  #00000006
        :pswitch_18  #00000007
        :pswitch_15  #00000008
        :pswitch_12  #00000009
        :pswitch_f  #0000000a
    .end packed-switch
.end method

.method private initLayoutManager()V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$7;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq v0, v1, :cond_51

    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v0, v3, :cond_42

    .line 18
    const/4 v3, 0x3

    .line 19
    if-eq v0, v3, :cond_18

    .line 21
    if-eq v0, v2, :cond_18

    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_7b

    .line 25
    :cond_18
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 27
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 29
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 32
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v2

    .line 38
    const v3, 0x7f070298

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v2

    .line 45
    new-instance v3, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;

    .line 47
    invoke-direct {v3, v1, v2, v2}, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;-><init>(III)V

    .line 50
    iput-object v3, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mListItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 52
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 54
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    .line 56
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 59
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 61
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mListItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 63
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 66
    goto :goto_7b

    .line 67
    :cond_42
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 69
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 71
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 76
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    .line 78
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 81
    goto :goto_7b

    .line 82
    :cond_51
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 84
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 86
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 89
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    .line 91
    const v3, 0x7f070247

    .line 94
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 97
    move-result v3

    .line 98
    const v4, 0x7f070726

    .line 101
    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 104
    move-result v4

    .line 105
    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;-><init>(III)V

    .line 108
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    .line 110
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 112
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mListItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 114
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 117
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 119
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    .line 121
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 124
    :goto_7b
    if-eqz v0, :cond_82

    .line 126
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 128
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 131
    :cond_82
    return-void
.end method

.method private initListView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 3
    const v1, 0x102000a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 31
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 38
    new-instance v2, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;

    .line 40
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    .line 43
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initLayoutManager()V

    .line 49
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 51
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 53
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;-><init>(Ljava/util/List;)V

    .line 56
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v1, "viewType = "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 73
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    const-string v1, "CategoryChoiceFragment"

    .line 86
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 91
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 93
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->setSelectedMode(I)V

    .line 100
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->setViewType()V

    .line 103
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 105
    new-instance v1, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;

    .line 107
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 115
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 117
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    return-void
.end method

.method private initView()V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initActionBar()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a03d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initListView()V

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;-><init>()V

    .line 6
    return-object v0
.end method

.method private onRefreshFileList(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_21

    .line 7
    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mIsLoading:Z

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_21

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 14
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    .line 17
    new-instance v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;

    .line 19
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    new-array v1, v1, [Ljava/lang/Void;

    .line 31
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method private onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 15
    move-result-object v0

    .line 16
    if-ne v0, p1, :cond_12

    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 21
    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 28
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 33
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3a

    .line 46
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->setFileListResult()V

    .line 59
    :cond_3a
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 62
    return-void
.end method

.method private setFileListResult()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    :cond_7
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->showEmptyView()V

    .line 11
    return-void
.end method

.method private setViewType()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-object v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$7;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 14
    aget v0, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_2b

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_23

    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_1c

    .line 25
    const/4 v1, 0x4

    .line 26
    if-eq v0, v1, :cond_1c

    .line 28
    goto :goto_32

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 35
    goto :goto_32

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 38
    const/16 v1, 0xc

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 43
    goto :goto_32

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 46
    const/16 v1, 0x18

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 51
    :goto_32
    return-void
.end method

.method private showEmptyView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 9
    const/16 v2, 0x8

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_1a

    .line 14
    invoke-virtual {v1, v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    .line 19
    if-eqz v0, :cond_16

    .line 21
    move v4, v3

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v2

    .line 24
    :goto_17
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    .line 27
    :cond_1a
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 29
    if-eqz v0, :cond_20

    .line 31
    move v4, v3

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v4, v2

    .line 34
    :goto_21
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 39
    if-eqz v0, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v2, v3

    .line 43
    :goto_2a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    .line 48
    if-eqz v0, :cond_34

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 55
    :goto_36
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method private updateChoiceList()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->updateTitle(I)V

    .line 16
    :cond_f
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 19
    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00b7

    return v0
.end method

.method public initActionBar()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 7
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMode(Landroid/app/Activity;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 15
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->getPickTitle(Landroid/content/Intent;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    goto :goto_62

    .line 27
    :cond_1a
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 29
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_62

    .line 35
    new-instance v1, Landroid/widget/ImageButton;

    .line 37
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 39
    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCancelBtn:Landroid/widget/ImageButton;

    .line 44
    const v2, 0x7f0801dd

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCancelBtn:Landroid/widget/ImageButton;

    .line 52
    new-instance v2, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;

    .line 54
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v1, Landroid/widget/ImageButton;

    .line 62
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 64
    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 69
    const v2, 0x7f0801de

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 77
    new-instance v2, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;

    .line 79
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCancelBtn:Landroid/widget/ImageButton;

    .line 91
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 96
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 99
    :cond_62
    :goto_62
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "file_category"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->setCategory(I)V

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initView()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    const/16 v1, 0x70

    .line 7
    if-eq p1, v1, :cond_a

    .line 9
    if-ne p2, v0, :cond_14

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 13
    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 18
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 21
    :cond_14
    return-void
.end method

.method public onBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    const p1, 0x7f120524

    .line 15
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e0003

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRefreshFileListTask:Landroid/os/AsyncTask;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 12
    :cond_b
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 15
    if-eqz p1, :cond_1e

    .line 17
    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1e

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 25
    if-eqz p1, :cond_1e

    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onRefreshFileList(Z)V

    .line 31
    :cond_1e
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sparse-switch v0, :sswitch_data_42

    .line 9
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :sswitch_d
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 19
    return v1

    .line 20
    :sswitch_13
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 25
    return v1

    .line 26
    :sswitch_19
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 31
    return v1

    .line 32
    :sswitch_1f
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 37
    return v1

    .line 38
    :sswitch_25
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    .line 43
    return v1

    .line 44
    :sswitch_2b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->getChoiceList()Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onPickFiles(Ljava/util/List;)V

    .line 53
    return v1

    .line 54
    :sswitch_35
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V

    .line 59
    return v1

    .line 60
    :sswitch_3b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V

    .line 65
    return v1

    .line 66
    nop

    .line 67
    :sswitch_data_42
    .sparse-switch
        0x102002c -> :sswitch_3b
        0x7f0a0318 -> :sswitch_35
        0x7f0a0319 -> :sswitch_2b
        0x7f0a03ae -> :sswitch_25
        0x7f0a03b3 -> :sswitch_1f
        0x7f0a03b6 -> :sswitch_19
        0x7f0a03b7 -> :sswitch_13
        0x7f0a03b9 -> :sswitch_d
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6

    .line 1
    const v0, 0x7f0a033c

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 12
    const v0, 0x7f0a03ad

    .line 15
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 22
    move-result-object v0

    .line 23
    const v2, 0x7f0a03b8

    .line 26
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-interface {v0, v1, v2, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 37
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 39
    invoke-static {v3}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 46
    move-result v3

    .line 47
    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 54
    const v0, 0x7f0a0319

    .line 57
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 66
    move-result-object v0

    .line 67
    const-string v3, "pick_button_name"

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_51

    .line 79
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 82
    :cond_51
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->getChoiceList()Ljava/util/List;

    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5c

    .line 92
    move v1, v2

    .line 93
    :cond_5c
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 96
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$6;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$6;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    .line 9
    const-wide/16 v1, 0x64

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 14
    return-void
.end method

.method public setCategory(I)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 4
    move-result-object v0

    .line 5
    if-ltz p1, :cond_d

    .line 7
    array-length v1, v0

    .line 8
    if-ge p1, v1, :cond_d

    .line 10
    aget-object p1, v0, p1

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_26

    .line 26
    const-string v0, "image/"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_26

    .line 34
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 36
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 38
    goto :goto_64

    .line 39
    :cond_26
    if-eqz p1, :cond_35

    .line 41
    const-string v0, "video/"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_35

    .line 49
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 51
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 53
    goto :goto_64

    .line 54
    :cond_35
    if-eqz p1, :cond_3f

    .line 56
    const-string v0, "audio/"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_51

    .line 64
    :cond_3f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_56

    .line 82
    :cond_51
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 84
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 86
    goto :goto_64

    .line 87
    :cond_56
    if-eqz p1, :cond_64

    .line 89
    const-string v0, "pdf/"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_64

    .line 97
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 99
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 101
    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 103
    if-eqz p1, :cond_73

    .line 105
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 p1, 0x0

    .line 111
    iput p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mStartIndex:I

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->updateTitle(I)V

    .line 116
    :cond_73
    return-void
.end method

.method public updateTitle(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleNoFolderMode(Landroid/app/Activity;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_10

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_51

    .line 17
    :cond_10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    const v1, 0x7f0801de

    .line 27
    if-nez p1, :cond_2e

    .line 29
    const p1, 0x7f11025d

    .line 32
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 41
    if-eqz p1, :cond_51

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    goto :goto_51

    .line 47
    :cond_2e
    const v2, 0x7f0f0021

    .line 50
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 59
    if-eqz p1, :cond_44

    .line 61
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->isCheckedAll()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_44

    .line 67
    const/4 p1, 0x1

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    const/4 p1, 0x0

    .line 70
    :goto_45
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    .line 72
    if-eqz v0, :cond_51

    .line 74
    if-eqz p1, :cond_4e

    .line 76
    const v1, 0x7f0801e8

    .line 79
    :cond_4e
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    :cond_51
    :goto_51
    return-void
.end method
