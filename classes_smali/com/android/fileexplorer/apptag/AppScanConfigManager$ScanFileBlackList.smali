.class public Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileBlackList;
.super Ljava/lang/Object;
.source "AppScanConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/AppScanConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanFileBlackList"
.end annotation


# static fields
.field public static final sBlackPath:Ljava/util/List;
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
    sput-object v0, Lcom/android/fileexplorer/apptag/AppScanConfigManager$ScanFileBlackList;->sBlackPath:Ljava/util/List;

    .line 8
    const-string v1, "/MIUI/sound_recorder"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    const/16 v2, 0x1e

    .line 17
    if-lt v1, v2, :cond_1c

    .line 19
    const-string v1, "/Android/data"

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v1, "/Android/obb"

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
