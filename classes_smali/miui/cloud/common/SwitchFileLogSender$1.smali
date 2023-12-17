.class Lmiui/cloud/common/SwitchFileLogSender$1;
.super Ljava/lang/Object;
.source "SwitchFileLogSender.java"

# interfaces
.implements Lmiui/cloud/common/SwitchFileLogSender$PathProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/SwitchFileLogSender;-><init>(Landroid/content/Context;Ljava/lang/String;IILmiui/cloud/common/XLogger$LogSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$1;->val$packageName:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getPath(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    .line 1
    new-instance p1, Ljava/io/File;

    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lmiui/cloud/common/SwitchFileLogSender$1;->val$packageName:Ljava/lang/String;

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "MIUI/debug_log/%s"

    .line 17
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    return-object p1
.end method
