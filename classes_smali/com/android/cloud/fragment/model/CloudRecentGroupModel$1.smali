.class Lcom/android/cloud/fragment/model/CloudRecentGroupModel$1;
.super Ljava/lang/Object;
.source "CloudRecentGroupModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/model/CloudRecentGroupModel;->sortFiles(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 6
    move-result-object p2

    .line 7
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method
