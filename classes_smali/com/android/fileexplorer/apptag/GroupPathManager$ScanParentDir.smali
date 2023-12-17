.class public Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;
.super Ljava/lang/Object;
.source "GroupPathManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/GroupPathManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanParentDir"
.end annotation


# static fields
.field public static final ZSXQ_PARENT_PATH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/apptag/ExternalStorageAppFilesUtil;->getZSXQDocDirTopParent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/fileexplorer/apptag/GroupPathManager$ScanParentDir;->ZSXQ_PARENT_PATH:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
