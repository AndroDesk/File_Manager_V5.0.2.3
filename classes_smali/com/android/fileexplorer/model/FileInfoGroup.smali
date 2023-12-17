.class public Lcom/android/fileexplorer/model/FileInfoGroup;
.super Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;
.source "FileInfoGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public groupEndTime:Ljava/lang/Long;

.field public groupKey:Ljava/lang/String;

.field public groupStartTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 4
    return-void
.end method
