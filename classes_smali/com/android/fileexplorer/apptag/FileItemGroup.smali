.class public abstract Lcom/android/fileexplorer/apptag/FileItemGroup;
.super Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;
.source "FileItemGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;"
    }
.end annotation


# instance fields
.field public groupCreateTime:Ljava/lang/Long;

.field public groupEndTime:Ljava/lang/Long;

.field public groupId:J

.field public groupStartTime:Ljava/lang/Long;


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
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/models/CheckedExpandableGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
