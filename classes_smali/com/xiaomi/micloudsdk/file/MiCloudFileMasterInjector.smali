.class public Lcom/xiaomi/micloudsdk/file/MiCloudFileMasterInjector;
.super Ljava/lang/Object;
.source "MiCloudFileMasterInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDownloadConditions(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lx3/a;->a:La/b;

    .line 3
    invoke-virtual {v0, p0}, La/b;->L(Landroid/content/Context;)Z

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_a

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public static checkUploadConditions(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lx3/a;->a:La/b;

    .line 3
    invoke-virtual {v0, p0}, La/b;->L(Landroid/content/Context;)Z

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_a

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x1

    .line 12
    return p0
.end method
