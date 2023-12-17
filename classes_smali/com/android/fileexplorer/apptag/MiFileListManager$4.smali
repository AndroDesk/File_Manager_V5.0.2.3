.class Lcom/android/fileexplorer/apptag/MiFileListManager$4;
.super Ljava/lang/Object;
.source "MiFileListManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/MiFileListManager;->sortFileListByDir(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$4;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/dao/file/FileItem;)I
    .registers 3

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    if-nez p2, :cond_10

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_10
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/MiFileListManager$4;->compare(Lcom/android/fileexplorer/dao/file/FileItem;Lcom/android/fileexplorer/dao/file/FileItem;)I

    move-result p1

    return p1
.end method
