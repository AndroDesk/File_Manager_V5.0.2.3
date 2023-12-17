.class public Lcom/android/fileexplorer/model/group/FileExpandableGroup;
.super Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;
.source "FileExpandableGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup<",
        "TT;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
