.class public Lcom/micloud/midrive/stat/FileOperationResultStat$OperationType;
.super Ljava/lang/Object;
.source "FileOperationResultStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/stat/FileOperationResultStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationType"
.end annotation


# static fields
.field public static final FILE_CONTENT_MODIFY:Ljava/lang/String; = "fileContentModify"

.field public static final FILE_COPY:Ljava/lang/String; = "fileCopy"

.field public static final FILE_DELETE:Ljava/lang/String; = "fileDelete"

.field public static final FILE_DELETE_LOCAL:Ljava/lang/String; = "fileDeleteLocal"

.field public static final FILE_DOWNLOAD:Ljava/lang/String; = "fileDownload"

.field public static final FILE_MOVE:Ljava/lang/String; = "fileMove"

.field public static final FILE_RENAME:Ljava/lang/String; = "fileRename"

.field public static final FILE_UPLOAD:Ljava/lang/String; = "fileUpload"


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
