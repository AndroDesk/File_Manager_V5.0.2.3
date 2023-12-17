.class public abstract Lcom/android/fileexplorer/model/BaseFileNameFilter;
.super Ljava/lang/Object;
.source "BaseFileNameFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

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
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->shouldShowSystemFile(Ljava/io/File;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_21

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/BaseFileNameFilter;->isAccept(Ljava/io/File;Ljava/lang/String;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_21

    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    :goto_22
    return p1
.end method

.method public abstract isAccept(Ljava/io/File;Ljava/lang/String;)Z
.end method
