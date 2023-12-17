.class public Lcom/xiaomi/micloudsdk/file/MiCloudFileMasterInjector;
.super Ljava/lang/Object;
.source "MiCloudFileMasterInjector.java"


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

.method public static checkDownloadConditions(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lx3/a;->a:La/b;

    invoke-virtual {v0, p0}, La/b;->L(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static checkUploadConditions(Landroid/content/Context;)Z
    .registers 2

    sget-object v0, Lx3/a;->a:La/b;

    invoke-virtual {v0, p0}, La/b;->L(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method
