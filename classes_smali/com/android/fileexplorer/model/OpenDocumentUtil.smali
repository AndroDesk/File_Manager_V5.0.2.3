.class public Lcom/android/fileexplorer/model/OpenDocumentUtil;
.super Ljava/lang/Object;
.source "OpenDocumentUtil.java"


# static fields
.field public static final ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final ROOT_ID_PRIMARY_EMULATED:Ljava/lang/String; = "primary"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildOpenDocumentResultUri(Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_c
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/OpenDocumentUtil;->getDocIdForFile(Ljava/io/File;Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Landroid/net/Uri$Builder;

    .line 19
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 22
    const-string v1, "content"

    .line 24
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "com.android.externalstorage.documents"

    .line 30
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "document"

    .line 36
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method private static getDocIdForFile(Ljava/io/File;Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    const-string v0, "primary"

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getUuid()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1e

    .line 28
    const-string p0, ""

    .line 30
    goto :goto_39

    .line 31
    :cond_1e
    const-string v1, "/"

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2f

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    goto :goto_39

    .line 48
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    move-result p1

    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    :goto_39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v0, 0x3a

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
