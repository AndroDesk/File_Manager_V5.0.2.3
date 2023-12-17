.class public Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;
.super Ljava/lang/Object;
.source "ExpandableGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pageName:Ljava/lang/String;

.field private selected:Z

.field private title:Ljava/lang/String;

.field private titleRes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->titleRes:I

    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->titleRes:I

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getItemCountExcludeAd()I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    const/16 v2, 0xc

    if-le v1, v2, :cond_14

    goto :goto_2d

    :cond_14
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/fileexplorer/model/AdFileInfo;

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/fileexplorer/model/AdFileItem;

    if-eqz v2, :cond_2a

    :cond_28
    add-int/lit8 v0, v0, 0x1

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->titleRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRes()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->titleRes:I

    return v0
.end method

.method public isSelected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->selected:Z

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->pageName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->selected:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "ExpandableGroup{title=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", items="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
