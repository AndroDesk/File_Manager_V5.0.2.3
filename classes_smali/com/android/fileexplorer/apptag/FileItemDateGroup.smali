.class public Lcom/android/fileexplorer/apptag/FileItemDateGroup;
.super Lcom/android/fileexplorer/apptag/FileItemGroup;
.source "FileItemDateGroup.java"


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

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/apptag/FileItemGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
