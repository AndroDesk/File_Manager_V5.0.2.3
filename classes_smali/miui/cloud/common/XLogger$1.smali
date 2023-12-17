.class Lmiui/cloud/common/XLogger$1;
.super Ljava/lang/Object;
.source "XLogger.java"

# interfaces
.implements Lmiui/cloud/common/XLogger$LogSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final sLogOnAdb:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/io/File;

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "log_on_adb"

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lmiui/cloud/common/XLogger$1;->sLogOnAdb:Z

    .line 21
    return-void
.end method


# virtual methods
.method public sendLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiui/cloud/common/XLogger$1;->sLogOnAdb:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_7
    return-void
.end method
