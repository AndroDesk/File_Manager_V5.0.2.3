.class public Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;
.super Ljava/lang/Object;
.source "PanelRadioGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

.field private mIndexs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mIndexs:Ljava/util/List;

    return-void
.end method

.method private findRadioGroup(I)Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mIndexs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    move-result v2

    if-lt p1, v2, :cond_6

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    move-result v2

    invoke-static {v1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$100(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    move-result v3

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    return-object v1

    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addGroupIndex(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mIndexs:Ljava/util/List;

    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRadioChange(I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->findRadioGroup(I)Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    move-result v1

    :goto_b
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    move-result v2

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$100(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    move-result v3

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_2d

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    invoke-virtual {v2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->getDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    if-ne v1, p1, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
