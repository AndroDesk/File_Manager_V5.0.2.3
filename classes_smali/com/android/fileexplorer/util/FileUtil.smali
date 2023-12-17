.class public Lcom/android/fileexplorer/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    if-eqz p0, :cond_1e

    .line 3
    if-nez p1, :cond_5

    .line 5
    goto :goto_1e

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_d

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_d
    const-string v0, "/"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_19

    .line 22
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    :cond_19
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static transferSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object p0

    .line 8
    :cond_7
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 10
    const-string v1, "\\\\"

    .line 12
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
