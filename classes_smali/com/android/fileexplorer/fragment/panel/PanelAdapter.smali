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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

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

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mContext:Landroid/content/Context;

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

    iget-object p0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mItemClickListener:Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;

    return-object p0
.end method

.method public static synthetic b(Lmiuix/appcompat/widget/Spinner;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->lambda$bindView$1(Lmiuix/appcompat/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method private bindView(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V
    .registers 7

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_24

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getTitleResId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;->bindView(Ljava/lang/String;Z)V

    goto/16 :goto_a4

    :cond_24
    sget-object v1, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WO_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v1, v0, :cond_43

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getTitleResId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;->bindView(Ljava/lang/String;Z)V

    goto :goto_a4

    :cond_43
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;->bindView(ILcom/android/fileexplorer/fragment/panel/PanelItem;)V

    sget-object v1, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v0, :cond_70

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, p2, Lmiuix/androidbasewidget/widget/CheckedTextView;

    if-eqz v0, :cond_a4

    check-cast p2, Lmiuix/androidbasewidget/widget/CheckedTextView;

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    if-nez p2, :cond_a4

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/fileexplorer/adapter/a;

    invoke-direct {v0, v3, p0, p1}, Lcom/android/fileexplorer/adapter/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a4

    :cond_70
    sget-object v1, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_POP_MENU:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v1, v0, :cond_a4

    instance-of v0, p1, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;

    if-eqz v0, :cond_a4

    move-object v0, p1

    check-cast v0, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->getSpinner()Lmiuix/appcompat/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getSpinnerSelectedPos()I

    move-result p2

    invoke-virtual {v0, p2, v2}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/cloud/fragment/e;

    invoke-direct {v1, v0, v3}, Lcom/android/cloud/fragment/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$1;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;)V

    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method private createPanelView(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WITH_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, p2, :cond_23

    sget-object v0, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_TITLE_WO_DIVIDER:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p2, :cond_11

    goto :goto_23

    :cond_11
    sget-object v0, Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;->ITEM_CHOICE:Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p2, :cond_1e

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;->newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelChoiceItemView;

    move-result-object p1

    return-object p1

    :cond_1e
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;->newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelSpinnerItemView;

    move-result-object p1

    return-object p1

    :cond_23
    :goto_23
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/panel/PanelTitleView;->newInstance(Landroid/view/ViewGroup;)Lcom/android/fileexplorer/fragment/panel/PanelTitleView;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$bindView$0(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;Landroid/view/View;)V
    .registers 3

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mItemClickListener:Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;->onItemClick(I)V

    return-void
.end method

.method private static synthetic lambda$bindView$1(Lmiuix/appcompat/widget/Spinner;Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->getItemType()Lcom/android/fileexplorer/fragment/panel/PanelConstants$PanelItemType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->onBindViewHolder(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->bindView(Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
    .registers 3

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

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method public setItemClickListener(Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->mItemClickListener:Lcom/android/fileexplorer/fragment/panel/PanelAdapter$OnItemClickListener;

    return-void
.end method
