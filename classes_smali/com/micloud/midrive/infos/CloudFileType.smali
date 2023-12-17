.class public Lcom/micloud/midrive/infos/CloudFileType;
.super Ljava/lang/Object;
.source "CloudFileType.java"


# static fields
.field public static final APK:Ljava/lang/String; = "apk"

.field public static final DOCUMENT:Ljava/lang/String; = "doc"

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final MUSIC:Ljava/lang/String; = "audio"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final PICTURE:Ljava/lang/String; = "pic"

.field public static final VIDEO:Ljava/lang/String; = "video"

.field public static final ZIP:Ljava/lang/String; = "zip"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transferToLocalTypeIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "other"

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_28

    .line 9
    invoke-static {p0}, Lcom/micloud/midrive/utils/FileHelper;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_ZIP_EXT:Ljava/util/Collection;

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    const-string p0, "zip"

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    const-string v0, "apk"

    .line 34
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_28

    .line 40
    return-object v0

    .line 41
    :cond_28
    return-object p1
.end method
