.class public abstract Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;
.super Ljava/lang/Object;
.source "ChildItemViewDelegate.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "G:",
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup<",
        "TC;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/recyclerview/base/ItemViewDelegate<",
        "TG;>;"
    }
.end annotation


# static fields
.field public static final VIEW_UPDATE_TYPE_CHECKBOX:Ljava/lang/String; = "view_update_type_checkbox"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isForViewType(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TG;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;->isForViewType(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public abstract onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "TG;II)V"
        }
    .end annotation
.end method

.method public onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "TG;II",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;->onBindChildViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;II)V

    .line 4
    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "TG;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Ljava/lang/Object;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/ChildItemViewDelegate;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;I)V

    .line 6
    return-void
.end method
