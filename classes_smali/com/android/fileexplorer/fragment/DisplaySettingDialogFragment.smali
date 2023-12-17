.class public Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DisplaySettingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$DialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplaySettingDialogFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

.field private mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

.field private mDialogListener:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$DialogListener;

.field private mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPageCategory:Ljava/lang/String;

.field private mPageType:I

.field private mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/callback/IActionListener;)V
    .registers 3

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/callback/IActionListener;Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$DialogListener;)V
    .registers 4

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDialogListener:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$DialogListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->dealDisplayChange(II)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mItems:Ljava/util/List;

    return-object p0
.end method

.method private buildCustomPanelList(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :cond_c
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WO_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    const v3, 0x7f110473

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_POP_MENU:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    const v3, 0x7f110474

    iget v4, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    const v3, 0x7f1103f4

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->addGroupIndex(II)V

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    const v6, 0x7f110044

    const/4 v7, 0x3

    iget v8, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v9, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_5e

    move v8, v10

    goto :goto_5f

    :cond_5e
    move v8, v5

    :goto_5f
    invoke-direct {v1, v3, v6, v7, v8}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    const v6, 0x7f110045

    const/4 v7, 0x6

    iget v8, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v9, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_77

    move v8, v10

    goto :goto_78

    :cond_77
    move v8, v5

    :goto_78
    invoke-direct {v1, v3, v6, v7, v8}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    const v6, 0x7f110043

    iget v7, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v8, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_8f

    move v7, v10

    goto :goto_90

    :cond_8f
    move v7, v5

    :goto_90
    invoke-direct {v1, v3, v6, v4, v7}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    const v4, 0x7f110046

    const/4 v6, 0x5

    iget v7, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v8, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ne v7, v8, :cond_a7

    move v5, v10

    :cond_a7
    invoke-direct {v1, v3, v4, v6, v5}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    const v4, 0x7f1103f1

    invoke-direct {v1, v2, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->addGroupIndex(II)V

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    const v2, 0x7f110366

    const/16 v4, 0x8

    iget-boolean v5, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    xor-int/2addr v5, v10

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    const v2, 0x7f11039c

    const/16 v4, 0x9

    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-direct {v1, v3, v2, v4, p1}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private buildHomeFilePanelList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildCustomPanelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    const v3, 0x7f11012f

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->addGroupIndex(II)V

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->isHideEmptyOrSysDirs()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const v4, 0x7f11012d

    const/16 v5, 0xa

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    const v3, 0x7f11012e

    const/16 v4, 0xb

    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->isHideEmptyOrSysDirs()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private buildPanelItems()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    if-ltz v0, :cond_b

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildPanelItems(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildPanelItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildPanelItems(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildCustomPanelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildHomeFilePanelList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildRecentPanelList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private buildPanelItems(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->getDialogTypeByCategoryName(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildPanelItems(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private buildRecentPanelList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WO_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    const v4, 0x7f110473

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_POP_MENU:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    iget v4, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    const v5, 0x7f110474

    const/4 v6, 0x0

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    const v4, 0x7f110386

    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->addGroupIndex(II)V

    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    iget v4, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v5, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v7, 0x1

    if-ne v4, v5, :cond_54

    move v4, v7

    goto :goto_55

    :cond_54
    move v4, v6

    :goto_55
    const v5, 0x7f110385

    const/4 v8, 0x4

    invoke-direct {v2, v3, v5, v8, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    const v4, 0x7f110384

    const/4 v5, 0x7

    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    sget-object v8, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-ne v0, v8, :cond_70

    move v6, v7

    :cond_70
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private dealDisplayChange(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    if-eqz v0, :cond_42

    if-gez p1, :cond_7

    goto :goto_42

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getDisplayType()I

    move-result p1

    if-eqz p1, :cond_3d

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_44

    return-void

    :pswitch_1b  #0xb
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onDirectoryDisplayChanged(Z)V

    return-void

    :pswitch_21  #0xa
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onDirectoryDisplayChanged(Z)V

    return-void

    :pswitch_27  #0x9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortOrderChanged(Z)V

    return-void

    :pswitch_2d  #0x8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortOrderChanged(Z)V

    return-void

    :pswitch_33  #0x3, 0x4, 0x5, 0x6, 0x7
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->getSortMethodMap(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    return-void

    :cond_3d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    invoke-interface {p1, p2}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onViewModeChanged(I)V

    :cond_42
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_33  #00000003
        :pswitch_33  #00000004
        :pswitch_33  #00000005
        :pswitch_33  #00000006
        :pswitch_33  #00000007
        :pswitch_2d  #00000008
        :pswitch_27  #00000009
        :pswitch_21  #0000000a
        :pswitch_1b  #0000000b
    .end packed-switch
.end method

.method private getDialogTypeByCategoryName(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method public getSortMethodMap(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_17

    const/4 v0, 0x6

    if-eq p1, v0, :cond_14

    const/4 v0, 0x7

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    return-object p1

    :cond_14
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    return-object p1

    :cond_17
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    return-object p1

    :cond_1a
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    return-object p1

    :cond_1d
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "page_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "page_category"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f042dc1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1101cb

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f032c9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    invoke-direct {v1, v0}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;)V

    iput-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildPanelItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mItems:Ljava/util/List;

    if-eqz v0, :cond_6b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6b

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->setDatas(Ljava/util/List;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    new-instance v0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;-><init>(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->setItemClickListener(Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;)V

    goto :goto_72

    :cond_6b
    const-string p1, "DisplaySettingDialogFragment"

    const-string v0, "mItems is empty"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
