.class public Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;
.super Ljava/lang/Object;
.source "AppScanConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/AppScanConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanFileWhiteList"
.end annotation


# static fields
.field public static final sScanParentPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sScanPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanPaths:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanParentPaths:Ljava/util/List;

    .line 15
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "/Download/email"

    .line 21
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->addScanPath([Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    const/16 v2, 0x1e

    .line 28
    if-ge v1, v2, :cond_2c

    .line 30
    const-string v1, "/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv"

    .line 32
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->addScanPath([Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "/Android/data/com.tencent.mm/MicroMsg/Download"

    .line 37
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->addScanPath([Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;->ZSXQ_PARENT_PATH:Ljava/lang/String;

    .line 42
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->addScanParentPath([Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addScanParentPath([Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    if-eqz p0, :cond_25

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_25

    .line 9
    array-length v0, p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_25

    .line 13
    aget-object v2, p0, v1

    .line 15
    sget-object v3, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanParentPaths:Ljava/util/List;

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_a

    .line 38
    :cond_25
    return-void
.end method

.method private static addScanPath([Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    if-eqz p0, :cond_25

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_25

    .line 9
    array-length v0, p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_25

    .line 13
    aget-object v2, p0, v1

    .line 15
    sget-object v3, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanPaths:Ljava/util/List;

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_a

    .line 38
    :cond_25
    return-void
.end method

.method public static isInScanList(Ljava/lang/String;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanPaths:Ljava/util/List;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    sget-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanParentPaths:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_23

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_10

    .line 35
    return v1

    .line 36
    :cond_23
    const/4 p0, 0x0

    .line 37
    return p0
.end method
