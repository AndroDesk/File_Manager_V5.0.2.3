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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/callback/IActionListener;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/callback/IActionListener;Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$DialogListener;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 12
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDialogListener:Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$DialogListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->dealDisplayChange(II)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mItems:Ljava/util/List;

    .line 3
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

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    :cond_c
    invoke-static {p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 24
    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WO_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 26
    const v3, 0x7f110473

    .line 29
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 37
    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_POP_MENU:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 39
    const v3, 0x7f110474

    .line 42
    iget v4, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;III)V

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 53
    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 55
    const v3, 0x7f1103f4

    .line 58
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v3

    .line 70
    const/4 v4, 0x4

    .line 71
    invoke-virtual {v1, v3, v4}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->addGroupIndex(II)V

    .line 74
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 76
    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 78
    const v6, 0x7f110044

    .line 81
    const/4 v7, 0x3

    .line 82
    iget v8, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 84
    sget-object v9, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 86
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 89
    move-result v9

    .line 90
    const/4 v10, 0x1

    .line 91
    if-ne v8, v9, :cond_5e

    .line 93
    move v8, v10

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move v8, v5

    .line 96
    :goto_5f
    invoke-direct {v1, v3, v6, v7, v8}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 104
    const v6, 0x7f110045

    .line 107
    const/4 v7, 0x6

    .line 108
    iget v8, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 110
    sget-object v9, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 112
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 115
    move-result v9

    .line 116
    if-ne v8, v9, :cond_77

    .line 118
    move v8, v10

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v8, v5

    .line 121
    :goto_78
    invoke-direct {v1, v3, v6, v7, v8}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 129
    const v6, 0x7f110043

    .line 132
    iget v7, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 134
    sget-object v8, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 136
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 139
    move-result v8

    .line 140
    if-ne v7, v8, :cond_8f

    .line 142
    move v7, v10

    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    move v7, v5

    .line 145
    :goto_90
    invoke-direct {v1, v3, v6, v4, v7}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 153
    const v4, 0x7f110046

    .line 156
    const/4 v6, 0x5

    .line 157
    iget v7, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 159
    sget-object v8, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 161
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 164
    move-result v8

    .line 165
    if-ne v7, v8, :cond_a7

    .line 167
    move v5, v10

    .line 168
    :cond_a7
    invoke-direct {v1, v3, v4, v6, v5}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 176
    const v4, 0x7f1103f1

    .line 179
    invoke-direct {v1, v2, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 190
    move-result v2

    .line 191
    const/4 v4, 0x2

    .line 192
    invoke-virtual {v1, v2, v4}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->addGroupIndex(II)V

    .line 195
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 197
    const v2, 0x7f110366

    .line 200
    const/16 v4, 0x8

    .line 202
    iget-boolean v5, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 204
    xor-int/2addr v5, v10

    .line 205
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 213
    const v2, 0x7f11039c

    .line 216
    const/16 v4, 0x9

    .line 218
    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    .line 220
    invoke-direct {v1, v3, v2, v4, p1}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildCustomPanelList(Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 13
    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 15
    const v3, 0x7f11012f

    .line 18
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->addGroupIndex(II)V

    .line 34
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 36
    sget-object v2, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 38
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->isHideEmptyOrSysDirs()Z

    .line 41
    move-result v3

    .line 42
    xor-int/lit8 v3, v3, 0x1

    .line 44
    const v4, 0x7f11012d

    .line 47
    const/16 v5, 0xa

    .line 49
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 57
    const v3, 0x7f11012e

    .line 60
    const/16 v4, 0xb

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/model/DisplayPreferenceManager;->isHideEmptyOrSysDirs()Z

    .line 65
    move-result v5

    .line 66
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
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

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    if-ltz v0, :cond_b

    .line 2
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildPanelItems(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4
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

    .line 7
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildCustomPanelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_f
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildHomeFilePanelList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 9
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

    .line 5
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->getDialogTypeByCategoryName(Ljava/lang/String;)I

    move-result v0

    .line 6
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FabPreference;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 18
    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WO_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 20
    const v4, 0x7f110473

    .line 23
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 31
    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_POP_MENU:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 33
    iget v4, v0, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    .line 35
    const v5, 0x7f110474

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;III)V

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 47
    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 49
    const v4, 0x7f110386

    .line 52
    invoke-direct {v2, v3, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;I)V

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x2

    .line 65
    invoke-virtual {v2, v3, v4}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->addGroupIndex(II)V

    .line 68
    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 70
    sget-object v3, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 72
    iget v4, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 74
    sget-object v5, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 76
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 79
    move-result v5

    .line 80
    const/4 v7, 0x1

    .line 81
    if-ne v4, v5, :cond_54

    .line 83
    move v4, v7

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move v4, v6

    .line 86
    :goto_55
    const v5, 0x7f110385

    .line 89
    const/4 v8, 0x4

    .line 90
    invoke-direct {v2, v3, v5, v8, v4}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 98
    const v4, 0x7f110384

    .line 101
    const/4 v5, 0x7

    .line 102
    iget v0, v0, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    .line 104
    sget-object v8, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 106
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 109
    move-result v8

    .line 110
    if-ne v0, v8, :cond_70

    .line 112
    move v6, v7

    .line 113
    :cond_70
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/fileexplorer/fragment/panel/PanelItem;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;IIZ)V

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-object v1
.end method

.method private dealDisplayChange(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 3
    if-eqz v0, :cond_42

    .line 5
    if-gez p1, :cond_7

    .line 7
    goto :goto_42

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mItems:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 16
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getDisplayType()I

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_3d

    .line 22
    const/4 p2, 0x1

    .line 23
    const/4 v0, 0x0

    .line 24
    packed-switch p1, :pswitch_data_44

    .line 27
    return-void

    .line 28
    :pswitch_1b  #0xb
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 30
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onDirectoryDisplayChanged(Z)V

    .line 33
    return-void

    .line 34
    :pswitch_21  #0xa
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 36
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onDirectoryDisplayChanged(Z)V

    .line 39
    return-void

    .line 40
    :pswitch_27  #0x9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 42
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortOrderChanged(Z)V

    .line 45
    return-void

    .line 46
    :pswitch_2d  #0x8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 48
    invoke-interface {p1, v0}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortOrderChanged(Z)V

    .line 51
    return-void

    .line 52
    :pswitch_33  #0x3, 0x4, 0x5, 0x6, 0x7
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->getSortMethodMap(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onSortMethodChanged(Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;)V

    .line 61
    return-void

    .line 62
    :cond_3d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mDisplayChangeListener:Lcom/android/fileexplorer/fragment/callback/IActionListener;

    .line 64
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/fragment/callback/IActionListener;->onViewModeChanged(I)V

    .line 67
    :cond_42
    :goto_42
    return-void

    .line 68
    nop

    .line 69
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

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Recent:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 p1, 0x2

    .line 12
    return p1
.end method


# virtual methods
.method public getSortMethodMap(I)Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_1d

    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_1a

    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_17

    .line 10
    const/4 v0, 0x6

    .line 11
    if-eq p1, v0, :cond_14

    .line 13
    const/4 v0, 0x7

    .line 14
    if-eq p1, v0, :cond_11

    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_11
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SOURCE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 20
    return-object p1

    .line 21
    :cond_14
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 23
    return-object p1

    .line 24
    :cond_17
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 29
    return-object p1

    .line 30
    :cond_1d
    sget-object p1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    .line 32
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mActivity:Landroid/app/Activity;

    .line 10
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 12
    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "page_type"

    .line 23
    const/4 v1, -0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageType:I

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 33
    move-result-object p1

    .line 34
    const-string v0, "page_category"

    .line 36
    const-string v1, ""

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mPageCategory:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mActivity:Landroid/app/Activity;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p1

    .line 7
    const v0, 0x7f0d0057

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 17
    const v1, 0x7f1101cb

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 25
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 28
    const v0, 0x7f0a010c

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 37
    new-instance v0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 39
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 46
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    .line 48
    invoke-direct {v1, v0}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;)V

    .line 51
    iput-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mRadioGroupManager:Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;

    .line 53
    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->buildPanelItems()Ljava/util/List;

    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mItems:Ljava/util/List;

    .line 59
    if-eqz v0, :cond_63

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    move-result v0

    .line 65
    if-lez v0, :cond_63

    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 69
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mItems:Ljava/util/List;

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->setDatas(Ljava/util/List;)V

    .line 74
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 76
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mActivity:Landroid/app/Activity;

    .line 78
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 83
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 91
    new-instance v0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;

    .line 93
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$1;-><init>(Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)V

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->setItemClickListener(Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;)V

    .line 99
    goto :goto_6a

    .line 100
    :cond_63
    const-string p1, "DisplaySettingDialogFragment"

    .line 102
    const-string v0, "mItems is empty"

    .line 104
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_6a
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;->mBuilder:Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 112
    move-result-object p1

    .line 113
    return-object p1
.end method
