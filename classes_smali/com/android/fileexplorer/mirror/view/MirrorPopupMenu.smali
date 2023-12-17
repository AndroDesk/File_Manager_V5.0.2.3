.class public Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;
.super Ljava/lang/Object;
.source "MirrorPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;,
        Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;,
        Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorPopupMenu::"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mHideState:Lmiuix/animation/controller/AnimState;

.field private mIndex:I

.field private mIsShowOpenMode:Z

.field private mIsSuccess:Z

.field private mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

.field private mMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;",
            ">;"
        }
    .end annotation
.end field

.field private mOption:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mShowState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;I)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;Lcom/android/fileexplorer/model/FileInfo;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;Lcom/android/fileexplorer/model/FileInfo;ZI)V
    .registers 12

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIndex:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsShowOpenMode:Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    .line 7
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "hide"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 8
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v3, "show"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mShowState:Lmiuix/animation/controller/AnimState;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsSuccess:Z

    .line 10
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mAnchorView:Landroid/view/View;

    .line 12
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

    .line 13
    iput p6, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIndex:I

    .line 14
    iput-object p4, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p4, :cond_50

    .line 15
    iget-boolean p2, p4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez p2, :cond_4d

    if-nez p5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v0

    :goto_4e
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsShowOpenMode:Z

    .line 16
    :cond_50
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->initData()V

    .line 17
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p2, :cond_c2

    .line 18
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MirrorPopupMenu: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "MirrorPopupMenu::"

    invoke-static {p5, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c2

    .line 21
    :try_start_79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "."

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "MirrorPopupMenu: query ext: "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object p3

    new-instance p6, Lcom/android/cloud/fragment/presenter/b;

    const/16 v1, 0x9

    invoke-direct {p6, p0, v1}, Lcom/android/cloud/fragment/presenter/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p1, p2, p6}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->queryOpenOnSynergy(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$QueryOpenCallback;)I
    :try_end_ac
    .catchall {:try_start_79 .. :try_end_ac} :catchall_ad

    goto :goto_c2

    :catchall_ad
    move-exception p1

    .line 24
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsSuccess:Z

    .line 25
    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    :goto_c2
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->lambda$new$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setHover(Landroid/widget/ListView;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->showSubMenu(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->hideSubMenu(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsSuccess:Z

    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->lambda$showSubMenu$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->lambda$show$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic d(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->lambda$show$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->lambda$show$1()V

    return-void
.end method

.method private getEnableSize()I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_1b

    .line 11
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 19
    iget-boolean v2, v2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->enable:Z

    .line 21
    if-eqz v2, :cond_18

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_2

    .line 28
    :cond_1b
    return v1
.end method

.method private getMirrorActivity()Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 9
    goto :goto_1d

    .line 10
    :cond_9
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 12
    if-eqz v1, :cond_1c

    .line 14
    check-cast v0, Landroid/content/ContextWrapper;

    .line 16
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    instance-of v0, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 22
    if-eqz v0, :cond_1c

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 26
    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    :goto_1d
    return-object v0
.end method

.method private hideSubMenu(Landroid/view/View;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const v0, 0x7f0a00e6

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Landroid/view/View;

    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object p1, v0, v1

    .line 20
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 30
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 32
    invoke-interface {p1, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 35
    return-void
.end method

.method private initData()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 8
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 10
    const v2, 0x7f0a006b

    .line 13
    const v3, 0x7f110312

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsShowOpenMode:Z

    .line 24
    if-eqz v0, :cond_29

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 28
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 30
    const v2, 0x7f0a006c

    .line 33
    const v3, 0x7f110313

    .line 36
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 44
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 46
    const v2, 0x7f0a0076

    .line 49
    const v3, 0x7f11031f

    .line 52
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 60
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 62
    const v2, 0x7f0a005a

    .line 65
    const v3, 0x7f1102f9

    .line 68
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 76
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 78
    const v2, 0x7f0a0054

    .line 81
    const v3, 0x7f1102ed

    .line 84
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 92
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 94
    const v2, 0x7f0a0307

    .line 97
    const v3, 0x7f110316

    .line 100
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 108
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 110
    const v2, 0x7f0a005e

    .line 113
    const v3, 0x7f110305

    .line 116
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 124
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 126
    const v2, 0x7f0a0079

    .line 129
    const v3, 0x7f110324

    .line 132
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 140
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 142
    const v2, 0x7f0a0072

    .line 145
    const v3, 0x7f11031a

    .line 148
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 156
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 158
    const v2, 0x7f0a0061

    .line 161
    const v3, 0x7f11030b

    .line 164
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 172
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 174
    const v2, 0x7f0a0075

    .line 177
    const v3, 0x7f11031e

    .line 180
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 188
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 190
    const v2, 0x7f0a006a

    .line 193
    const v3, 0x7f11030c

    .line 196
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .registers 7

    .line 1
    const-string v0, "MirrorPopupMenu::"

    .line 3
    const-string v1, "MirrorPopupMenu: end"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsSuccess:Z

    .line 11
    if-eqz p1, :cond_4a

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_4a

    .line 19
    const-string v1, "MirrorPopupMenu: "

    .line 21
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 48
    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4a

    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;

    .line 60
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    .line 62
    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;

    .line 64
    iget-object v3, v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;->title:Ljava/lang/String;

    .line 66
    iget-object v4, v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;->icon:Landroid/graphics/Bitmap;

    .line 68
    invoke-direct {v2, v3, v4, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;)V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_2f

    .line 75
    :cond_4a
    return-void
.end method

.method private synthetic lambda$show$1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;->onDismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private synthetic lambda$show$2(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$show$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 9
    iget p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 11
    const p2, 0x7f0a006c

    .line 14
    if-ne p1, p2, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

    .line 19
    if-eqz p1, :cond_23

    .line 21
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 23
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 29
    iget p2, p2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    .line 31
    iget p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIndex:I

    .line 33
    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;->onMenuItemClick(II)V

    .line 36
    :cond_23
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->dismiss()V

    .line 39
    return-void
.end method

.method private synthetic lambda$showSubMenu$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;

    .line 9
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->option:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    if-eqz p1, :cond_41

    .line 16
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    if-eqz p2, :cond_41

    .line 20
    :try_start_13
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->getMirrorActivity()Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 23
    move-result-object p2

    .line 24
    new-instance p3, Ljava/io/File;

    .line 26
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 28
    iget-object p4, p4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 30
    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 36
    move-result-object p3

    .line 37
    const-string p4, "custom extra"

    .line 39
    invoke-virtual {p1, p2, p3, p4}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;->invoke(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_2a

    .line 42
    goto :goto_41

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    const-string p2, "showSubMenu: "

    .line 46
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    const-string p2, "MirrorPopupMenu::"

    .line 63
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->dismiss()V

    .line 69
    return-void
.end method

.method private setHover(Landroid/widget/ListView;I)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_29

    .line 8
    if-ne v0, p2, :cond_18

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    const v2, 0x7f060105

    .line 17
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    goto :goto_26

    .line 25
    :cond_18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    const v2, 0x7f06058c

    .line 32
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 39
    :goto_26
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_29
    return-void
.end method

.method private showSubMenu(Landroid/view/View;)V
    .registers 7

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const v0, 0x7f0a00e6

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    const/4 v1, 0x1

    .line 15
    new-array v2, v1, [Landroid/view/View;

    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v0, v2, v3

    .line 20
    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 30
    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    .line 32
    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 35
    const v0, 0x7f0a024e

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/ListView;

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_40

    .line 52
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    .line 54
    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;

    .line 56
    const-string v3, "title"

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-direct {v2, v3, v4, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;)V

    .line 62
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_40
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;

    .line 67
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    new-instance v0, Lcom/android/fileexplorer/mirror/view/e;

    .line 75
    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/mirror/view/e;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;I)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method public setMenuEnable(IZ)V
    .registers 4

    .line 1
    if-nez p2, :cond_d

    .line 3
    new-instance p2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-direct {p2, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_d
    return-void
.end method

.method public setMenus(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    return-void
.end method

.method public show(II)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mAnchorView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_c4

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_36

    .line 11
    new-instance v0, Landroid/widget/PopupWindow;

    .line 13
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 15
    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 20
    new-instance v3, Lcom/android/fileexplorer/mirror/view/c;

    .line 22
    invoke-direct {v3, p0, v2}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    .line 25
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 40
    const/high16 v3, 0x41200000  # 10.0f

    .line 42
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 52
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 55
    :cond_36
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

    .line 57
    if-eqz v0, :cond_3d

    .line 59
    invoke-interface {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;->onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V

    .line 62
    :cond_3d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 64
    const v3, 0x7f0702f3

    .line 67
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    .line 70
    move-result v0

    .line 71
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->getEnableSize()I

    .line 74
    move-result v3

    .line 75
    const/4 v7, 0x0

    .line 76
    if-ne v3, v2, :cond_4e

    .line 78
    move v0, v7

    .line 79
    :cond_4e
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 81
    const v4, 0x7f0702d8

    .line 84
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    .line 87
    move-result v8

    .line 88
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 93
    move-result-object v3

    .line 94
    const v4, 0x7f0d00c3

    .line 97
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v6, v7, v0, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 106
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 109
    const v0, 0x7f0a00e6

    .line 112
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v0

    .line 116
    new-array v1, v2, [Landroid/view/View;

    .line 118
    aput-object v0, v1, v7

    .line 120
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 130
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 133
    const v0, 0x7f0a024d

    .line 136
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v0

    .line 140
    move-object v9, v0

    .line 141
    check-cast v9, Landroid/widget/ListView;

    .line 143
    new-instance v0, Lcom/android/cloud/fragment/e;

    .line 145
    const/4 v1, 0x6

    .line 146
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 149
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v10, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;

    .line 154
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    .line 156
    const v3, 0x7f0d00c7

    .line 159
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    .line 161
    move-object v0, v10

    .line 162
    move-object v1, p0

    .line 163
    move-object v5, v9

    .line 164
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/content/Context;ILjava/util/List;Landroid/widget/ListView;Landroid/view/View;)V

    .line 167
    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    new-instance v0, Lcom/android/fileexplorer/mirror/view/e;

    .line 172
    invoke-direct {v0, p0, v7}, Lcom/android/fileexplorer/mirror/view/e;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;I)V

    .line 175
    invoke-virtual {v9, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 180
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 183
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 185
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mAnchorView:Landroid/view/View;

    .line 187
    const v2, 0x800033

    .line 190
    sub-int v3, p1, v8

    .line 192
    sub-int v4, p2, v8

    .line 194
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 197
    :cond_c4
    return-void
.end method
