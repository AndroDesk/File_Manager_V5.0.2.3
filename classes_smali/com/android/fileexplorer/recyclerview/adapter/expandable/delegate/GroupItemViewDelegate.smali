.class public abstract Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;
.super Ljava/lang/Object;
.source "GroupItemViewDelegate.java"

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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;->isForViewType(Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;I)Z

    move-result p1

    return p1
.end method

.method public abstract onBindGroupViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/recyclerview/base/ViewHolder;",
            "TG;IZ)V"
        }
    .end annotation
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

    check-cast p2, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/delegate/GroupItemViewDelegate;->onBindViewHolder(Lcom/android/fileexplorer/recyclerview/base/ViewHolder;Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;I)V

    return-void
.end method
