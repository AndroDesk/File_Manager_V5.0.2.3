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
.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->titleRes:I

    .line 7
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 8
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->titleRes:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public getItemCountExcludeAd()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    move v0, v1

    .line 8
    :goto_7
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_2d

    .line 16
    const/16 v2, 0xc

    .line 18
    if-le v1, v2, :cond_14

    .line 20
    goto :goto_2d

    .line 21
    :cond_14
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    instance-of v2, v2, Lcom/android/fileexplorer/model/AdFileInfo;

    .line 29
    if-nez v2, :cond_28

    .line 31
    iget-object v2, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    instance-of v2, v2, Lcom/android/fileexplorer/model/AdFileItem;

    .line 39
    if-eqz v2, :cond_2a

    .line 41
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_7

    .line 46
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    move-result v1

    .line 52
    sub-int/2addr v1, v0

    .line 53
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->pageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->titleRes:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_a

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    .line 13
    return-object v0
.end method

.method public getTitleRes()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->titleRes:I

    .line 3
    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->selected:Z

    .line 3
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

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->pageName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSelect(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->selected:Z

    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "ExpandableGroup{title=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->title:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", items="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->items:Ljava/util/List;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const/16 v1, 0x7d

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
