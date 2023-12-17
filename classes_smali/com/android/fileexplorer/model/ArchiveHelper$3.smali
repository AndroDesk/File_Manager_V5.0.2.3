.class synthetic Lcom/android/fileexplorer/model/ArchiveHelper$3;
.super Ljava/lang/Object;
.source "ArchiveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/ArchiveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$net$lingala$zip4j$progress$ProgressMonitor$Result:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->values()[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/fileexplorer/model/ArchiveHelper$3;->$SwitchMap$net$lingala$zip4j$progress$ProgressMonitor$Result:[I

    :try_start_9
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/fileexplorer/model/ArchiveHelper$3;->$SwitchMap$net$lingala$zip4j$progress$ProgressMonitor$Result:[I

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
