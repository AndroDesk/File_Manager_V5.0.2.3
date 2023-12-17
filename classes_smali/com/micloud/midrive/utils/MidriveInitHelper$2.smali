.class Lcom/micloud/midrive/utils/MidriveInitHelper$2;
.super Ljava/lang/Object;
.source "MidriveInitHelper.java"

# interfaces
.implements Lmiui/cloud/common/SwitchFileLogSender$PathProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/utils/MidriveInitHelper;->createSwitchFileLogSender(Landroid/content/Context;Lmiui/cloud/common/XLogger$LogSender;)Lmiui/cloud/common/SwitchFileLogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/utils/MidriveInitHelper$2;->val$appContext:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getPath(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_12

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Ljava/io/File;

    .line 13
    const-string v1, "dump/log"

    .line 15
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    goto :goto_2d

    .line 19
    :cond_12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ljava/io/File;

    .line 25
    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lcom/micloud/midrive/utils/MidriveInitHelper$2;->val$appContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    aput-object v3, v1, v2

    .line 37
    const-string v2, "MIUI/debug_log/common/%s"

    .line 39
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    :goto_2d
    return-object v0
.end method
