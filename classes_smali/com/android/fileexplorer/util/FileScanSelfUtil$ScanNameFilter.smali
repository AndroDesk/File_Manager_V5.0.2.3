.class Lcom/android/fileexplorer/util/FileScanSelfUtil$ScanNameFilter;
.super Ljava/lang/Object;
.source "FileScanSelfUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/FileScanSelfUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanNameFilter"
.end annotation


# instance fields
.field private mExts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/util/FileScanSelfUtil$ScanNameFilter;->mExts:Ljava/util/List;

    .line 11
    if-eqz p1, :cond_13

    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_13
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    iget-object p2, p0, Lcom/android/fileexplorer/util/FileScanSelfUtil$ScanNameFilter;->mExts:Ljava/util/List;

    .line 15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_20

    .line 21
    iget-object p2, p0, Lcom/android/fileexplorer/util/FileScanSelfUtil$ScanNameFilter;->mExts:Ljava/util/List;

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_21

    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    :cond_21
    return v0
.end method
