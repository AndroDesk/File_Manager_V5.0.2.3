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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/panel/PanelAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mIndexs:Ljava/util/List;

    .line 13
    return-void
.end method

.method private findRadioGroup(I)Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mIndexs:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_24

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;

    .line 19
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    .line 22
    move-result v2

    .line 23
    if-lt p1, v2, :cond_6

    .line 25
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    .line 28
    move-result v2

    .line 29
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$100(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    .line 32
    move-result v3

    .line 33
    add-int/2addr v3, v2

    .line 34
    if-ge p1, v3, :cond_6

    .line 36
    return-object v1

    .line 37
    :cond_24
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method


# virtual methods
.method public addGroupIndex(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mIndexs:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;

    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;-><init>(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;II)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public onRadioChange(I)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->findRadioGroup(I)Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    .line 11
    move-result v1

    .line 12
    :goto_b
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$000(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    .line 15
    move-result v2

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;->access$100(Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager$RadioGroupInfo;)I

    .line 19
    move-result v3

    .line 20
    add-int/2addr v3, v2

    .line 21
    if-ge v1, v3, :cond_2d

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 25
    invoke-virtual {v2}, Lcom/android/fileexplorer/fragment/panel/PanelAdapter;->getDatas()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/fileexplorer/fragment/panel/PanelItem;

    .line 35
    if-ne v1, p1, :cond_26

    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 v3, 0x0

    .line 40
    :goto_27
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/fragment/panel/PanelItem;->setChecked(Z)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_b

    .line 46
    :cond_2d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/panel/PanelRadioGroupManager;->mAdapter:Lcom/android/fileexplorer/fragment/panel/PanelAdapter;

    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method
