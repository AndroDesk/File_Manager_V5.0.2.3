.class public Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "CategoryChoiceFragment.java"


# static fields
.field private static final PAGE_COUNT:I

.field private static final PICTURE_NUM_COLUMNS:I

.field private static final TAG:Ljava/lang/String; = "CategoryChoiceFragment"

.field public static final VIDEO_NUM_COLUMNS:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->PAGE_COUNT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->PICTURE_NUM_COLUMNS:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->VIDEO_NUM_COLUMNS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->getStatParam()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->setFileListResult()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onRefreshFileList(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mIsLoading:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mIsLoading:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->updateChoiceList()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mStartIndex:I

    return p0
.end method

.method public static synthetic access$602(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mStartIndex:I

    return p1
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/util/TimeCost;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mTimeCost:Lcom/android/fileexplorer/util/TimeCost;

    return-object p0
.end method

.method private doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V
    .registers 3

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    move-result-object v0

    goto :goto_e

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_e
    return-object v0
.end method

.method private getPickTitle(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const p1, 0x7f182e28

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    if-eqz p1, :cond_28

    const-string v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    :cond_28
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_30
    const p1, 0x7f182e29

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3c
    if-eqz p1, :cond_52

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const p1, 0x7f182e57

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_52
    if-eqz p1, :cond_68

    const-string v0, "pdf/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    const p1, 0x7f182e56

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_68
    const-string p1, ""

    return-object p1
.end method

.method private getStatParam()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$7;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    const/4 v0, 0x0

    return-object v0

    :pswitch_f  #0xa
    const-string v0, "bluetooth"

    return-object v0

    :pswitch_12  #0x9
    const-string v0, "download"

    return-object v0

    :pswitch_15  #0x8
    const-string v0, "doc"

    return-object v0

    :pswitch_18  #0x7
    const-string v0, "apk"

    return-object v0

    :pswitch_1b  #0x6
    const-string v0, "archive"

    return-object v0

    :pswitch_1e  #0x5
    const-string v0, "favorite"

    return-object v0

    :pswitch_21  #0x4
    const-string v0, "music"

    return-object v0

    :pswitch_24  #0x3
    const-string v0, "pdf"

    return-object v0

    :pswitch_27  #0x2
    const-string v0, "video"

    return-object v0

    :pswitch_2a  #0x1
    const-string v0, "picture"

    return-object v0

    nop

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

    sget-object v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$7;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_51

    const/4 v3, 0x2

    if-eq v0, v3, :cond_42

    const/4 v3, 0x3

    if-eq v0, v3, :cond_18

    if-eq v0, v2, :cond_18

    const/4 v0, 0x0

    goto :goto_7b

    :cond_18
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070298

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;

    invoke-direct {v3, v1, v2, v2}, Lcom/android/fileexplorer/recyclerview/decoration/GroupListItemDecoration;-><init>(III)V

    iput-object v3, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mListItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mListItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    goto :goto_7b

    :cond_42
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    goto :goto_7b

    :cond_51
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    const v3, 0x7f070247

    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070726

    invoke-static {v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;-><init>(III)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mListItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->groupItemDecoration:Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :goto_7b
    if-eqz v0, :cond_82

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_82
    return-void
.end method

.method private initListView()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->attachSpringBackLayout(Lmiuix/springback/view/SpringBackLayout;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    new-instance v2, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$3;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setOnPullToRefreshListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initLayoutManager()V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CategoryChoiceFragment"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->getModeType(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->setSelectedMode(I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->setViewType()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    new-instance v1, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$4;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->setOnChoiceItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initView()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initActionBar()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032e44

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/springback/view/SpringBackLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032efc

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f032cf5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/EmptyView;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initListView()V

    return-void
.end method

.method public static newInstance()Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-direct {v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;-><init>()V

    return-object v0
.end method

.method private onRefreshFileList(Z)V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mIsLoading:Z

    if-eqz v0, :cond_b

    goto :goto_21

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRefreshFileListTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->cancelTask(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$5;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRefreshFileListTask:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_21
    :goto_21
    return-void
.end method

.method private onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v0

    if-ne v0, p1, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FileSortManager;->getComparator(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->setFileListResult()V

    :cond_3a
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    return-void
.end method

.method private setFileListResult()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->showEmptyView()V

    return-void
.end method

.method private setViewType()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$7;->$SwitchMap$com$android$fileexplorer$controller$FileCategoryHelper$FileCategory:[I

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    goto :goto_32

    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    goto :goto_32

    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    goto :goto_32

    :cond_2b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    :goto_32
    return-void
.end method

.method private showEmptyView()V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v0, v3}, Lcom/android/fileexplorer/view/EmptyView;->showEmpty(ZI)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mEmptyView:Lcom/android/fileexplorer/view/EmptyView;

    if-eqz v0, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    invoke-virtual {v1, v4}, Lcom/android/fileexplorer/view/EmptyView;->setVisibility(I)V

    :cond_1a
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v2

    :goto_21
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v3

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSpringBackLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_36

    :cond_34
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    :goto_36
    invoke-virtual {v1, v0}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method private updateChoiceList()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->getChoiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->updateTitle(I)V

    :cond_f
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

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

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->getPickTitle(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_62

    :cond_1a
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_62

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCancelBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0801dd

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCancelBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0801de

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

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

    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->setCategory(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    sget-object v0, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/controller/FileSortManager;->updateSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initView()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x70

    if-eq p1, v1, :cond_a

    if-ne p2, v0, :cond_14

    :cond_a
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_14
    return-void
.end method

.method public onBack()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const p1, 0x7f120524

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mRefreshFileListTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_b
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshCategory:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/fileexplorer/activity/BaseActivity;->isActivityFinish()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onRefreshFileList(Z)V

    :cond_1e
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_42

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_d
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->TYPE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v1

    :sswitch_13
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_DESC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v1

    :sswitch_19
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->SIZE_ASC:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v1

    :sswitch_1f
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->NAME:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v1

    :sswitch_25
    sget-object p1, Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;->DATE:Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->onSortCallback(Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;)V

    return v1

    :sswitch_2b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->getChoiceList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onPickFiles(Ljava/util/List;)V

    return v1

    :sswitch_35
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V

    return v1

    :sswitch_3b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->doPickCancel(Lcom/android/fileexplorer/activity/BaseActivity;)V

    return v1

    nop

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

    const v0, 0x7f0a033c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a03ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    const v2, 0x7f0a03b8

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-static {v3}, Lcom/android/fileexplorer/controller/FileSortManager;->getSortMethod(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/model/FileSortHelper$SortMethod;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a0319

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "pick_button_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_51
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->getChoiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5c

    move v1, v2

    :cond_5c
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    new-instance v0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$6;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$6;-><init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setCategory(I)V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->values()[Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-ltz p1, :cond_d

    array-length v1, v0

    if-ge p1, v1, :cond_d

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_26

    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    goto :goto_64

    :cond_26
    if-eqz p1, :cond_35

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    goto :goto_64

    :cond_35
    if-eqz p1, :cond_3f

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    :cond_3f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_51
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    goto :goto_64

    :cond_56
    if-eqz p1, :cond_64

    const-string v0, "pdf/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_64

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->PDF:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mCurrCategory:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mStartIndex:I

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->updateTitle(I)V

    :cond_73
    return-void
.end method

.method public updateTitle(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleNoFolderMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->isPickMultipleMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_10
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    const v1, 0x7f0801de

    if-nez p1, :cond_2e

    const p1, 0x7f11025d

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_51

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_51

    :cond_2e
    const v2, 0x7f0f0021

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mFileListRecycleAdapter:Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->isCheckedAll()Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mSelectAllBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_51

    if-eqz p1, :cond_4e

    const v1, 0x7f0801e8

    :cond_4e
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_51
    :goto_51
    return-void
.end method
