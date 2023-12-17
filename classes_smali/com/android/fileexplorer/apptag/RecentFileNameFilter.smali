.class public Lcom/android/fileexplorer/apptag/RecentFileNameFilter;
.super Ljava/lang/Object;
.source "RecentFileNameFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentFileNameFilter"


# instance fields
.field private mBlackDirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;->mExts:Ljava/util/HashSet;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;->mBlackDirList:Ljava/util/List;

    .line 18
    if-eqz p2, :cond_1b

    .line 20
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;->mBlackDirList:Ljava/util/List;

    .line 25
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_1b
    if-eqz p1, :cond_26

    .line 30
    iget-object p2, p0, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;->mExts:Ljava/util/HashSet;

    .line 32
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_26
    return-void
.end method

.method private isScanList(Ljava/io/File;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2c

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_2c

    .line 11
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->isInScanList(Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2c

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v1, "in scanList path = "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const-string v0, "RecentFileNameFilter"

    .line 40
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_2c
    :goto_2c
    return v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 13
    invoke-static {v1, v2, p2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    return v2

    .line 28
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;->mBlackDirList:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v1

    .line 38
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_5c

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_25

    .line 56
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;->isScanList(Ljava/io/File;)Z

    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_25

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v1, "not accept: inBlackPath dir = "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string p1, ", filename = "

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    const-string p2, "RecentFileNameFilter"

    .line 89
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return v2

    .line 93
    :cond_5c
    const/16 p1, 0x2e

    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 98
    move-result p1

    .line 99
    const/4 v0, -0x1

    .line 100
    if-eq p1, v0, :cond_7a

    .line 102
    add-int/lit8 p1, p1, 0x1

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 107
    move-result v0

    .line 108
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;->contains(Ljava/lang/String;)Z

    .line 121
    move-result p1

    .line 122
    return p1

    .line 123
    :cond_7a
    return v2
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/RecentFileNameFilter;->mExts:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
