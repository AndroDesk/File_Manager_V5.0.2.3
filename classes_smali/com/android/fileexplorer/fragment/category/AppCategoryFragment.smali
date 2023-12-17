.class public Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;
.super Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;
.source "AppCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        "Lcom/android/fileexplorer/apptag/FileItemGroup;",
        ">;",
        "Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;"
    }
.end annotation


# static fields
.field public static final EXTRA_APP_TAG:Ljava/lang/String; = "app_tag"

.field public static final EXTRA_GROUP_PATH:Ljava/lang/String; = "group_path"

.field private static final PAGE_COUNT:I

.field private static final TAG:Ljava/lang/String; = "FileGroupFragment"

.field public static final TYPE_APP:I

.field public static final TYPE_PATH:I


# instance fields
.field public mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

.field public mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field public mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

.field private mGroupPath:Ljava/lang/String;

.field public mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

.field private mLastGroupTime:J

.field private mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

.field public mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->PAGE_COUNT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->TYPE_APP:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->TYPE_PATH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mType:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->showTips(Ljava/lang/String;)V

    return-void
.end method

.method private getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    return-object v0
.end method

.method private initActionBar()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object v0

    :cond_15
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_31
    const/4 v1, 0x1

    goto :goto_43

    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_52
    if-eqz v1, :cond_76

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    move-result v0

    if-eqz v0, :cond_76

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080240

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_76

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_76
    return-void
.end method

.method private resolveArgs(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_25

    const-string v0, "app_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/AppTag;

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    const-string v0, "group_path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz v0, :cond_1c

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mType:I

    goto :goto_25

    :cond_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mType:I

    :cond_25
    :goto_25
    return-void
.end method

.method private showTips(Ljava/lang/String;)V
    .registers 5

    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    const v1, 0x7f110381

    const p1, 0x7f110380

    goto :goto_20

    :cond_10
    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const v1, 0x7f110479

    const p1, 0x7f110478

    goto :goto_20

    :cond_1f
    move p1, v1

    :goto_20
    if-gez v1, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_49

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f110469

    new-instance v1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_49
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_56

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_56
    return-void
.end method


# virtual methods
.method public convertToViewData(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemGroup;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public exitActionMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->exitActionMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getOneCopyShareData()Lcom/android/fileexplorer/model/FileInfo;
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_4c

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getOneHopShareData size:"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4c

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v0, :cond_4c

    iget-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v2, :cond_4c

    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_4c

    :cond_4b
    return-object v0

    :cond_4c
    :goto_4c
    return-object v1
.end method

.method public getOneHopShareData()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_61

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getOneHopShareData size:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_36

    :cond_4f
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_60
    return-object v1

    :cond_61
    :goto_61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setIsFixedSize(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f032e75

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    return-object v0
.end method

.method public initItemDecoration()V
    .registers 8

    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/GroupDividerDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DesignDiffUtils;->getCategoryMarginSide(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DesignDiffUtils;->getMusicMarginMiddle(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v6

    invoke-direct {v5, v0, v1, v6}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;-><init>(III)V

    iput-object v5, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    const/4 v0, 0x0

    invoke-virtual {v5, v3, v0, v2, v4}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    new-instance v0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$5;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    return-void
.end method

.method public isSupportOneCopyShare()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public loadBusinessData(ZII)Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v0

    iget p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mLastGroupTime:J

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    goto :goto_26

    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mLastGroupTime:J

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    const/4 p2, 0x0

    if-nez p1, :cond_2c

    return-object p2

    :cond_2c
    new-instance p3, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    iget-boolean p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    invoke-direct {p3, p2, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    return-object p3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->resolveArgs(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->initActionBar()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_d
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    return-void
.end method

.method public onPullRefresh()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onResume()V

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->startToMainActivity(Landroid/app/Activity;)V

    :cond_10
    return-void
.end method

.method public onScanFinish(I)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mLastGroupTime:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadGroupList(ZZ)V

    return-void
.end method

.method public onUpdateArguments(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->resolveArgs(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->initActionBar()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->onPullRefresh()V

    return-void
.end method

.method public setupAdapter()V
    .registers 9

    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setRefreshMode(I)V

    new-instance v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-direct {v0, v2, v4}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    new-instance v4, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-direct {v4, v5, v0}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;-><init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "手机tab页"

    goto :goto_4f

    :cond_3a
    const-string v0, "手机tab页_"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    new-instance v4, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;

    iget-object v5, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {v4, v5, v2, v0}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    new-instance v2, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    check-cast v2, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v2, 0x4

    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    const/16 v5, 0x1e

    const/16 v6, 0xf

    if-eqz v4, :cond_85

    move v7, v5

    goto :goto_86

    :cond_85
    move v7, v6

    :goto_86
    invoke-virtual {v0, v2, v7}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v2, 0x3

    if-eqz v4, :cond_94

    move v7, v5

    goto :goto_95

    :cond_94
    move v7, v6

    :goto_95
    invoke-virtual {v0, v2, v7}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    if-eqz v4, :cond_a1

    goto :goto_a2

    :cond_a1
    move v5, v6

    :goto_a2
    invoke-virtual {v0, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->initItemDecoration()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_fc

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    check-cast v1, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    new-instance v1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$4;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    :cond_fc
    return-void
.end method

.method public setupLayoutManager()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/recyclerview/layout/ExpandableGridLayoutManager;-><init>(Landroid/content/Context;ILcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
