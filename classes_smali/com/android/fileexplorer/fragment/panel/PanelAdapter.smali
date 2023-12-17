.class public Lcom/android/fileexplorer/fragment/panel/PanelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickListener:Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->lambda$bindView$0(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;)Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mItemClickListener:Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lmiuix/appcompat/widget/Spinner;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->lambda$bindView$1(Lmiuix/appcompat/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method private bindView(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V
    .registers 7

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->getItemViewType(I)I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v0, :cond_24

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mContext:Landroid/content/Context;

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 18
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 24
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getTitleResId()I

    .line 27
    move-result p2

    .line 28
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;->bindView(Ljava/lang/String;Z)V

    .line 35
    goto/16 :goto_a4

    .line 37
    :cond_24
    sget-object v1, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WO_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 42
    move-result v1

    .line 43
    if-ne v1, v0, :cond_43

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mContext:Landroid/content/Context;

    .line 47
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 49
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 55
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getTitleResId()I

    .line 58
    move-result p2

    .line 59
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;->bindView(Ljava/lang/String;Z)V

    .line 67
    goto :goto_a4

    .line 68
    :cond_43
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 70
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 76
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;->bindView(ILcom/android/fileexplorer/fragment/panel/PanelItem;)V

    .line 79
    sget-object v1, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 84
    move-result v1

    .line 85
    const/4 v3, 0x5

    .line 86
    if-ne v1, v0, :cond_70

    .line 88
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 90
    instance-of v0, p2, Lmiuix/androidbasewidget/widget/CheckedTextView;

    .line 92
    if-eqz v0, :cond_a4

    .line 94
    check-cast p2, Lmiuix/androidbasewidget/widget/CheckedTextView;

    .line 96
    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    .line 99
    move-result p2

    .line 100
    if-nez p2, :cond_a4

    .line 102
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 104
    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    .line 106
    invoke-direct {v0, v3, p0, p1}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    goto :goto_a4

    .line 113
    :cond_70
    sget-object v1, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_POP_MENU:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 115
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 118
    move-result v1

    .line 119
    if-ne v1, v0, :cond_a4

    .line 121
    instance-of v0, p1, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;

    .line 123
    if-eqz v0, :cond_a4

    .line 125
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;

    .line 128
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->getSpinner()Lmiuix/appcompat/widget/Spinner;

    .line 131
    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 134
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 140
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getSpinnerSelectedPos()I

    .line 143
    move-result p2

    .line 144
    invoke-virtual {v0, p2, v2}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    .line 147
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 149
    new-instance v1, Lcom/android/cloud/fragment/e;

    .line 151
    invoke-direct {v1, v0, v3}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    .line 154
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance p2, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;

    .line 159
    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;)V

    .line 162
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 165
    :cond_a4
    :goto_a4
    return-void
.end method

.method private createPanelView(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    if-eq v0, p2, :cond_23

    .line 9
    sget-object v0, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WO_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v0

    .line 15
    if-ne v0, p2, :cond_11

    .line 17
    goto :goto_23

    .line 18
    :cond_11
    sget-object v0, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result v0

    .line 24
    if-ne v0, p2, :cond_1e

    .line 26
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;->newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1e
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_23
    :goto_23
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelTitleView;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method private synthetic lambda$bindView$0(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mItemClickListener:Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 6
    move-result p1

    .line 7
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;->onItemClick(I)V

    .line 10
    return-void
.end method

.method private static synthetic lambda$bindView$1(Lmiuix/appcompat/widget/Spinner;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    .line 4
    return-void
.end method


# virtual methods
.method public getDatas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 17
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getItemType()Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->onBindViewHolder(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->bindView(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->createPanelView(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setDatas(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setItemClickListener(Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mItemClickListener:Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;

    .line 3
    return-void
.end method
