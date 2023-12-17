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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanPaths:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanParentPaths:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalStorageDirectory()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Download/email"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->addScanPath([Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2c

    const-string v1, "/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->addScanPath([Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Android/data/com.tencent.mm/MicroMsg/Download"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->addScanPath([Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;->ZSXQ_PARENT_PATH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->addScanParentPath([Ljava/lang/String;Ljava/lang/String;)V

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

    if-eqz p0, :cond_25

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_25

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanParentPaths:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_25
    return-void
.end method

.method private static addScanPath([Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_25

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_25

    aget-object v2, p0, v1

    sget-object v3, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanPaths:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_25
    return-void
.end method

.method public static isInScanList(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanPaths:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileWhiteList;->sScanParentPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    return v1

    :cond_23
    const/4 p0, 0x0

    return p0
.end method
