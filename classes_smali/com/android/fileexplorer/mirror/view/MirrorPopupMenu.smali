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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;I)V
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;Lcom/android/fileexplorer/model/FileInfo;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;Lcom/android/fileexplorer/model/FileInfo;ZI)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsShowOpenMode:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "hide"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mHideState:Lmiuix/animation/controller/AnimState;

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v3, "show"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mShowState:Lmiuix/animation/controller/AnimState;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsSuccess:Z

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mAnchorView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

    iput p6, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIndex:I

    iput-object p4, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p4, :cond_50

    iget-boolean p2, p4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez p2, :cond_4d

    if-nez p5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v0

    :goto_4e
    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsShowOpenMode:Z

    :cond_50
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->initData()V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p2, :cond_c2

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MirrorPopupMenu: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "MirrorPopupMenu::"

    invoke-static {p5, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c2

    :try_start_79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "."

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "MirrorPopupMenu: query ext: "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsSuccess:Z

    invoke-static {p4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

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

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setHover(Landroid/widget/ListView;I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->showSubMenu(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->hideSubMenu(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsSuccess:Z

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

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    iget-boolean v2, v2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->enable:Z

    if-eqz v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    return v1
.end method

.method private getMirrorActivity()Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    goto :goto_1d

    :cond_9
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1c

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0
.end method

.method private hideSubMenu(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const v0, 0x7f032d70

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mHideState:Lmiuix/animation/controller/AnimState;

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private initData()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a006b

    const v3, 0x7f110312

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsShowOpenMode:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a006c

    const v3, 0x7f110313

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0076

    const v3, 0x7f11031f

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a005a

    const v3, 0x7f1102f9

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0054

    const v3, 0x7f1102ed

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0307

    const v3, 0x7f110316

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a005e

    const v3, 0x7f110305

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0079

    const v3, 0x7f110324

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0072

    const v3, 0x7f11031a

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0061

    const v3, 0x7f11030b

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0075

    const v3, 0x7f11031e

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a006a

    const v3, 0x7f11030c

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .registers 7

    const-string v0, "MirrorPopupMenu::"

    const-string v1, "MirrorPopupMenu: end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIsSuccess:Z

    if-eqz p1, :cond_4a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "MirrorPopupMenu: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;

    iget-object v3, v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_4a
    return-void
.end method

.method private synthetic lambda$show$1()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;->onDismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$show$2(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->dismiss()V

    return-void
.end method

.method private synthetic lambda$show$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    iget p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    const p2, 0x7f0a006c

    if-ne p1, p2, :cond_10

    return-void

    :cond_10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

    if-eqz p1, :cond_23

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    iget p2, p2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;->id:I

    iget p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mIndex:I

    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;->onMenuItemClick(II)V

    :cond_23
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showSubMenu$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->option:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;

    if-nez p1, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_41

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz p2, :cond_41

    :try_start_13
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->getMirrorActivity()Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    iget-object p4, p4, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    const-string p4, "custom extra"

    invoke-virtual {p1, p2, p3, p4}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;->invoke(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_2a

    goto :goto_41

    :catchall_2a
    move-exception p1

    const-string p2, "showSubMenu: "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MirrorPopupMenu::"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->dismiss()V

    return-void
.end method

.method private setHover(Landroid/widget/ListView;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_29

    if-ne v0, p2, :cond_18

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060105

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_26

    :cond_18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06058c

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method

.method private showSubMenu(Landroid/view/View;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const v0, 0x7f032d70

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mShowState:Lmiuix/animation/controller/AnimState;

    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    const v0, 0x7f032fd8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mOption:Ljava/util/List;

    new-instance v2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;

    const-string v3, "title"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    new-instance v0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/view/e;

    invoke-direct {v0, p0, v1}, Lcom/android/fileexplorer/mirror/view/e;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;I)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method public setMenuEnable(IZ)V
    .registers 4

    if-nez p2, :cond_d

    new-instance p2, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const/4 v0, -0x1

    invoke-direct {p2, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public show(II)V
    .registers 14

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_36

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/android/fileexplorer/mirror/view/c;

    invoke-direct {v3, p0, v2}, Lcom/android/fileexplorer/mirror/view/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/high16 v3, 0x41200000  # 10.0f

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_36
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mListener:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;

    if-eqz v0, :cond_3d

    invoke-interface {v0, p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;->onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V

    :cond_3d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f0702f3

    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->getEnableSize()I

    move-result v3

    const/4 v7, 0x0

    if-ne v3, v2, :cond_4e

    move v0, v7

    :cond_4e
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    const v4, 0x7f0702d8

    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v8

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00c3

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7, v0, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v0, 0x7f032d70

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-array v1, v2, [Landroid/view/View;

    aput-object v0, v1, v7

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mHideState:Lmiuix/animation/controller/AnimState;

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    const v0, 0x7f032fdb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ListView;

    new-instance v0, Lcom/android/cloud/fragment/e;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00c7

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mMenus:Ljava/util/List;

    move-object v0, v10

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/content/Context;ILjava/util/List;Landroid/widget/ListView;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/android/fileexplorer/mirror/view/e;

    invoke-direct {v0, p0, v7}, Lcom/android/fileexplorer/mirror/view/e;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;I)V

    invoke-virtual {v9, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->mAnchorView:Landroid/view/View;

    const v2, 0x800033

    sub-int v3, p1, v8

    sub-int v4, p2, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_cc
    return-void
.end method
