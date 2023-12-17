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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transferToLocalTypeIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "other"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lcom/micloud/midrive/utils/FileHelper;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/micloud/midrive/utils/FileHelper;->LOCAL_ZIP_EXT:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "zip"

    return-object p0

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "apk"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    return-object v0

    :cond_28
    return-object p1
.end method
