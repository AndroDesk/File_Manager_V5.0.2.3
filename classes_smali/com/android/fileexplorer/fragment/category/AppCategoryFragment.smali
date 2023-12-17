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

.field private static final PAGE_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "FileGroupFragment"

.field public static final TYPE_APP:I = 0x0

.field public static final TYPE_PATH:I = 0x1


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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mType:I

    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->showTips(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mHideFirstItemDecoration:Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 8
    return-object v0
.end method

.method private initActionBar()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_33

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_15

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 18
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    :cond_15
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 24
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    const-string v3, "com.tencent.mobileqq"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_31

    .line 36
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 38
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    const-string v3, "com.tencent.mm"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_43

    .line 50
    :cond_31
    const/4 v1, 0x1

    .line 51
    goto :goto_43

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupPath:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_42

    .line 60
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupPath:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupPathName(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    const/4 v0, 0x0

    .line 68
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_52

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_52

    .line 80
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :cond_52
    if-eqz v1, :cond_76

    .line 85
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_76

    .line 91
    new-instance v0, Landroid/widget/ImageView;

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 100
    const v1, 0x7f080240

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    new-instance v1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$1;

    .line 108
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$1;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    if-eqz v2, :cond_76

    .line 116
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 119
    :cond_76
    return-void
.end method

.method private resolveArgs(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_25

    .line 3
    const-string v0, "app_tag"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 13
    const-string v0, "group_path"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupPath:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 23
    if-eqz v0, :cond_1c

    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mType:I

    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_25

    .line 35
    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mType:I

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method private showTips(Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "com.tencent.mobileqq"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_10

    .line 10
    const v1, 0x7f110381

    .line 13
    const p1, 0x7f110380

    .line 16
    goto :goto_20

    .line 17
    :cond_10
    const-string v0, "com.tencent.mm"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1f

    .line 25
    const v1, 0x7f110479

    .line 28
    const p1, 0x7f110478

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move p1, v1

    .line 33
    :goto_20
    if-gez v1, :cond_23

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 38
    if-nez v0, :cond_49

    .line 40
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 44
    invoke-interface {v2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 57
    const p1, 0x7f110469

    .line 60
    new-instance v1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$2;

    .line 62
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$2;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    .line 65
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 74
    :cond_49
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_56

    .line 82
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 87
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

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 8
    iget-object v0, v0, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    return-object p1
.end method

.method public exitActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->exitActionMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getOneCopyShareData()Lcom/android/fileexplorer/model/FileInfo;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_4c

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_12

    .line 18
    goto :goto_4c

    .line 19
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    const-string v3, "getOneHopShareData size:"

    .line 29
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v4

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x1

    .line 52
    if-ne v2, v3, :cond_4c

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 61
    if-eqz v0, :cond_4c

    .line 63
    iget-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 65
    if-nez v2, :cond_4c

    .line 67
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4b

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    return-object v0

    .line 77
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->getCheckedItems()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_61

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_11

    .line 17
    goto :goto_61

    .line 18
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const-string v2, "getOneHopShareData size:"

    .line 28
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_60

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 67
    if-eqz v2, :cond_36

    .line 69
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4f

    .line 79
    goto :goto_36

    .line 80
    :cond_4f
    new-instance v3, Ljava/io/File;

    .line 82
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_36

    .line 97
    :cond_60
    return-object v1

    .line 98
    :cond_61
    :goto_61
    const/4 v0, 0x0

    .line 99
    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->setIsFixedSize(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 16
    const v2, 0x7f0a03e3

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->registerBlurContainer(Landroid/view/ViewGroup;)V

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 30
    return-object v0
.end method

.method public initItemDecoration()V
    .registers 8

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
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/util/DesignDiffUtils;->getCategoryMarginSide(Landroid/content/Context;)I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/android/fileexplorer/util/DesignDiffUtils;->getMusicMarginMiddle(Landroid/content/Context;)I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f070080

    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v3

    .line 45
    const v4, 0x7f07007f

    .line 48
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result v3

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v4

    .line 56
    const v5, 0x7f07007e

    .line 59
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result v4

    .line 63
    new-instance v5, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;

    .line 65
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getSpanCount()I

    .line 68
    move-result v6

    .line 69
    invoke-direct {v5, v0, v1, v6}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;-><init>(III)V

    .line 72
    iput-object v5, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {v5, v3, v0, v2, v4}, Lcom/android/fileexplorer/recyclerview/decoration/GroupItemDecoration;->setMargin(IIII)V

    .line 78
    new-instance v0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$5;

    .line 80
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$5;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    .line 83
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 85
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

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 4
    move-result-object v0

    .line 5
    iget p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mType:I

    .line 7
    const/4 p2, 0x1

    .line 8
    if-ne p1, p2, :cond_14

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupPath:Ljava/lang/String;

    .line 12
    iget-wide v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mLastGroupTime:J

    .line 14
    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 20
    goto :goto_26

    .line 21
    :cond_14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mAppTag:Lcom/android/fileexplorer/dao/file/AppTag;

    .line 23
    if-eqz p1, :cond_26

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    iget-wide v3, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mLastGroupTime:J

    .line 32
    move v5, p3

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 39
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDbResultHolder:Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    .line 41
    const/4 p2, 0x0

    .line 42
    if-nez p1, :cond_2c

    .line 44
    return-object p2

    .line 45
    :cond_2c
    new-instance p3, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;

    .line 47
    iget-boolean p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->hasMore:Z

    .line 49
    invoke-direct {p3, p2, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$BusinessResult;-><init>(Ljava/util/List;Z)V

    .line 52
    return-object p3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->resolveArgs(Landroid/os/Bundle;)V

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->initActionBar()V

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->registerOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 21
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 14
    :cond_d
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->onDestroyView()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->unRegisterOnScanListener(Lcom/android/fileexplorer/apptag/MiFileListManager$OnScanListener;)V

    .line 14
    return-void
.end method

.method public onFileChange(Lcom/android/fileexplorer/event/FileChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-boolean p1, p1, Lcom/android/fileexplorer/event/FileChangeEvent;->refreshRecent:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 14
    return-void
.end method

.method public onPullRefresh()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 9
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

.method public onScanFinish(I)V
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mLastGroupTime:J

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1, p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->loadGroupList(ZZ)V

    .line 9
    return-void
.end method

.method public onUpdateArguments(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->resolveArgs(Landroid/os/Bundle;)V

    .line 7
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->initActionBar()V

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->onPullRefresh()V

    .line 13
    return-void
.end method

.method public setupAdapter()V
    .registers 9

    .line 1
    new-instance v0, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mAdapterFileList:Ljava/util/List;

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/recyclerview/adapter/RecentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setRefreshMode(I)V

    .line 19
    new-instance v0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 23
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 25
    invoke-direct {v0, v2, v4}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mModeListener:Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 32
    new-instance v4, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;

    .line 34
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 36
    invoke-direct {v4, v5, v0}, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;-><init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 39
    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setMultiChoiceModeListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->getTitle()Ljava/lang/CharSequence;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3a

    .line 56
    const-string v0, "手机tab页"

    .line 58
    goto :goto_4f

    .line 59
    :cond_3a
    const-string v0, "手机tab页_"

    .line 61
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getFrgamentActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroidx/appcompat/app/a;->getTitle()Ljava/lang/CharSequence;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    :goto_4f
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 82
    new-instance v4, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;

    .line 84
    iget-object v5, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 86
    invoke-direct {v4, v5, v2, v0}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v4}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnChildClickListener(Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 94
    new-instance v2, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;

    .line 96
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$3;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    .line 99
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;->setOnModeChangedListener(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 110
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 112
    check-cast v2, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    .line 114
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    .line 117
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 119
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 122
    move-result-object v0

    .line 123
    const/4 v2, 0x4

    .line 124
    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_PAD:Z

    .line 126
    const/16 v5, 0x1e

    .line 128
    const/16 v6, 0xf

    .line 130
    if-eqz v4, :cond_85

    .line 132
    move v7, v5

    .line 133
    goto :goto_86

    .line 134
    :cond_85
    move v7, v6

    .line 135
    :goto_86
    invoke-virtual {v0, v2, v7}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 138
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 140
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 143
    move-result-object v0

    .line 144
    const/4 v2, 0x3

    .line 145
    if-eqz v4, :cond_94

    .line 147
    move v7, v5

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    move v7, v6

    .line 150
    :goto_95
    invoke-virtual {v0, v2, v7}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 153
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 155
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 158
    move-result-object v0

    .line 159
    if-eqz v4, :cond_a1

    .line 161
    goto :goto_a2

    .line 162
    :cond_a1
    move v5, v6

    .line 163
    :goto_a2
    invoke-virtual {v0, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 166
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 168
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    .line 171
    move-result-object v0

    .line 172
    const/4 v2, 0x5

    .line 173
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->c(II)V

    .line 176
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->initItemDecoration()V

    .line 179
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 181
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mDividerDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 183
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 186
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 188
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGridItemDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 190
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 193
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 195
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->mGroupHeaderDecoration:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 197
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 200
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 202
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getStickyHeaderDecoration()Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 209
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 211
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->getHideFirstItemDecoration()Lcom/android/fileexplorer/recyclerview/decoration/HideFirstItemDecoration;

    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 218
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 220
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 222
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 225
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 227
    if-nez v0, :cond_fc

    .line 229
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 231
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 236
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mFileAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;

    .line 238
    check-cast v1, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setCapsuleCalculator(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleCalculator;)V

    .line 243
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 245
    new-instance v1, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$4;

    .line 247
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$4;-><init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V

    .line 250
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;->setFastScrollerCapsuleViewProvider(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleViewProvider;)V

    .line 253
    :cond_fc
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
